import os

with open("manifest") as f:
    for line in f:
        if line.strip() == "":
            continue
        parts = line.strip().split(" ")
        s = "python read_dia2dump.py ./dia2dump/" + parts[0] + ".dia2dump "
        s += "> ./debuginfo/" + parts[0] + ".debuginfo"
        os.system(s)
