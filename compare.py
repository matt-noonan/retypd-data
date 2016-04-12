import sys

baseline = sys.argv[1]
benchmark_decls = sys.argv[2]
benchmark_map = sys.argv[3]

def level(x):
    if isinstance(x,list):
        return min(map(level,x))
    if isinstance(x,dict):
        return 1.
    if x == "code":
        return 1.
    if x == "TOP":
        return 0.
    if x.startswith("reg"):
        return 1.
    if x.startswith("num") or x.startswith("ptr") or x in ["float32_t", "float64_t"]:
        return 2.
    if x.startswith("uint") or x.startswith("int") or x == "code_t":
        # relative to TIE, code_t is moved to a subtype of ptr(*)
        return 3.
    if x == "BOT":
        return 4.
    print ">>> " + x

def nbits(x):
    if isinstance(x,dict):
        maxs = []
        for offset in x:
            maxs.append(offset * 8 + nbits(x[offset]))
        return max(maxs)
    if isinstance(x,list):
        return max(map(nbits, x))
    if x.startswith("ptr") or x == "code_t" or x == "float32_t":
        return 32
    if x == "float64_t":
        return 64
    if x in ["TOP", "BOT", "code"]:
        return 0
    part = x.split("_t")[0][3:]
    if part[0] == "t":
        part = part[1:]
    try:
        return int(part)
    except ValueError:
        print part, x
        raise ValueError

def dist(x, y):
    if x == y:
        return 0.

    if isinstance(y,list):
        if isinstance(x,list):
            return min([dist(xm,ym) for xm in x for ym in y])
        else:
            return min(map(lambda t: dist(x,t), y))
    if isinstance(x,list):
        return min(map(lambda t: dist(y,t), x))
        
    if isinstance(x,dict) and not isinstance(y,dict):
        top = {}
        top[0] = "TOP"
        return level(y) + dist(top, x)
    if isinstance(y,dict) and not isinstance(x,dict):
        top = {}
        top[0] = "TOP"
        return level(x) + dist(top, y)
    if isinstance(x,dict) and isinstance(y,dict):
        return struct_dist(x,y)

    if x in ["TOP", "BOT"] or y in ["TOP", "BOT"]:
        return abs(level(x) - level(y))

    if nbits(x) != nbits(y):
        # different sizes -> max distance
        return 4.

    if x.startswith("reg") or y.startswith("reg"):
        return abs(level(x) - level(y))

    if x.startswith("ptr") and y.startswith("ptr"):
        return 0.
    
    if x.startswith("ptr") or y.startswith("ptr"):
        if x == "code_t" or y == "code_t":
            return 1.
        return 4.

    if x == "code_t" or y == "code_t":
        return 4.

    if x.startswith("float") or y.startswith("float"):
        return 4.

    # x and y are both numeric types
    if x.startswith("uint") and y.startswith("int"):
        return 4.
    if y.startswith("uint") and x.startswith("int"):
        return 4.

    return abs(level(x) - level(y))

def ptr_depth(t):
    if isinstance(t,dict):
        return 0.
    if isinstance(t,list):
        return max(map(ptr_depth,t))
    if t.startswith("ptr"):
        return 1. + ptr_depth(t[len("ptr("):-1])
    return 0.

def is_ptr(t):
    return isinstance(t, str) and (t.startswith("ptr") or t == "code_t")

def ptrs(x):
    if not isinstance(x, list):
        ts = [x]
    else:
        ts = x
    return filter(is_ptr, ts)

def nonptrs(x):
    if not isinstance(x, list):
        ts = [x]
    else:
        ts = x
    return filter(lambda t: not is_ptr(t), ts)

def get_ptt(t):
    if t == "code_t":
        return "code"
    return t[len("ptr("):-1]

def ptr_acc(true_type, computed_type):
    if true_type == computed_type:
        return 1.
    if isinstance(true_type, dict):
        if nonptrs(computed_type) == []:
            return 0.
        return 1.
    
    total_ptr_levels = 0.
    matched_ptr_levels = 0.
    if isinstance(computed_type, list):
        cts = list(computed_type)
    else:
        cts = [computed_type]
    true = true_type

    while is_ptr(true):
        true = get_ptt(true)
        total_ptr_levels += 1.
        cptrs = ptrs(cts)
        if cptrs != []:
            matched_ptr_levels += 1.
            cts = map(get_ptt, cptrs)
    if nonptrs(cts) != [] and matched_ptr_levels == total_ptr_levels:
        # computed_type matches true_type ptr depth exactly
        matched_ptr_levels += 1.
    total_ptr_levels += 1.
    return matched_ptr_levels / total_ptr_levels

def interval_size(x):
    if isinstance(x, dict):
        if 0 in x.keys() and x[0] == "reg8_t":
            # equivalent of regNN_t for weird sizes of NN
            return 2.0
        return 0.
    if isinstance(x, list):
        return max(map(interval_size, x))
    if x == "TOP":
        return 4.
    if x.startswith("reg"):
        return 3.
    if x.startswith("num"):
        return 2.
    return 0.

def conservativeness(true_type, computed_type):
    if true_type == computed_type:
        return 1.
    if computed_type == "TOP" or true_type == "BOT":
        return 1.
    if true_type == "TOP" or computed_type == "BOT":
        return 0.
    if isinstance(computed_type, list):
        return max(map(lambda t: conservativeness(true_type, t), computed_type))
    if isinstance(computed_type, dict) and isinstance(true_type, dict):
        if 0 in computed_type.keys() and computed_type[0] == "reg8_t":
            # equivalent of regNN_t for weird sizes of NN
            return 1.0
        cons = [1.0]
        for offset in computed_type:
            try:
                cons.append(conservativeness(true_type[offset], computed_type[offset]))
            except KeyError:
                # structural subtype
                continue
        return min(cons)
    if isinstance(computed_type, dict) or isinstance(true_type, dict):
        return 0.
    if dist(true_type, computed_type) < 4:
        # if the two scalar types are comparable...
        if dist(true_type, computed_type) == 0:
            return 1.
        if computed_type.startswith("reg"):
            return 1.
        if computed_type.startswith("num") and (true_type.startswith("int") or true_type.startswith("uint")):
            return 1.
    else:
        # if the two scalar types are not comparable, check size compatibility
        if nbits(true_type) < nbits(computed_type):
            if computed_type.startswith("reg"):
                return 1.
            if computed_type.startswith("num") and (true_type.startswith("num") or true_type.startswith("int") or true_type.startswith("uint")):
                return 1.
            return 0.
    return 0.
                   
def struct_dist(x, y):
    d = abs( (1. - 1. / len(x)) - (1. - 1. / len(y)) )
    fds = []
    for offset in set(x.keys() + y.keys()):
        try:
            xf = x[offset]
        except KeyError:
            xf = None
        try:
            yf = y[offset]
        except KeyError:
            yf = None
        if xf == None or yf == None:
            fds.append(4.)
        else:
            fds.append(dist(xf,yf))
    return d + sum(fds) / (4. * len(fds))


def scan_until_matched_paren(x):
    depth = 1
    offset = 0
    for c in x:
        if c == '(':
            depth += 1
        if c == ')':
            depth -= 1
        if depth == 0:
            return (x[0:offset], x[offset+1:])
        offset += 1
        
    assert False

def scan_number(x):
    num = ""
    rest = x
    while rest != "" and rest[0] in "0123456789":
        num += rest[0]
        rest = rest[1:]
    return (int(num), rest)

def scan_type(x):
    if x.startswith("TOP") or x.startswith("BOT"):
        return (x[0:3], x[3:])
    if x.startswith("code_t"):
        return (x[0:6], x[6:])
    if x.startswith("code"):
        return (x[0:4], x[4:])
    if x.startswith("float"):
        return (x[0:len("floatNN_t")], x[len("floatNN_t"):])
    if x.startswith("ptr("):
        (ptts, rest) = scan_until_matched_paren(x[4:])
        (ptt, _) = scan_type(ptts)
        try:
            if not ptt.startswith("ptr"):
                ptt = "*"
        except AttributeError:
            ptt = "*"
        return ("ptr(" + ptt + ")", rest)
        #return ("ptr", rest)
    if x.startswith("reg") or x.startswith("num") or x.startswith("int") or x.startswith("uint"):
        sz = 3
        if x.startswith("uint"):
            sz = 4
        kind = x[0:sz]
        (bits, rest) = scan_number(x[sz:])
        assert rest.startswith("_t")
        return (kind + str(bits) + "_t", rest[2:])
    if x.startswith("struct("):
        rest = x[len("struct("):]
        (rest, tail) = scan_until_matched_paren(rest)
        fields = {}
        while rest != "":
            (offset, rest) = scan_number(rest)
            assert rest[0] == ':'
            (t, rest) = scan_type(rest[1:])
            assert rest == "" or rest[0] == ','
            fields[offset] = t
            if rest != "":
                rest = rest[1:]
        if (len(fields) == 0):
            return ("TOP", tail)
        return (fields, tail)
    if x.startswith("array("):
        rest = x[len("array("):]
        (rest, tail) = scan_until_matched_paren(rest)
        (t, rest) = scan_type(rest)
        (qty, _) = scan_number(rest[1:])
        arr = {}
        arr[0] = t
        arrsz = max([qty,0x1000])
        if t == "reg8_t":
            arrsz = 1
        step = nbits(t) / 8
        for i in range(0,arrsz):
            arr[i * step] = t
        return (arr, tail)
    if x.startswith("union("):
        rest = x[len("union("):]
        (rest, tail) = scan_until_matched_paren(rest)
        types = []
        while rest != "":
            (t, rest) = scan_type(rest)
            types.append(t)
            if rest != "":
                rest = rest[1:]
        return (types, tail) # :-|

def to_structural(x):
    if x in ["TOP", "BOT"]:
        return x
    if isinstance(x, dict):
        return x
    if isinstance(x, list):
        return map(to_structural, x)
    return {0:x}

baseline_types = {}
with open(baseline) as f:
    for line in f:
        if line.strip() == "":
            continue
        if line.strip()[0] == '#':
            continue
        if line.startswith("type "):
            info = line[len("type "):].strip()
            (typeid, defn) = scan_number(info)
            (t,rest) = scan_type(defn[1:])
            assert rest == ""
            baseline_types[typeid] = t

benchmark_types = {}
with open(benchmark_decls) as f:
    for line in f:
        if line.strip() == "":
            continue
        if line.strip()[0] == '#':
            continue
        (typeid, rest) = scan_number(line)
        (t, rest) = scan_type(rest[1:])
        benchmark_types[typeid] = t
        
## Compare globals
baseline_globals = {}
with open(baseline) as f:
    for line in f:
        if "<global>" in line:
            parts = line.strip().split(" ")
            baseline_globals[parts[0]] = int(parts[2])
benchmark_globals = {}
with open(benchmark_map) as f:
    for line in f:
        if line.startswith("  @"):
            parts = line[2:].strip().split(" ")
            benchmark_globals[parts[0]] = int(parts[1])

def comparable_size(x, y):
    if nbits(x) == nbits(y):
        return True
    if x in ["BOT", "TOP"]:
        return True
    if y in ["BOT", "TOP"]:
        return True
    if isinstance(x, dict) and isinstance(y, dict):
        return True
    if isinstance(x, list):
        return any(map(lambda t: comparable_size(t, y), x))
    if isinstance(y, list):
        return any(map(lambda t: comparable_size(t, x), y))
    return False

gdists = []
gsizes = []
gconsv = []
gptacc = []
for addr in baseline_globals:
    base_ty = baseline_types[baseline_globals[addr]]
    if base_ty == "BOT":
        continue
    try:
        bench_ty = benchmark_types[benchmark_globals[addr]]
    except KeyError:
        continue
    if not comparable_size(base_ty, bench_ty):
        base_ty = to_structural(base_ty)
        bench_ty = to_structural(bench_ty)
    gdists.append(dist(base_ty, bench_ty))
    gsizes.append(interval_size(bench_ty))
    gconsv.append(conservativeness(base_ty, bench_ty))
    gptacc.append(ptr_acc(base_ty, bench_ty))
    
dists = []
sizes = []
consv = []
ptacc = []

if gdists != []:
    print "GLOBALS:"
    print "average dist =", float(sum(gdists)) / len(gdists)
    print "average size =", float(sum(gsizes)) / len(gsizes)
    print "conservative =", 100. * float(sum(gconsv)) / len(gconsv) 
    print "ptr accuracy =", 100. * float(sum(gptacc)) / len(gptacc)
    print
    dists += gdists
    sizes += gsizes
    consv += gconsv
    ptacc += gptacc

baseline_rets = {}
with open(baseline) as f:
    for line in f:
        if line[0] == "@":
            funaddr = line.strip()
            continue
        if "<final>" in line:
            parts = line.strip().split(" ")
            baseline_rets[funaddr] = int(parts[2])

rty = None
benchmark_rets = {}
with open(benchmark_map) as f:
    for line in f:
        if not line.startswith(" "):
            parts = line.strip().split(" ")
            if len(parts) != 2 or parts[1] in "VXS":
                rty = None
                continue
            rty = int(parts[1])
            continue
        if line.startswith(" ") and line.strip().endswith(":"):
            addr = "@" + hex(int(line.strip()[:-1],16))[2:]
            if rty != None:
                benchmark_rets[addr] = rty
                rty = None

rdists = []
rsizes = []
rconsv = []
rptacc = []
for addr in baseline_rets:
    base_ty = baseline_types[baseline_rets[addr]]
    if base_ty == "BOT":
        continue
    try:
        bench_ty = benchmark_types[benchmark_rets[addr]]
    except KeyError:
        continue
    if not comparable_size(base_ty, bench_ty):
        continue
    rdists.append(dist(base_ty, bench_ty))
    rsizes.append(interval_size(bench_ty))
    rconsv.append(conservativeness(base_ty, bench_ty))
    rptacc.append(ptr_acc(base_ty, bench_ty))

if rdists != []:
    print "RETURNS:"
    print "average dist =", float(sum(rdists)) / len(rdists)
    print "average size =", float(sum(rsizes)) / len(rsizes)
    print "conservative =", 100. * float(sum(rconsv)) / len(rconsv) 
    print "ptr accuracy =", 100. * float(sum(rptacc)) / len(rptacc)
    print
    dists += rdists
    sizes += rsizes
    consv += rconsv
    ptacc += rptacc

baseline_params = {}
with open(baseline) as f:
    for line in f:
        if line[0] == "@":
            funaddr = line.strip()
            baseline_params[funaddr] = {}
            continue
        if "<initial>" in line:
            parts = line.strip().split(" ")
            baseline_params[funaddr][parts[0]] = int(parts[2])

benchmark_params = {}
get_next = False
with open(benchmark_map) as f:
    for line in f:
        if not line.startswith(" "):
            addr = None
            parts = line.strip().split(" ")
            if len(parts) == 2:
                get_next = True
                continue
            continue
        if line.startswith(" ") and line.strip().endswith(":"):
            addr = None
            if get_next:
                addr = "@" + hex(int(line.strip()[:-1],16))[2:]
                benchmark_params[addr] = {}
                get_next = False
                continue
        if line.startswith("  ") and addr != None:
            parts = line.strip().split(" ")
            benchmark_params[addr][parts[0]] = int(parts[1])

pdists = []
psizes = []
pconsv = []
pptacc = []
bps = sorted(baseline_params.keys())
for addr in bps:
    for loc in baseline_params[addr]:
        base_ty = baseline_types[baseline_params[addr][loc]]
        if base_ty == "BOT":
            continue
        try:
            bench_ty = benchmark_types[benchmark_params[addr][loc]]
        except KeyError:
            continue
        if not comparable_size(base_ty, bench_ty):
            continue
        pdists.append(dist(base_ty, bench_ty))
        psizes.append(interval_size(bench_ty))
        pconsv.append(conservativeness(base_ty, bench_ty))
        pptacc.append(ptr_acc(base_ty, bench_ty))
        
if pdists != []:
    print "PARAMETERS:"
    print "average dist =", float(sum(pdists)) / len(pdists)
    print "average size =", float(sum(psizes)) / len(psizes)
    print "conservative =", 100. * float(sum(pconsv)) / len(pconsv) 
    print "ptr accuracy =", 100. * float(sum(pptacc)) / len(pptacc)
    print
    dists += pdists
    sizes += psizes
    consv += pconsv
    ptacc += pptacc

baseline_locals = {}
with open(baseline) as f:
    for line in f:
        if line[0] == "@":
            funaddr = line.strip()
            baseline_locals[funaddr] = {}
            continue
        if "<any>" in line:
            parts = line.strip().split(" ")
            baseline_locals[funaddr][parts[0]] = int(parts[2])

benchmark_locals = {}
get_next = False
with open(benchmark_map) as f:
    for line in f:
        if not line.startswith(" "):
            addr = None
            parts = line.strip().split(" ")
            if len(parts) == 2:
                get_next = True
                continue
            continue
        if line.startswith(" ") and line.strip().endswith(":"):
            if get_next:
                addr = "@" + hex(int(line.strip()[:-1],16))[2:]
                benchmark_locals[addr] = {}
                get_next = False
                continue
        if line.startswith("  ") and addr != None:
            parts = line.strip().split(" ")
            types = map(lambda x: int(x), parts[1:])
            try:
                benchmark_locals[addr][parts[0]] += types
            except KeyError:
                benchmark_locals[addr][parts[0]] = types

def benchmark_types_to_union(types):
    global benchmark_types
    if len(types) == 0:
        return "BOT"
    if len(types) == 1:
        return benchmark_types[types[0]]
    tys = []
    for t in types:
        ty = benchmark_types[t]
        if isinstance(ty, list):
            tys += ty
        else:
            tys.append(ty)
    return tys

ldists = []
lsizes = []
lconsv = []
lptacc = []
for addr in baseline_locals:
    for loc in baseline_locals[addr]:
        base_ty = baseline_types[baseline_locals[addr][loc]]
        if base_ty == "BOT":
            continue
        try:
            bench_ty = benchmark_types_to_union(benchmark_locals[addr][loc])
        except KeyError:
            continue
        if not comparable_size(base_ty, bench_ty):
            continue
        ldists.append(dist(base_ty, bench_ty))
        lsizes.append(interval_size(bench_ty))
        lconsv.append(conservativeness(base_ty, bench_ty))
        lptacc.append(ptr_acc(base_ty, bench_ty))
        
if ldists != []:
    print "LOCALS:"
    print "average dist =", float(sum(ldists)) / len(ldists)
    print "average size =", float(sum(lsizes)) / len(lsizes)
    print "conservative =", 100. * float(sum(lconsv)) / len(lconsv) 
    print "ptr accuracy =", 100. * float(sum(lptacc)) / len(lptacc)
    print
    dists += ldists
    sizes += lsizes
    consv += lconsv
    ptacc += lptacc

if dists != []:
    print "TOTAL:"
    print "  matched entities:", len(dists)
    print "  average TIE distance:", float(sum(dists)) / len(dists)
    print "  average TIE interval:", float(sum(sizes)) / len(sizes)
    print "  average conservative:", float(sum(consv)) / len(consv)
    print "  average ptr accuracy:", float(sum(ptacc)) / len(ptacc)

def csv(x, ys):
    s = x
    tot = 0
    tot_ds = 0
    tot_ss = 0
    tot_cs = 0
    tot_ps = 0
    for (ds, ss, cs, ps) in ys:
        tot += len(ds)
        tot_ds += sum(ds)
        tot_ss += sum(ss)
        tot_cs += sum(cs)
        tot_ps += sum(ps)
        s += "," + str(len(ds))
        s += "," + str(sum(ds))
        s += "," + str(sum(ss))
        s += "," + str(sum(cs))
        s += "," + str(sum(ps))
    if tot == 0:
        tot = 1
    s += "," + str(tot)
    s += "," + str(tot_ds)
    s += "," + str(tot_ss)
    s += "," + str(tot_cs)
    s += "," + str(tot_ps)
    s += "," + str(float(tot_ds) / tot)
    s += "," + str(float(tot_ss) / tot)
    s += "," + str(float(tot_cs) / tot)
    s += "," + str(float(tot_ps) / tot)
    return s
print csv(benchmark_map.split(".map")[0].split("/")[-1], [(gdists, gsizes, gconsv, gptacc), (ldists, lsizes, lconsv, lptacc), (rdists, rsizes, rconsv, rptacc), (pdists, psizes, pconsv, pptacc)]) 
