0 reg32_t "dword"
1 code_t "proc*"
2 ptr(reg32_t) "dword[]"
3 num32_t "int"
4 uint32_t "unsigned int"
5 ptr(uint32_t) "unsigned int[]"
6 ptr(num32_t) "int*"
4 uint32_t "size_t"
7 ptr(TOP) "void*"
8 ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(struct(0:num32_t,4:ptr(reg8_t),8:ptr(reg8_t),12:ptr(reg8_t),16:ptr(reg8_t),20:ptr(reg8_t),24:ptr(reg8_t),28:ptr(reg8_t),32:ptr(reg8_t),36:ptr(reg8_t),40:ptr(reg8_t),44:ptr(reg8_t),48:ptr(TOP),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),8:num32_t)),52:ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(TOP),8:num32_t)),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))) "FILE*"
9 ptr(num8_t) "char*"
1 code_t "(_In_ void*,_In_ void* -?-> int)*"
4 uint32_t "__mode_t"
10 ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(8:float32_t,12:float32_t)))) "Struct_25*"
11 array(reg8_t,3) "unknown_24"
12 num8_t "char"
13 ptr(array(reg8_t,16)) "unknown_128*"
14 ptr(array(reg8_t,56)) "unknown_448*"
15 ptr(array(reg8_t,172)) "unknown_1376*"
16 ptr(array(reg8_t,42)) "unknown_336*"
2 ptr(reg32_t) "dword*"
9 ptr(num8_t) "char[]"
17 union(ptr(reg32_t),ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(8:float32_t,12:float32_t))))) "Union_17"
18 union(ptr(reg32_t),ptr(struct(0:reg32_t,4:reg32_t,88:ptr(TOP),92:reg32_t))) "Union_18"
19 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),8:ptr(TOP),20:ptr(TOP),24:num32_t,28:num32_t,40:ptr(TOP),44:uint32_t,48:ptr(struct(0:ptr(TOP),32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))))) "Struct_58*"
20 ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t)) "Struct_55*"
21 union(ptr(num8_t),num32_t) "Union_23"
22 ptr(struct(0:reg32_t,4:reg32_t,8:ptr(TOP),12:reg32_t,16:ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:reg32_t)))) "Struct_107*"
23 ptr(struct(0:reg32_t,4:reg32_t,88:ptr(TOP),92:reg32_t)) "Struct_112*"
24 ptr(struct(0:array(reg8_t,16),16:reg32_t)) "StructFrag_6*"
25 ptr(struct(0:ptr(TOP),32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_21*"
26 union(ptr(struct(0:reg64_t,8:reg32_t)),ptr(struct(0:reg64_t,8:ptr(TOP)))) "Union_15"
27 union(ptr(struct(0:reg64_t,8:reg32_t)),ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t)),ptr(struct(0:array(reg8_t,224),224:ptr(TOP)))) "Union_13"
5 ptr(uint32_t) "size_t*"
28 ptr(struct(0:reg32_t,4:ptr(TOP))) "Struct_0*"
29 ptr(struct(4:ptr(TOP),8:ptr(TOP))) "Struct_41*"
28 ptr(struct(0:reg32_t,4:ptr(TOP))) "StructFrag_35*"
30 ptr(struct(0:ptr(struct(4:ptr(TOP),8:ptr(TOP))),8:ptr(TOP),20:ptr(TOP),24:num32_t,28:num32_t,48:ptr(struct(0:ptr(TOP),32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))))) "Struct_102*"
31 ptr(ptr(reg32_t)) "dword[]*"
32 union(ptr(num8_t),uint32_t) "Union_14"
33 ptr(struct(0:array(reg8_t,64),64:union(ptr(num8_t),uint32_t))) "StructFrag_54*"
34 ptr(struct(0:union(ptr(num8_t),uint32_t),8:reg32_t)) "Struct_95*"
35 union(ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t))) "Union_7"
36 union(uint32_t,ptr(array(reg8_t,42))) "Union_8"
37 union(ptr(TOP),num32_t) "Union_9"
38 ptr(struct(0:union(ptr(TOP),num32_t),4:union(ptr(TOP),num32_t),8:num8_t)) "Struct_71*"
39 ptr(array(reg8_t,32)) "unknown_256*"
40 ptr(struct(0:union(ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:reg8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t))),4:union(ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:reg8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t))),12:union(ptr(TOP),num32_t),16:union(ptr(TOP),num32_t),20:union(ptr(TOP),num32_t),44:reg32_t)) "Struct_73*"
41 ptr(struct(0:array(reg8_t,64),64:reg16_t)) "StructFrag_28*"
42 union(uint32_t,ptr(struct(0:reg64_t,8:reg32_t)),ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t)),ptr(struct(0:array(reg8_t,224),224:ptr(TOP)))) "Union_16"
43 ptr(struct(0:ptr(struct(0:reg64_t,8:reg32_t)),4:reg32_t)) "Struct_88*"
44 ptr(struct(0:array(reg8_t,92),92:reg32_t)) "StructFrag_55*"
45 union(ptr(TOP),uint32_t) "Union_2"
46 ptr(struct(0:ptr(TOP),12:reg32_t)) "Struct_51*"
47 reg64_t "qword"
48 reg16_t "word"
49 num64_t "long long"
50 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:reg32_t,12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t)),36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_14*"
51 ptr(ptr(struct(0:reg32_t,4:ptr(TOP)))) "StructFrag_35**"
52 ptr(struct(0:array(reg8_t,16),16:ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:reg32_t)))) "StructFrag_60*"
53 union(ptr(struct(0:union(ptr(TOP),num32_t),4:union(ptr(TOP),num32_t),8:num8_t)),ptr(struct(0:reg32_t,4:reg32_t,8:ptr(TOP),12:reg32_t,16:ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:reg32_t))))) "Union_20"
54 ptr(struct(0:ptr(struct(0:array(reg8_t,20),20:ptr(TOP))),32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_130*"
55 ptr(struct(0:ptr(TOP),4:reg32_t,16:reg32_t)) "Struct_128*"
56 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t)) "Struct_126*"
57 union(ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(8:float32_t,12:float32_t)))),ptr(struct(0:array(reg8_t,16),16:reg32_t))) "Union_19"
58 ptr(struct(0:union(ptr(struct(0:union(ptr(TOP),num32_t),4:union(ptr(TOP),num32_t),8:num8_t)),ptr(struct(0:reg32_t,4:reg32_t,8:ptr(TOP),12:reg32_t,16:ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:reg32_t))))),4:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_106*"
59 ptr(ptr(struct(0:array(reg8_t,16),16:ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:reg32_t))))) "StructFrag_60**"
60 ptr(struct(0:reg64_t,8:num8_t)) "StructFrag_43*"
61 ptr(struct(0:array(reg8_t,28),28:code_t)) "StructFrag_26*"
62 float64_t "double"
63 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t)) "Struct_121*"
64 ptr(struct(0:reg64_t,8:float32_t)) "StructFrag_11*"
65 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:reg32_t,12:reg32_t,20:ptr(struct(0:reg64_t,8:float32_t)))) "Struct_116*"
66 ptr(struct(0:array(reg8_t,28),28:num8_t)) "StructFrag_16*"
67 ptr(struct(0:num32_t,4:ptr(ptr(num8_t)),4294967292:reg32_t)) "Struct_52*"
68 union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))) "Union_1"
69 ptr(struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t)) "option*"
70 ptr(ptr(num8_t)) "char**"
71 ptr(struct(0:reg64_t,8:reg32_t)) "StructFrag_5*"
19 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),8:ptr(TOP),20:ptr(TOP),24:num32_t,28:num32_t,40:ptr(TOP),44:uint32_t,48:ptr(struct(0:ptr(TOP),32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))))) "Struct_54*"
72 ptr(struct(0:reg32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_1*"
73 ptr(struct(0:num32_t,4:reg32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_65*"
74 int32_t "signed int"
75 ptr(struct(0:array(reg8_t,18),18:num8_t)) "StructFrag_1*"
76 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(struct(0:reg32_t,4:ptr(TOP))))),12:reg32_t)) "Struct_122*"
77 ptr(struct(0:reg32_t,4:ptr(struct(0:reg32_t,4:ptr(TOP))))) "StructFrag_37*"
78 ptr(struct(0:array(reg8_t,3),3:num8_t)) "StructFrag_45*"
5 ptr(uint32_t) "unsigned int*"
79 union(ptr(num8_t),ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:num8_t))) "Union_5"
80 ptr(ptr(uint16_t)) "unsigned short**"
81 ptr(ptr(TOP)) "void**"
82 ptr(struct(0:num32_t,4:uint32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_105*"
83 ptr(struct(0:num32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_67*"
32 union(ptr(num8_t),uint32_t) "Union_4"
84 ptr(struct(0:union(ptr(struct(0:reg64_t,8:reg32_t)),ptr(struct(0:reg32_t,4:ptr(TOP)))),20:ptr(TOP),24:num32_t,40:ptr(TOP),44:uint32_t)) "Struct_68*"
85 ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:reg32_t)) "Struct_30*"
86 ptr(struct(0:array(reg8_t,38),38:num8_t)) "StructFrag_51*"
87 ptr(struct(0:reg16_t,2:num8_t)) "StructFrag_0*"
88 union(ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(0:array(reg8_t,224),224:ptr(TOP)))) "Union_11"
89 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(struct(0:reg32_t,4:ptr(TOP))))),ptr(struct(0:ptr(struct(0:reg64_t,8:num8_t)),4:ptr(TOP)))) "Union_22"
76 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(struct(0:reg32_t,4:ptr(TOP))))),12:reg32_t)) "Struct_110*"
90 ptr(struct(0:ptr(struct(0:reg64_t,8:num8_t)),4:ptr(TOP))) "Struct_124*"
28 ptr(struct(0:reg32_t,4:ptr(TOP))) "StructFrag_12*"
91 ptr(struct(8:float32_t)) "Struct_111*"
92 ptr(struct(8:float32_t,12:float32_t)) "Struct_23*"
93 ptr(struct(0:float32_t,4:float32_t,8:float32_t)) "Struct_13*"
94 ptr(reg16_t) "word[]"
95 ptr(ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t))) "Struct_5**"
96 ptr(struct(0:array(reg8_t,52),52:ptr(struct(0:ptr(TOP),32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))))) "StructFrag_49*"
97 ptr(struct(0:array(reg8_t,20),20:reg32_t)) "StructFrag_3*"
98 ptr(struct(0:array(reg8_t,64),64:uint32_t)) "StructFrag_52*"
99 ptr(struct(8:ptr(struct(0:ptr(struct(0:reg64_t,8:reg32_t)),4:reg32_t)),36:reg32_t,40:code_t)) "Struct_100*"
100 ptr(struct(28:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_119*"
101 ptr(struct(0:array(reg8_t,52),52:ptr(struct(0:ptr(TOP),4:ptr(TOP),8:reg32_t,12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t)),36:ptr(struct(0:reg32_t,4:ptr(TOP))))))) "StructFrag_62*"
6 ptr(num32_t) "int[]"
102 ptr(struct(0:reg32_t,8:reg32_t,24:code_t)) "Struct_127*"
103 ptr(struct(0:array(reg8_t,52),52:ptr(struct(0:array(reg8_t,16),16:reg32_t)))) "StructFrag_59*"
104 ptr(struct(12:reg32_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_123*"
105 ptr(struct(28:reg32_t,48:ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(8:float32_t,12:float32_t)))))) "Struct_75*"
106 ptr(struct(0:array(reg8_t,107466),107466:reg32_t)) "StructFrag_32*"
107 ptr(struct(0:array(reg8_t,536870908),4294967292:reg32_t)) "StructFrag_33*"
108 ptr(struct(0:array(reg8_t,45596),45596:reg32_t)) "StructFrag_41*"
109 ptr(struct(0:array(reg8_t,584),584:reg32_t)) "StructFrag_42*"
110 ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:ptr(TOP))) "Struct_15*"
111 ptr(struct(0:uint32_t,4:ptr(num8_t))) "Struct_66*"
112 ptr(uint16_t) "unsigned short*"
113 ptr(union(ptr(num8_t),uint32_t)) "Union_14*"
114 ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)) "Struct_5*"
115 ptr(struct(4:ptr(struct(68:reg32_t,72:reg32_t,156:ptr(TOP),160:ptr(TOP))),68:reg32_t,72:reg32_t,156:reg32_t,160:reg32_t)) "Struct_117*"
116 ptr(struct(0:reg64_t,8:uint32_t)) "StructFrag_44*"
117 array(reg8_t,4096) "unknown_32768"
118 array(reg8_t,135168) "unknown_1081344"
119 array(reg8_t,30) "unknown_240"
120 array(reg8_t,5) "unknown_40"
121 array(reg8_t,29) "unknown_232"
122 array(reg8_t,16) "unknown_128"
123 array(reg8_t,172) "unknown_1376"
124 array(reg8_t,116) "unknown_928"
125 array(reg8_t,88) "unknown_704"
126 array(reg8_t,10) "unknown_80"
127 array(reg8_t,12) "unknown_96"
128 array(reg8_t,21) "unknown_168"
129 array(reg8_t,36) "unknown_288"
130 array(reg8_t,39) "unknown_312"
131 array(reg8_t,70) "unknown_560"
132 array(reg8_t,15) "unknown_120"
133 array(reg8_t,59) "unknown_472"
134 array(reg8_t,68) "unknown_544"
135 array(reg8_t,67) "unknown_536"
136 array(reg8_t,62) "unknown_496"
137 array(reg8_t,17) "unknown_136"
138 array(reg8_t,14) "unknown_112"
139 array(reg8_t,42) "unknown_336"
140 array(reg8_t,22) "unknown_176"
141 array(reg8_t,34) "unknown_272"
142 array(reg8_t,61) "unknown_488"
143 array(reg8_t,83) "unknown_664"
144 array(reg8_t,9) "unknown_72"
145 array(reg8_t,13) "unknown_104"
146 array(reg8_t,31) "unknown_248"
147 array(reg8_t,205) "unknown_1640"
148 array(reg8_t,27) "unknown_216"
149 array(reg8_t,64) "unknown_512"
150 array(reg8_t,80) "unknown_640"
151 array(reg8_t,26) "unknown_208"
152 array(reg8_t,53) "unknown_424"
153 array(reg8_t,176) "unknown_1408"
154 array(reg8_t,99) "unknown_792"
155 array(reg8_t,58) "unknown_464"
156 array(reg8_t,25) "unknown_200"
157 array(reg8_t,18) "unknown_144"
158 array(reg8_t,38) "unknown_304"
159 array(reg8_t,33) "unknown_264"
160 array(reg8_t,94) "unknown_752"
161 array(reg8_t,105) "unknown_840"
162 array(reg8_t,54) "unknown_432"
163 array(reg8_t,11) "unknown_88"
164 array(reg8_t,87) "unknown_696"
165 array(reg8_t,82) "unknown_656"
166 array(reg8_t,41) "unknown_328"
167 array(reg8_t,7) "unknown_56"
168 array(reg8_t,51) "unknown_408"
169 array(reg8_t,32) "unknown_256"
170 array(reg8_t,52) "unknown_416"
171 array(reg8_t,365) "unknown_2920"
172 array(reg8_t,65) "unknown_520"
173 array(reg8_t,66) "unknown_528"
174 array(reg8_t,20) "unknown_160"
175 array(reg8_t,24) "unknown_192"
176 array(reg8_t,108) "unknown_864"
177 array(reg8_t,71) "unknown_568"
178 array(reg8_t,79) "unknown_632"
179 array(reg8_t,48) "unknown_384"
180 array(reg8_t,50) "unknown_400"
181 array(reg8_t,37) "unknown_296"
182 array(reg8_t,56) "unknown_448"
183 array(reg8_t,45) "unknown_360"
184 array(reg8_t,76) "unknown_608"
185 array(reg8_t,72) "unknown_576"
186 array(reg8_t,47) "unknown_376"
187 array(reg8_t,109) "unknown_872"
188 array(reg8_t,96) "unknown_768"
189 array(reg8_t,112) "unknown_896"
190 array(reg8_t,74) "unknown_592"
191 array(reg8_t,28) "unknown_224"
192 array(reg8_t,44) "unknown_352"
193 array(reg8_t,19) "unknown_152"
194 array(reg8_t,90) "unknown_720"
195 array(reg8_t,57) "unknown_456"
196 array(reg8_t,6) "unknown_48"
197 array(reg8_t,23) "unknown_184"
198 array(reg8_t,162) "unknown_1296"
199 array(reg8_t,160) "unknown_1280"
200 array(reg8_t,60) "unknown_480"
201 array(reg8_t,40) "unknown_320"
202 array(reg8_t,73) "unknown_584"
203 array(reg8_t,117) "unknown_936"
204 array(reg8_t,46) "unknown_368"
205 array(reg8_t,86) "unknown_688"
206 array(reg8_t,43) "unknown_344"
207 array(reg8_t,84) "unknown_672"
208 array(reg8_t,35) "unknown_280"
209 array(reg8_t,138) "unknown_1104"
210 array(reg8_t,102) "unknown_816"
211 array(reg8_t,104) "unknown_832"
212 array(reg8_t,214) "unknown_1712"
213 array(reg8_t,153) "unknown_1224"
214 array(reg8_t,147) "unknown_1176"
215 array(reg8_t,111) "unknown_888"
216 array(num8_t,39) "char[39]"
217 array(num8_t,135) "char[135]"
218 array(num8_t,105) "char[105]"
219 array(num8_t,201) "char[201]"
220 array(num8_t,128) "char[128]"
221 array(num8_t,66) "char[66]"
222 array(num8_t,67) "char[67]"
223 array(num8_t,45) "char[45]"
224 array(num8_t,54) "char[54]"
225 array(num8_t,75) "char[75]"
226 array(num8_t,69) "char[69]"
227 array(num8_t,65) "char[65]"
228 array(num8_t,87) "char[87]"
229 array(num8_t,68) "char[68]"
230 array(num8_t,44) "char[44]"
231 array(num8_t,31) "char[31]"
232 array(num8_t,38) "char[38]"
233 array(num8_t,186) "char[186]"
234 array(num8_t,58) "char[58]"
235 array(num8_t,49) "char[49]"
236 array(num8_t,35) "char[35]"
237 array(num8_t,56) "char[56]"
238 array(num8_t,50) "char[50]"
239 array(num8_t,59) "char[59]"
240 array(num8_t,23) "char[23]"
241 array(num8_t,10) "char[10]"
242 array(num8_t,4) "char[4]"
243 array(num8_t,13) "char[13]"
244 array(num8_t,16) "char[16]"
245 array(num8_t,6) "char[6]"
246 array(num8_t,25) "char[25]"
247 array(num8_t,17) "char[17]"
248 array(num8_t,27) "char[27]"
249 array(num8_t,29) "char[29]"
250 array(ptr(TOP),12) "void*[12]"
251 struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t) "option"
252 array(num8_t,12) "char[12]"
253 array(num8_t,7) "char[7]"
254 array(ptr(TOP),33) "void*[33]"
255 array(num8_t,8) "char[8]"
256 array(num8_t,3) "char[3]"
257 array(num8_t,2) "char[2]"
258 array(reg32_t,9) "dword[9]"
259 array(reg32_t,127) "dword[127]"
260 array(reg32_t,34) "dword[34]"
261 array(num8_t,28) "char[28]"
262 array(num8_t,21) "char[21]"
263 array(num8_t,22) "char[22]"
264 array(num8_t,20) "char[20]"
265 array(num8_t,203) "char[203]"
266 array(num8_t,32) "char[32]"
267 array(num8_t,36) "char[36]"
268 array(num8_t,40) "char[40]"
269 array(num8_t,48) "char[48]"
270 array(num8_t,52) "char[52]"
271 array(num8_t,60) "char[60]"
272 array(num8_t,64) "char[64]"
273 array(ptr(TOP),10) "void*[10]"
274 array(num8_t,47) "char[47]"
275 array(num8_t,11) "char[11]"
276 array(num8_t,18) "char[18]"
277 array(num8_t,24) "char[24]"
278 array(num8_t,33) "char[33]"
279 float32_t "float"
280 array(num8_t,78) "char[78]"
281 array(reg8_t,1180) "unknown_9440"
282 array(reg8_t,10592) "unknown_84736"
283 array(reg8_t,5404) "unknown_43232"
1 code_t "(void -?-> dword)*"
284 array(reg8_t,232) "unknown_1856"
285 array(reg8_t,256) "unknown_2048"
286 union(ptr(reg32_t),uint32_t) "Union_3"
287 ptr(struct(0:ptr(struct(0:reg64_t,8:reg32_t)),20:reg32_t,24:num32_t,40:reg32_t,44:uint32_t)) "Struct_10*"
288 union(ptr(struct(0:reg64_t,8:ptr(TOP))),ptr(struct(16:reg32_t,24:reg32_t,28:union(ptr(num8_t),ptr(struct(0:reg32_t,4:num8_t))),32:reg32_t,60:reg16_t,64:reg16_t,68:reg32_t,84:ptr(num8_t),156:reg32_t)),ptr(struct(0:array(reg8_t,224),224:ptr(TOP)))) "Union_12"
289 ptr(struct(0:ptr(struct(0:reg64_t,8:ptr(TOP))),20:reg32_t,24:num32_t,40:reg32_t,44:uint32_t)) "Struct_8*"
