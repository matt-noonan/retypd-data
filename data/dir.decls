0 reg32_t "dword"
1 code_t "proc*"
2 num32_t "int"
3 uint32_t "unsigned int"
4 num8_t "char"
3 uint32_t "size_t"
5 ptr(TOP) "void*"
6 ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(struct(0:num32_t,4:ptr(reg8_t),8:ptr(reg8_t),12:ptr(reg8_t),16:ptr(reg8_t),20:ptr(reg8_t),24:ptr(reg8_t),28:ptr(reg8_t),32:ptr(reg8_t),36:ptr(reg8_t),40:ptr(reg8_t),44:ptr(reg8_t),48:ptr(TOP),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),8:num32_t)),52:ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(TOP),8:num32_t)),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))) "FILE*"
7 ptr(num8_t) "char*"
3 uint32_t "__gid_t"
3 uint32_t "__uid_t"
8 ptr(struct(0:num32_t,4:num32_t)) "timeval*"
9 ptr(num32_t) "int[]"
10 reg64_t "qword"
9 ptr(num32_t) "__time_t*"
11 ptr(struct(0:array(num32_t,6),24:num32_t,28:struct(0:array(uint32_t,32)))) "__jmp_buf_tag*"
12 ptr(struct(0:num32_t,4:num32_t,8:num32_t,12:num32_t,16:num32_t,20:num32_t,24:num32_t,28:num32_t,32:num32_t,36:num32_t,40:ptr(num8_t))) "tm*"
13 ptr(struct(0:union(code_t,code_t),4:struct(0:array(uint32_t,32)),132:num32_t,136:code_t)) "sigaction*"
14 ptr(struct(0:array(uint32_t,32))) "sigset_t*"
1 code_t "(int -?-> void)*"
15 ptr(ptr(num8_t)) "char**"
16 union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))) "Union_1"
17 float64_t "double"
18 float80_t "long double"
19 reg16_t "word"
20 ptr(array(reg8_t,16)) "unknown_128*"
21 ptr(array(reg8_t,56)) "unknown_448*"
22 ptr(array(reg8_t,211)) "unknown_1688*"
23 ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))) "Struct_5*"
24 num64_t "long long"
25 array(reg8_t,10) "unknown_80"
26 ptr(struct(0:reg32_t,4:num8_t)) "StructFrag_5*"
27 int32_t "signed int"
28 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP)))) "Union_14"
29 ptr(struct(0:array(reg8_t,36),36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP)))))) "StructFrag_48*"
9 ptr(num32_t) "int*"
2 num32_t "__ssize_t"
30 ptr(reg64_t) "qword*"
7 ptr(num8_t) "char[]"
31 ptr(array(reg8_t,58)) "unknown_464*"
32 ptr(struct(0:uint64_t,4:num32_t)) "Struct_115*"
33 ptr(struct(0:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),64:reg32_t,68:reg32_t,96:num32_t,112:ptr(num8_t),116:num8_t)) "Struct_19*"
34 ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)) "Struct_11*"
35 float32_t "float"
36 ptr(struct(0:array(reg8_t,20),20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)))) "StructFrag_46*"
37 ptr(struct(0:ptr(TOP),4:ptr(TOP),112:ptr(TOP))) "Struct_13*"
38 ptr(struct(0:reg16_t,2:num8_t)) "StructFrag_2*"
39 ptr(reg32_t) "dword[]"
39 ptr(reg32_t) "dword*"
40 ptr(struct(8:float32_t,16:num8_t)) "Struct_12*"
41 union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t)),ptr(struct(0:reg32_t,4:num8_t))) "Union_7"
42 ptr(ptr(TOP)) "void**"
43 ptr(array(reg8_t,32)) "unknown_256*"
44 ptr(ptr(struct(0:reg32_t,4:num8_t))) "StructFrag_5**"
45 ptr(struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t)) "option*"
15 ptr(ptr(num8_t)) "char[]*"
46 ptr(array(reg8_t,36)) "unknown_288*"
47 ptr(uint64_t) "uintmax_t*"
15 ptr(ptr(num8_t)) "char*[]"
48 ptr(uint32_t) "unsigned int*"
49 ptr(struct(0:struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:union(num32_t,ptr(TOP)),24:num32_t,28:code_t,32:code_t,36:ptr(TOP),40:uint32_t),12:reg32_t)) "Struct_62*"
50 ptr(struct(0:struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:union(num32_t,ptr(TOP)),24:num32_t,28:code_t,32:code_t,36:ptr(TOP),40:uint32_t),16:reg32_t)) "Struct_45*"
51 ptr(struct(4:reg32_t,8:ptr(TOP),12:ptr(TOP),16:ptr(TOP),24:num32_t,40:num8_t)) "Struct_118*"
52 ptr(struct(0:ptr(num8_t),4:ptr(num8_t),104:reg32_t,112:ptr(num8_t))) "Struct_61*"
53 ptr(struct(0:array(reg8_t,104),104:reg32_t)) "StructFrag_36*"
54 union(ptr(reg32_t),ptr(struct(0:ptr(TOP),4:ptr(num8_t),24:reg32_t,28:uint32_t,32:uint32_t,36:uint32_t,40:reg32_t,44:reg32_t,52:num32_t,56:reg32_t,64:num32_t,68:uint32_t,96:uint32_t,100:uint32_t,104:reg32_t,108:reg32_t,112:ptr(num8_t),116:num8_t,117:num8_t,120:reg32_t,124:num8_t))) "Union_8"
55 ptr(int32_t) "signed int[]"
56 ptr(struct(0:array(reg8_t,36),36:num8_t)) "StructFrag_8*"
57 ptr(struct(0:array(reg8_t,36),36:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))))) "StructFrag_49*"
58 ptr(struct(0:ptr(TOP),4:ptr(TOP))) "Struct_29*"
59 ptr(struct(4:ptr(TOP),52:uint32_t)) "Struct_70*"
60 ptr(struct(0:reg32_t,4:reg32_t)) "StructFrag_0*"
61 union(ptr(reg32_t),ptr(int32_t)) "Union_23"
62 ptr(struct(0:array(reg8_t,16),16:num8_t)) "StructFrag_41*"
63 ptr(struct(0:ptr(num8_t),4:ptr(num8_t),8:uint32_t,12:ptr(ptr(num8_t)))) "group*"
64 ptr(struct(0:ptr(num8_t),4:ptr(num8_t),8:uint32_t,12:uint32_t,16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t))) "passwd*"
65 union(uint32_t,uint32_t) "Union_5"
66 ptr(struct(0:ptr(TOP),4:ptr(num8_t),24:reg32_t,28:uint32_t,32:uint32_t,36:uint32_t,40:reg32_t,44:reg32_t,52:num32_t,56:reg32_t,64:num32_t,68:uint32_t,96:uint32_t,100:uint32_t,104:reg32_t,108:reg32_t,112:ptr(num8_t),116:num8_t,117:num8_t,120:reg32_t,124:num8_t)) "Struct_49*"
67 ptr(struct(0:reg32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))))) "Struct_94*"
68 ptr(struct(0:ptr(TOP),12:reg32_t,32:code_t)) "Struct_35*"
69 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:reg32_t,12:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),16:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),20:ptr(num8_t),36:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))))) "Struct_81*"
70 ptr(struct(0:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),4:reg32_t)) "Struct_96*"
71 union(ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)))),ptr(struct(24:code_t,28:code_t)),ptr(struct(0:ptr(TOP),4:ptr(TOP),8:reg32_t,12:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),16:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),20:ptr(num8_t),36:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP)))))) "Union_18"
72 struct(0:ptr(TOP)) "Singleton_0"
73 ptr(struct(0:ptr(TOP))) "Singleton_0*"
74 ptr(struct(0:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),4:reg32_t,16:reg32_t,32:code_t,36:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))))) "Struct_99*"
75 ptr(struct(0:ptr(TOP),4:reg32_t,16:reg32_t)) "Struct_93*"
76 ptr(struct(0:reg32_t,4:ptr(TOP))) "Struct_0*"
77 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t)) "Struct_74*"
78 ptr(struct(0:reg64_t,8:reg32_t)) "StructFrag_9*"
79 ptr(struct(0:array(reg8_t,12),12:reg32_t)) "StructFrag_17*"
80 ptr(struct(0:array(reg8_t,16),16:reg32_t)) "StructFrag_18*"
81 ptr(struct(4:reg32_t,24:code_t)) "Struct_77*"
76 ptr(struct(0:reg32_t,4:ptr(TOP))) "StructFrag_16*"
82 union(ptr(struct(0:array(reg8_t,24),24:code_t)),ptr(struct(4:reg32_t,24:code_t))) "Union_13"
83 ptr(array(reg8_t,46)) "unknown_368*"
84 ptr(array(reg8_t,85)) "unknown_680*"
85 ptr(struct(0:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))))))),4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))))))),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t,16:num8_t)),32:code_t,36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP)))))) "Struct_43*"
86 ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)))) "Struct_30*"
87 ptr(struct(0:ptr(reg32_t),4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP)))))) "Struct_78*"
88 ptr(ptr(reg32_t)) "dword[]*"
89 ptr(struct(24:code_t,28:code_t)) "Struct_76*"
90 union(ptr(struct(0:array(reg8_t,24),24:code_t)),ptr(struct(24:code_t,28:code_t))) "Union_12"
91 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),8:reg32_t,12:reg32_t,16:reg32_t)) "Struct_33*"
92 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:uint32_t,12:reg32_t,16:reg32_t,20:ptr(struct(8:float32_t,16:num8_t)),24:reg32_t,28:reg32_t,32:reg32_t,36:reg32_t)) "Struct_85*"
93 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:uint32_t,12:reg32_t,20:ptr(struct(8:float32_t,16:num8_t)),24:reg32_t,28:reg32_t,32:reg32_t,36:reg32_t)) "Struct_86*"
94 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t,12:reg32_t,16:reg32_t)) "Struct_75*"
95 union(ptr(uint64_t),ptr(struct(0:uint64_t,4:reg32_t))) "Union_11"
96 ptr(struct(0:ptr(num8_t),4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:num8_t,41:num8_t,42:num8_t,43:num8_t,44:num8_t,45:num8_t,46:num8_t,47:num8_t,48:num8_t,49:num8_t,50:num8_t,51:num8_t,52:num8_t,53:num8_t)) "lconv*"
97 union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))) "Union_2"
98 ptr(struct(0:uint64_t,4:reg32_t)) "Struct_10*"
99 ptr(struct(0:array(reg8_t,40),40:num8_t)) "StructFrag_11*"
100 union(ptr(ptr(num8_t)),ptr(struct(0:ptr(num8_t),4:ptr(num8_t),104:reg32_t,112:ptr(num8_t)))) "Union_9"
101 ptr(struct(0:array(reg8_t,10),10:num8_t)) "StructFrag_37*"
102 ptr(struct(0:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),24:reg32_t,64:uint32_t,68:uint32_t,96:num32_t,100:uint32_t,104:reg32_t,112:ptr(num8_t),116:num8_t)) "Struct_60*"
103 ptr(struct(40:ptr(num8_t),44:ptr(num8_t))) "Struct_8*"
104 ptr(struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),4294967292:reg32_t)) "Struct_37*"
105 array(reg8_t,3) "unknown_24"
1 code_t "(void -> void)*"
106 ptr(array(reg8_t,25)) "unknown_200*"
107 ptr(array(reg8_t,22)) "unknown_176*"
108 ptr(struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:union(num32_t,ptr(TOP)),24:num32_t,28:code_t,32:code_t,36:ptr(TOP),40:uint32_t)) "obstack*"
109 array(reg8_t,11) "unknown_88"
110 ptr(struct(0:ptr(struct(0:reg32_t,4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP)))))),4:ptr(struct(0:reg32_t,4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP)))))),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t,16:num8_t)),32:code_t,36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP)))))) "Struct_40*"
111 ptr(array(reg8_t,3)) "unknown_24*"
112 ptr(struct(0:struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:union(num32_t,ptr(TOP)),24:num32_t,28:code_t,32:code_t,36:ptr(TOP),40:uint32_t),40:num8_t)) "Struct_42*"
48 ptr(uint32_t) "size_t*"
113 ptr(struct(0:ptr(num8_t),4:ptr(num8_t),104:reg32_t,116:num8_t,117:num8_t)) "Struct_17*"
114 ptr(struct(0:ptr(num8_t),4:ptr(num8_t),64:reg32_t,68:num32_t,96:reg32_t,100:reg32_t,116:num8_t,117:num8_t)) "Struct_18*"
115 ptr(struct(0:array(reg8_t,84),84:num32_t)) "StructFrag_12*"
116 union(ptr(num8_t),ptr(struct(0:ptr(num8_t),4:ptr(num8_t),104:reg32_t,116:num8_t,117:num8_t))) "Union_6"
117 ptr(struct(0:array(reg8_t,12),12:ptr(TOP))) "StructFrag_10*"
118 ptr(struct(0:reg64_t,8:ptr(reg32_t))) "StructFrag_35*"
119 ptr(struct(0:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),4:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),64:num32_t,68:num32_t,96:num32_t,100:num32_t,112:ptr(num8_t),116:num8_t,117:num8_t)) "Struct_57*"
120 ptr(struct(0:struct(0:num32_t,4:num32_t),4:reg32_t)) "Struct_44*"
121 ptr(struct(0:struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:union(num32_t,ptr(TOP)),24:num32_t,28:code_t,32:code_t,36:ptr(TOP),40:uint32_t),12:ptr(TOP))) "Struct_52*"
122 ptr(struct(0:reg64_t,8:ptr(TOP))) "StructFrag_34*"
123 ptr(struct(12:ptr(TOP),16:reg32_t)) "Struct_58*"
124 ptr(struct(0:reg32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_9*"
125 array(reg8_t,32) "unknown_256"
126 union(ptr(reg32_t),struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(array(reg8_t,16)))) "Union_20"
127 ptr(struct(0:reg32_t,8:reg32_t,24:code_t)) "Struct_95*"
128 union(ptr(reg32_t),ptr(struct(0:reg32_t,40:ptr(num8_t),44:ptr(num8_t)))) "Union_22"
129 ptr(array(reg8_t,24)) "unknown_192*"
2 num32_t "__time_t"
130 ptr(struct(0:array(reg8_t,22),22:num8_t)) "StructFrag_43*"
131 union(ptr(struct(0:array(reg8_t,40),40:num8_t)),ptr(struct(0:array(reg8_t,34),34:num8_t))) "Union_26"
132 ptr(struct(0:struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(array(reg8_t,16))),4:ptr(struct(4:ptr(TOP))))) "Struct_87*"
133 struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(array(reg8_t,16))) "Struct_5"
134 ptr(struct(12:reg32_t,24:code_t,36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP)))))) "Struct_91*"
135 union(ptr(struct(0:array(reg8_t,12),12:reg32_t)),ptr(struct(12:reg32_t,24:code_t,36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:reg8_t)),8:num8_t,12:ptr(TOP))))))) "Union_19"
136 ptr(struct(0:ptr(struct(0:struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(array(reg8_t,16))),4:ptr(struct(4:ptr(TOP))))),4:reg32_t,12:reg32_t)) "Struct_90*"
137 union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t)),ptr(struct(0:reg32_t,4:reg32_t)),ptr(reg32_t),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),ptr(struct(0:array(reg8_t,16),16:num8_t))) "Union_24"
138 uint64_t "uintmax_t"
2 num32_t "__pid_t"
139 ptr(ptr(uint16_t)) "unsigned short**"
140 ptr(union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t)))) "Union_1*"
141 ptr(code_t) "proc**"
142 ptr(ptr(struct(0:ptr(TOP),4:ptr(TOP),112:ptr(TOP)))) "Struct_13**"
143 ptr(ptr(struct(0:ptr(num8_t),4:ptr(num8_t),104:reg32_t,112:ptr(num8_t)))) "Struct_61**"
144 ptr(ptr(struct(0:array(reg8_t,104),104:reg32_t))) "StructFrag_36**"
145 ptr(ptr(struct(0:ptr(num8_t),4:ptr(num8_t),64:reg32_t,68:num32_t,96:reg32_t,100:reg32_t,116:num8_t,117:num8_t))) "Struct_18**"
146 ptr(ptr(struct(0:array(reg8_t,84),84:num32_t))) "StructFrag_12**"
147 ptr(reg16_t) "word*"
148 ptr(ptr(struct(0:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),4:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),64:num32_t,68:num32_t,96:num32_t,100:num32_t,112:ptr(num8_t),116:num8_t,117:num8_t))) "Struct_57**"
149 ptr(ptr(struct(0:union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))),64:reg32_t,68:reg32_t,96:num32_t,112:ptr(num8_t),116:num8_t))) "Struct_19**"
150 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(TOP))),ptr(struct(0:ptr(TOP))),ptr(struct(0:struct(0:ptr(num8_t),4:ptr(struct(0:reg16_t,2:num8_t)),8:num8_t,12:ptr(array(reg8_t,16))),4:ptr(struct(4:ptr(TOP)))))) "Union_21"
151 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))))))) "Union_4"
152 ptr(uint16_t) "unsigned short*"
153 ptr(struct(0:array(reg8_t,16),16:uint32_t)) "StructFrag_51*"
154 ptr(struct(0:reg32_t,4:ptr(num8_t))) "StructFrag_52*"
155 ptr(struct(0:array(reg8_t,235722),235722:reg32_t)) "StructFrag_21*"
156 ptr(struct(0:array(reg8_t,536870908),4294967292:reg32_t)) "StructFrag_22*"
157 ptr(struct(0:array(reg8_t,83868),83868:reg32_t)) "StructFrag_27*"
158 ptr(struct(0:array(reg8_t,904),904:reg32_t)) "StructFrag_28*"
159 ptr(array(reg8_t,128)) "unknown_1024*"
160 array(reg8_t,4096) "unknown_32768"
161 array(reg8_t,135168) "unknown_1081344"
162 array(reg8_t,30) "unknown_240"
163 array(reg8_t,5) "unknown_40"
164 array(reg8_t,29) "unknown_232"
165 array(reg8_t,16) "unknown_128"
166 array(reg8_t,41) "unknown_328"
167 array(reg8_t,7) "unknown_56"
168 array(reg8_t,51) "unknown_408"
169 array(reg8_t,13) "unknown_104"
170 array(reg8_t,27) "unknown_216"
171 array(reg8_t,17) "unknown_136"
172 array(reg8_t,18) "unknown_144"
173 array(reg8_t,36) "unknown_288"
174 array(reg8_t,23) "unknown_184"
175 array(reg8_t,47) "unknown_376"
176 array(reg8_t,142) "unknown_1136"
177 array(reg8_t,53) "unknown_424"
178 array(reg8_t,55) "unknown_440"
179 array(reg8_t,28) "unknown_224"
180 array(reg8_t,90) "unknown_720"
181 array(reg8_t,66) "unknown_528"
182 array(reg8_t,70) "unknown_560"
183 array(reg8_t,85) "unknown_680"
184 array(reg8_t,84) "unknown_672"
185 array(reg8_t,38) "unknown_304"
186 array(reg8_t,21) "unknown_168"
187 array(reg8_t,87) "unknown_696"
188 array(reg8_t,22) "unknown_176"
189 array(reg8_t,46) "unknown_368"
190 array(reg8_t,109) "unknown_872"
191 array(reg8_t,6) "unknown_48"
192 array(reg8_t,57) "unknown_456"
193 array(reg8_t,62) "unknown_496"
194 array(reg8_t,31) "unknown_248"
195 array(reg8_t,40) "unknown_320"
196 array(reg8_t,82) "unknown_656"
197 array(reg8_t,20) "unknown_160"
198 array(reg8_t,25) "unknown_200"
199 array(reg8_t,14) "unknown_112"
200 array(reg8_t,99) "unknown_792"
201 array(reg8_t,19) "unknown_152"
202 array(reg8_t,39) "unknown_312"
203 array(reg8_t,211) "unknown_1688"
204 array(reg8_t,60) "unknown_480"
205 array(reg8_t,26) "unknown_208"
206 array(reg8_t,49) "unknown_392"
207 array(reg8_t,75) "unknown_600"
208 array(reg8_t,50) "unknown_400"
209 array(reg8_t,59) "unknown_472"
210 array(reg8_t,9) "unknown_72"
211 array(reg8_t,64) "unknown_512"
212 array(reg8_t,79) "unknown_632"
213 array(reg8_t,117) "unknown_936"
214 array(reg8_t,43) "unknown_344"
215 array(reg8_t,54) "unknown_432"
216 array(reg8_t,37) "unknown_296"
217 array(reg8_t,131) "unknown_1048"
218 array(reg8_t,68) "unknown_544"
219 array(reg8_t,61) "unknown_488"
220 array(reg8_t,94) "unknown_752"
221 array(reg8_t,35) "unknown_280"
222 array(reg8_t,24) "unknown_192"
223 array(reg8_t,52) "unknown_416"
224 array(reg8_t,12) "unknown_96"
225 array(reg8_t,65) "unknown_520"
226 array(reg8_t,45) "unknown_360"
227 array(reg8_t,72) "unknown_576"
228 array(reg8_t,160) "unknown_1280"
229 array(reg8_t,74) "unknown_592"
230 array(reg8_t,125) "unknown_1000"
231 array(reg8_t,88) "unknown_704"
232 array(reg8_t,121) "unknown_968"
233 array(reg8_t,116) "unknown_928"
234 array(reg8_t,69) "unknown_552"
235 array(reg8_t,242) "unknown_1936"
236 array(reg8_t,33) "unknown_264"
237 array(reg8_t,83) "unknown_664"
238 array(reg8_t,15) "unknown_120"
239 array(reg8_t,129) "unknown_1032"
240 array(reg8_t,58) "unknown_464"
241 array(reg8_t,71) "unknown_568"
242 array(reg8_t,136) "unknown_1088"
243 array(reg8_t,190) "unknown_1520"
244 array(reg8_t,137) "unknown_1096"
245 array(reg8_t,73) "unknown_584"
246 array(reg8_t,77) "unknown_616"
247 array(reg8_t,126) "unknown_1008"
248 array(reg8_t,81) "unknown_648"
249 array(reg8_t,100) "unknown_800"
250 array(reg8_t,44) "unknown_352"
251 array(reg8_t,98) "unknown_784"
252 array(reg8_t,89) "unknown_712"
253 array(reg8_t,92) "unknown_736"
254 array(reg8_t,132) "unknown_1056"
255 array(reg8_t,157) "unknown_1256"
256 array(reg8_t,104) "unknown_832"
257 array(reg8_t,34) "unknown_272"
258 array(reg8_t,280) "unknown_2240"
259 array(reg8_t,67) "unknown_536"
260 array(reg8_t,161) "unknown_1288"
261 array(reg8_t,63) "unknown_504"
262 array(reg8_t,76) "unknown_608"
263 array(reg8_t,56) "unknown_448"
264 array(reg8_t,106) "unknown_848"
265 array(reg8_t,48) "unknown_384"
266 array(reg8_t,107) "unknown_856"
267 array(reg8_t,215) "unknown_1720"
268 array(reg8_t,253) "unknown_2024"
269 array(reg8_t,97) "unknown_776"
270 array(reg8_t,42) "unknown_336"
271 array(reg8_t,113) "unknown_904"
272 array(reg8_t,78) "unknown_624"
273 array(reg8_t,95) "unknown_760"
274 array(reg8_t,111) "unknown_888"
275 array(reg8_t,124) "unknown_992"
276 array(reg8_t,103) "unknown_824"
277 array(reg8_t,96) "unknown_768"
278 array(reg8_t,229) "unknown_1832"
279 array(reg8_t,855) "unknown_6840"
280 array(reg8_t,91) "unknown_728"
281 array(reg8_t,213) "unknown_1704"
282 array(reg8_t,147) "unknown_1176"
283 array(reg8_t,197) "unknown_1576"
284 array(reg8_t,274) "unknown_2192"
285 array(reg8_t,101) "unknown_808"
286 array(reg8_t,179) "unknown_1432"
287 array(reg8_t,201) "unknown_1608"
288 array(reg8_t,145) "unknown_1160"
289 array(reg8_t,118) "unknown_944"
290 array(reg8_t,153) "unknown_1224"
291 array(reg8_t,141) "unknown_1128"
292 array(reg8_t,93) "unknown_744"
293 array(reg8_t,173) "unknown_1384"
294 array(reg8_t,149) "unknown_1192"
295 array(reg8_t,146) "unknown_1168"
296 array(reg8_t,138) "unknown_1104"
297 array(reg8_t,102) "unknown_816"
298 array(reg8_t,80) "unknown_640"
299 array(reg8_t,176) "unknown_1408"
300 array(reg8_t,105) "unknown_840"
301 array(reg8_t,119) "unknown_952"
302 array(reg8_t,112) "unknown_896"
303 array(reg8_t,110) "unknown_880"
304 array(reg8_t,175) "unknown_1400"
305 array(reg8_t,250) "unknown_2000"
306 array(reg8_t,140) "unknown_1120"
307 array(reg8_t,86) "unknown_688"
308 array(reg8_t,122) "unknown_976"
309 array(num8_t,75) "char[75]"
310 array(num8_t,153) "char[153]"
311 array(num8_t,23) "char[23]"
312 array(num8_t,39) "char[39]"
313 array(num8_t,14) "char[14]"
314 array(num8_t,4) "char[4]"
315 array(num8_t,69) "char[69]"
316 array(num8_t,65) "char[65]"
317 array(num8_t,66) "char[66]"
318 struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t) "option"
319 array(reg8_t,672) "unknown_5376"
320 array(num8_t,9) "char[9]"
321 array(num8_t,132) "char[132]"
322 array(num8_t,5) "char[5]"
323 array(num8_t,3) "char[3]"
324 array(num8_t,90) "char[90]"
325 array(num8_t,10) "char[10]"
326 array(num8_t,2) "char[2]"
327 array(num8_t,6) "char[6]"
328 array(num8_t,13) "char[13]"
329 array(num8_t,38) "char[38]"
330 array(num8_t,41) "char[41]"
331 array(reg8_t,1120) "unknown_8960"
332 array(num8_t,24) "char[24]"
333 array(num8_t,52) "char[52]"
334 array(num8_t,7) "char[7]"
335 array(num8_t,25) "char[25]"
336 array(num8_t,40) "char[40]"
337 array(num8_t,21) "char[21]"
338 array(ptr(TOP),15) "void*[15]"
339 array(num8_t,51) "char[51]"
340 array(num8_t,17) "char[17]"
341 array(num8_t,29) "char[29]"
342 array(num8_t,36) "char[36]"
1 code_t "(dword,dword -> dword)*"
343 array(reg8_t,220) "unknown_1760"
344 array(num8_t,26) "char[26]"
345 array(ptr(TOP),5) "void*[5]"
346 array(num8_t,195) "char[195]"
347 array(num8_t,8) "char[8]"
348 array(num8_t,33) "char[33]"
349 array(num8_t,144) "char[144]"
350 array(num8_t,271) "char[271]"
351 array(num8_t,582) "char[582]"
352 array(num8_t,360) "char[360]"
353 array(num8_t,419) "char[419]"
354 array(num8_t,61) "char[61]"
355 array(num8_t,245) "char[245]"
356 array(num8_t,269) "char[269]"
357 array(num8_t,422) "char[422]"
358 array(num8_t,426) "char[426]"
359 array(num8_t,359) "char[359]"
360 array(num8_t,370) "char[370]"
361 array(num8_t,441) "char[441]"
362 array(num8_t,197) "char[197]"
363 array(num8_t,488) "char[488]"
364 array(num8_t,531) "char[531]"
365 array(num8_t,142) "char[142]"
366 array(num8_t,358) "char[358]"
367 array(num8_t,337) "char[337]"
368 array(num8_t,45) "char[45]"
369 array(num8_t,54) "char[54]"
370 array(num8_t,286) "char[286]"
371 array(num8_t,152) "char[152]"
372 array(num8_t,12) "char[12]"
373 array(num8_t,11) "char[11]"
374 array(num8_t,27) "char[27]"
375 array(num8_t,16) "char[16]"
376 array(num8_t,18) "char[18]"
377 float16_t "short float"
378 array(num8_t,56) "char[56]"
379 array(reg32_t,127) "dword[127]"
380 array(reg32_t,30) "dword[30]"
381 array(reg32_t,34) "dword[34]"
382 array(reg8_t,499) "unknown_3992"
383 array(num8_t,203) "char[203]"
384 array(num8_t,28) "char[28]"
385 array(num8_t,32) "char[32]"
386 array(num8_t,44) "char[44]"
387 array(num8_t,48) "char[48]"
388 array(num8_t,60) "char[60]"
389 array(num8_t,22) "char[22]"
390 array(num8_t,20) "char[20]"
391 array(num8_t,64) "char[64]"
392 array(num8_t,47) "char[47]"
393 array(ptr(TOP),54) "void*[54]"
394 array(num8_t,37) "char[37]"
395 array(num8_t,81) "char[81]"
396 array(reg8_t,2900) "unknown_23200"
397 array(reg8_t,12140) "unknown_97120"
398 array(reg8_t,3872) "unknown_30976"
1 code_t "(void -?-> dword)*"
399 array(reg8_t,232) "unknown_1856"
400 array(reg8_t,120) "unknown_960"
401 ptr(struct(0:ptr(struct(0:reg32_t,4:reg32_t)),4:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t,16:num8_t)),32:ptr(TOP),36:ptr(struct(0:reg32_t,4:reg32_t)))) "Struct_1*"
402 ptr(struct(0:ptr(struct(0:ptr(num8_t),4:ptr(num8_t),64:reg32_t,68:reg32_t,112:ptr(num8_t),116:num8_t,117:num8_t)),4:reg32_t)) "Struct_3*"
403 struct(0:num32_t,4:num32_t) "timespec"
404 ptr(struct(0:array(reg8_t,16),16:ptr(TOP))) "StructFrag_3*"
405 ptr(struct(0:num32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_7*"
406 array(reg8_t,128) "unknown_1024"
407 struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:union(num32_t,ptr(TOP)),24:num32_t,28:code_t,32:code_t,36:ptr(TOP),40:uint32_t) "obstack"
408 ptr(struct(0:ptr(num8_t),4:ptr(TOP),8:array(num8_t,4))) "_obstack_chunk*"
409 union(ptr(TOP),num32_t) "Union_0"
1 code_t "(_Inout_ void*,int -?-> _obstack_chunk*)*"
1 code_t "(_Inout_ void*,_Inout_ _obstack_chunk* -?-> void)*"
410 array(reg8_t,1932) "unknown_15456"
411 struct(0:array(num32_t,6),24:num32_t,28:struct(0:array(uint32_t,32))) "__jmp_buf_tag"
412 ptr(struct(0:reg64_t,8:num8_t)) "StructFrag_4*"
413 array(reg8_t,256) "unknown_2048"
