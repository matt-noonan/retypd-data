import sys

global_base = 0x400000
  
filename = sys.argv[1]
if ".dll." in filename:
    global_base = 0x10000000
if "python21.dll" in filename:
    global_base = 0x1e100000
print "Parsing dia2dump output " + filename + " with base " + hex(global_base)

functions = []
global_data = []

in_user_module = False
function = None

types = {}

typedefs = {}

type_ids = {}
next_type_id = 0

named_types = {}

def kv(s):
    parts = s.strip().split(":")
    return (parts[0].strip(), ":".join(parts[1:]).strip())

## Read types
begin_scan = False
udt = None
udts = []
with open(filename) as f:
    for line in f:
        if line.startswith("*** "):
            if line.strip() == "*** TYPES":
                begin_scan = True
            else:
                if udt != None:
                    udts.append(udt)
                    udt = None
                begin_scan = False
            continue
        if line.startswith("Typedef "):
            info = ": ".join(line.split(": ")[1:]).strip().split(", Type: ")
            named_types[info[0]] = info[1]
            continue
        if not begin_scan:
            continue
        if line.strip() == "":
            if udt != None and len(udt) == 1:
                # drop the current type, revive the last one
                udt = udts[-1]
                udts = udts[:-1]
            continue
        (tag, info) = kv(line)
        if tag == "UserDefinedType":
            if udt != None:
                udts.append(udt)
            udt = [info]
        if tag == "Data":
            infos = info.split(", ")
            if not infos[0].startswith("this+0x"):
                continue
            offset = int(infos[0][len("this+0x"):],16)
            udt.append((offset, infos[2][len("Type: "):]))
        
for udt in udts:
    if len(udt) == 1:
        named_types[udt[0]] = "void"
        continue
    fields = {}
    for (offset, ty) in udt[1:]:
        fields[offset] = ty
    named_types[udt[0]] = fields

def read_addr(addr):
    return int(addr[1:].split("]")[0],16)

def make_loc(how, where, _shift = None):
    if _shift == None:
        shift = 0
    else:
        shift = _shift
    addr = read_addr(where)
    if how == "static":
        return "@" + hex(addr + global_base)[2:]
    if how in ["VFrame Relative", "ebp Relative"]:
        return "@" + hex(addr + shift)[2:]
    return None

def is_top_or_bot(t):
    return t == "TOP" or t.startswith("BOT:")

def typeid(x):
    global next_type_id
    global type_ids
    try:
        return type_ids[x]
    except KeyError:
        type_ids[x] = next_type_id
        next_type_id += 1
        return next_type_id - 1
    
def make_func(fun):
    d = {}
    d["Function"] = fun
    parts = fun.split(", ")
    proto = parts[-1]
    d["Prototype"] = proto
    rd = {}
    rt = None
    if " __cdecl " in proto:
        rt = type_to_tie(proto.split(" __cdecl ")[0], [])
    elif " __fastcall " in proto:
        rt = type_to_tie(proto.split(" __fastcall ")[0], [])
    elif " __stdcall " in proto:
        rt = type_to_tie(proto.split(" __stdcall ")[0], [])
    elif " __thiscall " in proto:
        rt = type_to_tie(proto.split(" __thiscall ")[0], [])
    else:
        rt = None
    d["Loc"] = make_loc(parts[0], parts[1])
    ret = { "Kind": "Local", "Loc": "@0 <any>", "Type": typeid("code_t") }
    d["FirstFormal"] = "@4"
    d["Data"] = [ret]
    if rt in ["TOP", "BOT"]:
        rt = None
    if rt != None:
        rv = {}
        rv["Kind"] = "Return"
        if rt in ["float32_t", "float64_t"]:
            rv["Loc"] = "ST(0) <final>"
        else:
            rv["Loc"] = "EAX <final>"
        rv["Type"] = typeid(rt)
        if not is_top_or_bot(rt):
            d["Data"].append(rv)
    return d

def make_datum(values, shift = None):
    datum = {}
    if len(values) == 4 and values[0].startswith("enregistered "):
        datum["Kind"] = values[1]
        datum["Type"] = typeid(type_to_tie(values[2].split("Type: ")[1], []))
        loc = values[0].split(" ")[1].upper()
        if datum["Kind"] == "Param":
            datum["Loc"] = loc + " <initial>"
        if datum["Kind"] == "Local":
            datum["Loc"] = loc + " <any>"
    if len(values) != 5:
        return None
    datum["Kind"] = values[2]
    datum["Type"] = typeid(type_to_tie(values[3].split("Type: ")[1], []))
    loc = make_loc(values[0], values[1], shift)
    if datum["Kind"] == "Param":
        datum["Loc"] = loc + " <initial>"
    if datum["Kind"] == "Local":
        datum["Loc"] = loc + " <any>"
    if datum["Kind"] == "File Static":
        datum["Loc"] = loc + " <global>"
    return datum

def type_to_tie(_t, spine):
    t = _t.strip()
    if t.startswith("public: "):
        t = t[len("public: "):]
    if t.startswith("private: "):
        t = t[len("private: "):]
    if t.startswith("const "):
        t = t[len("const "):]
    if t.startswith("struct "):
        t = t[len("struct "):]
    if t.endswith(" const"):
        t = t[:-len(" const")]
    if t in spine:
        return "TOP"
    newspine = list(spine)
    newspine.append(t)
    tiety = _type_to_tie(t, newspine)
    return tiety

def _type_to_tie(t, spine):
    global typedefs
    try:
        td = typedefs[t]
        return td
    except KeyError:
        pass
    if len(spine) > 10:
        return "TOP"
    if t.endswith(" *") or t.endswith(" &"):
        ptt = type_to_tie(t[:-2], spine)
        if ptt == "code":
            return "code_t"
        return "ptr(" + ptt + ")"
    if t.endswith("]"):
        parts = t[:-1].split("[")
        base = "[".join(parts[:-1])
        return type_to_tie(base, spine)
    if t.startswith("enum ") and len(t.split(" ")) == 2:
        return "reg32_t"
    if t == "void":
        return "TOP"
    if t == "function":
        return "code";
    if t == "char":
        return "num8_t"
    if t == "unsigned char":
        return "uint8_t"
    if t == "signed char":
        return "int8_t"
    if t == "short":
        return "num16_t"
    if t == "unsigned short":
        return "uint16_t"
    if t == "signed short":
        return "int16_t"
    if t == "int" or t == "long":
        return "num32_t"
    if t == "unsigned int" or t == "unsigned long":
        return "uint32_t"
    if t == "signed int" or t == "signed long":
        return "int32_t"
    if t == "long long" or t == "__int64":
        return "num64_t"
    if t == "unsigned long long" or t == "unsigned __int64":
        return "uint64_t"
    if t == "signed long long" or t == "signed __int64":
        return "int64_t"
    if t == "float":
        return "float32_t"
    if t == "double":
        return "float64_t"
    try:
        defn = named_types[t]
        return make_named_type(t, defn, spine)
    except KeyError:
        return "BOT"

def make_named_type(name, ty, spine):
    if ty == "void *" and (name[0] == "H" or "HANDLE" in name):
        tiety = "reg32_t"
    elif isinstance(ty, dict):
        tiety = "struct"
        div = "("
        has_zero = False
        has_other = False
        ft = None
        for offset in ty:
            if offset == 0:
                has_zero = True
            if offset != 0:
                has_other = True
            ft = type_to_tie(ty[offset], spine)
            tiety += div + str(offset) + ":" + ft
            div = ","
        tiety += ")"
        if has_zero and not has_other:
            tiety = ft
    else:
        tiety = type_to_tie(ty, spine)
    typedefs[name] = tiety
    return tiety

for name in named_types:
    make_named_type(name, named_types[name], [])
    
with open(filename) as f:
    for line in f:
        if line.startswith("** Module:"):
            in_user_module = ("magagnosc" in line) or ("\\Release\\" in line) or ("\\release\\" in line)
            if function != None:
                functions.append(function)
                function = None
            continue
        if not in_user_module:
            continue
        if line.strip() == "":
            if function != None:
                functions.append(function)
                function = None
            continue
        if function == None and line.startswith("Data "):
            (trait, value) = kv(line)
            values = value.split(", ")
            if values[0].strip() != "":
                datum = make_datum(values)
                global_data.append(datum)
            continue
        if line.startswith("Function "):
            if function != None:
                functions.append(function)
            function = make_func(kv(line)[1])
            ebp_shift = None
        if function != None:
            (trait, value) = kv(line)
            if trait == "Data":
                datum = make_datum(value.split(", "), ebp_shift)
                if datum != None:
                    if ebp_shift == None:
                        if datum["Kind"] == "Param" and datum["Loc"][0] == "@":
                            ebp_shift = 4 - int(datum["Loc"][1:].split(" ")[0], 16)
                            datum["Loc"] = "@4 <initial>"
                    function["Data"].append(datum)
            else:
                function[trait] = value
if function != None:
    functions.append(function)

nReturns = 0
nLocals = 0
nParams = 0

print "###############################################################"
print "#    TYPES"
print "###############################################################"
for name in type_ids:
    print "type " + str(type_ids[name]) + " " + name
    
print "###############################################################"
print "#    FUNCTIONS"
print "###############################################################"
for fun in functions:
    print fun["Loc"]
    for datum in fun["Data"]:
        try:
            print "\t" + datum["Loc"] + " " + str(datum["Type"])
        except KeyError:
            continue
        if " <initial>" in datum["Loc"]:
            nParams += 1
        if " <final>" in datum["Loc"]:
            nReturns += 1
        if " <any>" in datum["Loc"]:
            nLocals += 1

print "###############################################################"
print "#    GLOBALS"
print "###############################################################"
for datum in global_data:
    if datum != None:
        print datum["Loc"] + " " + str(datum["Type"])

print "###############################################################"
print "#    STATS"
print "###############################################################"
print "#"
print "#  functions: ", len(functions)
print "#  parameters:", nParams
print "#  returns:   ", nReturns
print "#  locals:    ", nLocals
print "#  globals:   ", len(global_data)
print "#  types:     ", len(type_ids)

    
