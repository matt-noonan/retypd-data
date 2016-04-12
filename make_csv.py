import os

os.system("echo Name,Globals,GDist,GSize,GCons,GPtr,Locals,LDist,LSize,LCons,LPtr,Returns,RDist,RSize,RCons,RPtr,Params,PDist,PSize,PCons,PPtr,Total,Dist,Size,Cons,AvgDist,AvgSize,AvgCons,AvgPtr > data.csv")

with open("manifest") as f:
    for line in f:
        if line.strip() == "":
            continue
        binfile = line.strip().split(" ")[0]
        os.system("./check " + binfile + " | tail -n 1 >> data.csv")

first = True
avg = None
lines = 0.
tvs = 0.
with open("data.csv") as f:
    for line in f:
        if first:
            first = False
            continue
        fields = map(lambda x: float(x), line.strip().split(",")[1:])
        if avg == None:
            avg = fields
            count = fields[-9]
            wavg = map(lambda x: x * count, fields)
        else:
            count = fields[-9]
            for i in range(0,len(avg)):
                avg[i] += fields[i]
                wavg[i] += fields[i] * count
        tvs += count
        lines += 1
avgs = "AVERAGE"
for x in avg:
    avgs += "," + str(x / lines)
os.system("echo " + avgs + " >> data.csv")

wavgs = "WEIGHTED"
for x in wavg:
    wavgs += "," + str(x / tvs)
os.system("echo " + wavgs + " >> data.csv")

print "====================================================================="
print
print "Final averages (metrics averaged over each benchmark):"
print "  Distance (TIE)   : ", str(avg[-4] / lines) + " (out of 4.0, best = 0.0)"
print "  Interval size    : ", str(avg[-3] / lines) + " (out of 4.0, best = 0.0)"
print "  Conservativeness : ", str(avg[-2] * 100 / lines) + "%, best = 100%"
print "  Pointer accuracy : ", str(avg[-1] * 100 / lines) + "%, best = 100%"
print
print "Final averages (metrics averaged over each type variable):"
print "  Distance (TIE)   : ", str(wavg[-4] / tvs) + " (out of 4.0, best = 0.0)"
print "  Interval size    : ", str(wavg[-3] / tvs) + " (out of 4.0, best = 0.0)"
print "  Conservativeness : ", str(wavg[-2] * 100 / tvs) + "%, best = 100%"
print "  Pointer accuracy : ", str(wavg[-1] * 100 / tvs) + "%, best = 100%"
print
print "(see data.csv for full information)"
print
