0 reg32_t "dword"
1 code_t "proc*"
2 num32_t "int"
3 uint32_t "size_t"
4 ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(struct(0:num32_t,4:ptr(reg8_t),8:ptr(reg8_t),12:ptr(reg8_t),16:ptr(reg8_t),20:ptr(reg8_t),24:ptr(reg8_t),28:ptr(reg8_t),32:ptr(reg8_t),36:ptr(reg8_t),40:ptr(reg8_t),44:ptr(reg8_t),48:ptr(TOP),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),8:num32_t)),52:ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(TOP),8:num32_t)),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))) "FILE*"
5 ptr(num8_t) "char*"
6 ptr(TOP) "void*"
3 uint32_t "unsigned int"
7 num8_t "char"
8 float64_t "double"
9 ptr(array(reg8_t,16)) "unknown_128*"
10 ptr(array(reg8_t,56)) "unknown_448*"
11 ptr(array(reg8_t,134)) "unknown_1072*"
12 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(ptr(struct(0:reg32_t,4:ptr(TOP))))) "Union_17"
13 ptr(struct(0:array(reg8_t,36),36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(ptr(struct(0:reg32_t,4:ptr(TOP))))))) "StructFrag_23*"
2 num32_t "__ssize_t"
14 ptr(array(reg8_t,58)) "unknown_464*"
15 ptr(reg32_t) "dword*"
16 ptr(ptr(TOP)) "void**"
17 ptr(struct(0:array(reg8_t,8192),8192:num8_t)) "StructFrag_20*"
18 union(ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)),24:code_t)),ptr(ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)),24:code_t))),ptr(struct(0:reg32_t,4:ptr(TOP)))) "Union_2"
19 union(ptr(num8_t),ptr(struct(0:array(reg8_t,8192),8192:num8_t))) "Union_3"
5 ptr(num8_t) "char[]"
20 ptr(struct(0:reg16_t,2:num8_t)) "StructFrag_0*"
21 reg64_t "qword"
22 ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)) "Struct_5*"
23 float32_t "float"
24 ptr(struct(0:array(reg8_t,20),20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)))) "StructFrag_21*"
25 union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))) "Union_0"
26 reg16_t "word"
27 num64_t "long long"
28 ptr(struct(8:float32_t,16:num8_t)) "Struct_6*"
29 ptr(struct(0:array(reg8_t,36),36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "StructFrag_24*"
30 ptr(struct(0:reg32_t,4:ptr(TOP))) "StructFrag_18*"
31 ptr(ptr(struct(0:ptr(TOP)))) "Singleton_0*[]"
32 ptr(struct(0:reg32_t,4:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_53*"
33 ptr(struct(0:ptr(TOP),12:reg32_t,32:code_t)) "Struct_17*"
34 ptr(struct(0:ptr(TOP),4:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(num8_t),36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_18*"
35 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t)) "Struct_55*"
36 ptr(struct(0:ptr(TOP),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t)) "Struct_39*"
37 union(ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)))),ptr(struct(24:code_t,28:code_t)),ptr(struct(0:ptr(TOP),4:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(num8_t),36:ptr(struct(0:reg32_t,4:ptr(TOP)))))) "Union_12"
38 struct(0:ptr(TOP)) "Singleton_0"
39 ptr(struct(0:ptr(TOP))) "Singleton_0*"
40 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t,16:reg32_t,32:code_t,36:ptr(struct(0:reg32_t,4:ptr(TOP))))) "Struct_58*"
41 ptr(struct(0:ptr(TOP),4:reg32_t,16:reg32_t)) "Struct_52*"
30 ptr(struct(0:reg32_t,4:ptr(TOP))) "Struct_0*"
35 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t)) "Struct_32*"
42 ptr(struct(0:reg64_t,8:reg32_t)) "StructFrag_10*"
43 ptr(struct(0:array(reg8_t,12),12:reg32_t)) "StructFrag_6*"
44 ptr(struct(0:array(reg8_t,16),16:reg32_t)) "StructFrag_9*"
45 ptr(struct(4:reg32_t,24:code_t)) "Struct_37*"
30 ptr(struct(0:reg32_t,4:ptr(TOP))) "StructFrag_5*"
46 union(ptr(struct(0:array(reg8_t,24),24:code_t)),ptr(struct(4:reg32_t,24:code_t))) "Union_7"
47 ptr(array(reg8_t,101)) "unknown_808*"
48 ptr(array(reg8_t,114)) "unknown_912*"
49 union(ptr(struct(0:array(reg8_t,24),24:code_t)),ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t))))) "Union_5"
50 ptr(array(reg8_t,45)) "unknown_360*"
51 ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)))) "Struct_10*"
52 ptr(struct(0:ptr(struct(0:ptr(TOP),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t)),4:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(ptr(struct(0:reg32_t,4:ptr(TOP))))))) "Struct_38*"
53 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(ptr(struct(0:reg32_t,4:ptr(TOP))))) "Union_8"
54 ptr(ptr(struct(0:ptr(TOP),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t))) "Struct_39**"
55 ptr(struct(24:code_t,28:code_t)) "Struct_36*"
56 union(ptr(struct(0:array(reg8_t,24),24:code_t)),ptr(struct(24:code_t,28:code_t))) "Union_6"
57 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),8:reg32_t,12:reg32_t,16:reg32_t)) "Struct_15*"
58 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:uint32_t,12:reg32_t,16:reg32_t,20:ptr(struct(8:float32_t,16:num8_t)),24:reg32_t,28:reg32_t,32:reg32_t,36:reg32_t)) "Struct_45*"
59 ptr(struct(0:ptr(TOP),4:ptr(TOP),8:uint32_t,12:reg32_t,20:ptr(struct(8:float32_t,16:num8_t)),24:reg32_t,28:reg32_t,32:reg32_t,36:reg32_t)) "Struct_42*"
60 ptr(struct(0:ptr(struct(0:reg32_t,4:ptr(TOP))),4:reg32_t,12:reg32_t,16:reg32_t)) "Struct_34*"
61 ptr(ptr(num8_t)) "char[]*"
61 ptr(ptr(num8_t)) "char**"
31 ptr(ptr(struct(0:ptr(TOP)))) "Singleton_0**"
62 array(reg8_t,3) "unknown_24"
63 ptr(struct(0:ptr(TOP),4:uint32_t,8:num8_t,12:reg32_t)) "Struct_67*"
64 ptr(struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),8:ptr(num8_t))),4294967292:reg32_t)) "Struct_29*"
65 ptr(struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t)) "option*"
66 ptr(struct(0:ptr(num8_t),8:ptr(num8_t))) "Struct_30*"
25 union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t))) "Union_1"
67 ptr(struct(0:reg32_t,4:num8_t,16:num8_t,20:ptr(num8_t),24:uint32_t,28:num8_t,32:reg32_t)) "Struct_66*"
15 ptr(reg32_t) "dword[]"
68 array(num8_t,1) "char[1]"
69 ptr(struct(0:num8_t,12:num8_t,16:ptr(num8_t),20:uint32_t,24:num8_t,28:reg32_t)) "Struct_70*"
70 ptr(num32_t) "int*"
71 ptr(struct(0:array(reg8_t,16),16:ptr(TOP))) "StructFrag_29*"
30 ptr(struct(0:reg32_t,4:ptr(TOP))) "StructFrag_7*"
72 ptr(struct(0:reg32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_14*"
73 ptr(struct(40:ptr(num8_t),44:ptr(num8_t))) "Struct_22*"
74 ptr(uint32_t) "size_t*"
75 array(reg8_t,32) "unknown_256"
76 int32_t "signed int"
77 union(ptr(struct(0:ptr(TOP),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t)),struct(0:reg32_t,4:ptr(reg64_t))) "Union_15"
78 ptr(struct(0:reg32_t,8:reg32_t,24:code_t)) "Struct_54*"
79 ptr(struct(0:array(reg8_t,24),24:code_t)) "StructFrag_2*"
80 ptr(ptr(struct(0:ptr(TOP),12:reg32_t,16:reg32_t,20:ptr(struct(0:float32_t,4:float32_t,8:float32_t,12:float32_t)),24:code_t))) "Struct_9**"
74 ptr(uint32_t) "unsigned int*"
81 union(ptr(reg32_t),ptr(struct(0:reg32_t,40:ptr(num8_t),44:ptr(num8_t)))) "Union_18"
82 ptr(struct(0:reg32_t,4:reg32_t)) "StructFrag_12*"
83 union(ptr(num8_t),ptr(struct(0:reg16_t,2:num8_t)),ptr(struct(0:array(reg8_t,8192),8192:num8_t))) "Union_4"
84 ptr(struct(0:struct(0:reg32_t,4:ptr(reg64_t)),4:ptr(struct(4:ptr(TOP))))) "Struct_46*"
85 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP)))) "Union_13"
86 struct(0:reg32_t,4:ptr(reg64_t)) "StructFrag_18"
87 ptr(struct(12:reg32_t,24:code_t,36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP)))))) "Struct_50*"
88 union(ptr(struct(0:array(reg8_t,12),12:reg32_t)),ptr(struct(12:reg32_t,24:code_t,36:union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))))))) "Union_14"
89 ptr(struct(0:ptr(struct(0:struct(0:reg32_t,4:ptr(reg64_t)),4:ptr(struct(4:ptr(TOP))))),4:reg32_t,12:reg32_t)) "Struct_49*"
90 ptr(struct(0:ptr(num8_t),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t)) "Struct_33*"
91 ptr(struct(0:ptr(num8_t),4:reg32_t,8:reg32_t)) "Struct_71*"
74 ptr(uint32_t) "unsigned int[]"
92 union(ptr(num8_t),ptr(struct(0:array(reg8_t,8192),8192:num8_t)),ptr(struct(0:ptr(TOP),4:reg32_t,8:reg32_t,12:reg32_t,16:reg32_t))) "Union_19"
93 union(ptr(num8_t),ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:array(reg8_t,8192),8192:num8_t))) "Union_20"
6 ptr(TOP) "iconv_t"
94 ptr(ptr(uint16_t)) "unsigned short**"
95 ptr(ptr(struct(0:reg16_t,2:num8_t))) "StructFrag_0**"
96 union(ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:reg32_t,4:ptr(TOP))),ptr(struct(0:ptr(TOP))),ptr(struct(0:struct(0:reg32_t,4:ptr(reg64_t)),4:ptr(struct(4:ptr(TOP)))))) "Union_16"
97 ptr(uint16_t) "unsigned short*"
98 ptr(reg16_t) "word*"
99 ptr(struct(0:array(reg8_t,16),16:uint32_t)) "StructFrag_26*"
100 ptr(code_t) "proc**"
101 ptr(struct(0:reg64_t,8:num8_t)) "StructFrag_27*"
102 ptr(struct(0:reg32_t,4:uint32_t)) "StructFrag_28*"
103 ptr(struct(0:array(reg8_t,107602),107602:reg32_t)) "StructFrag_14*"
104 ptr(struct(0:array(reg8_t,536870908),4294967292:reg32_t)) "StructFrag_15*"
64 ptr(struct(0:num32_t,4:ptr(struct(0:ptr(num8_t),8:ptr(num8_t))),4294967292:reg32_t)) "Struct_31*"
105 ptr(struct(0:array(reg8_t,37980),37980:reg32_t)) "StructFrag_16*"
106 ptr(struct(0:array(reg8_t,648),648:reg32_t)) "StructFrag_17*"
107 array(reg8_t,4096) "unknown_32768"
108 array(reg8_t,135168) "unknown_1081344"
109 array(reg8_t,30) "unknown_240"
110 array(reg8_t,5) "unknown_40"
111 array(reg8_t,17) "unknown_136"
112 array(reg8_t,16) "unknown_128"
113 array(reg8_t,41) "unknown_328"
114 array(reg8_t,7) "unknown_56"
115 array(reg8_t,51) "unknown_408"
116 array(reg8_t,13) "unknown_104"
117 array(reg8_t,27) "unknown_216"
118 array(reg8_t,142) "unknown_1136"
119 array(reg8_t,53) "unknown_424"
120 array(reg8_t,55) "unknown_440"
121 array(reg8_t,23) "unknown_184"
122 array(reg8_t,180) "unknown_1440"
123 array(reg8_t,11) "unknown_88"
124 array(reg8_t,88) "unknown_704"
125 array(reg8_t,37) "unknown_296"
126 array(reg8_t,36) "unknown_288"
127 array(reg8_t,18) "unknown_144"
128 array(reg8_t,20) "unknown_160"
129 array(reg8_t,84) "unknown_672"
130 array(reg8_t,10) "unknown_80"
131 array(reg8_t,45) "unknown_360"
132 array(reg8_t,31) "unknown_248"
133 array(reg8_t,134) "unknown_1072"
134 array(reg8_t,56) "unknown_448"
135 array(reg8_t,50) "unknown_400"
136 array(reg8_t,15) "unknown_120"
137 array(reg8_t,25) "unknown_200"
138 array(reg8_t,19) "unknown_152"
139 array(reg8_t,9) "unknown_72"
140 array(reg8_t,70) "unknown_560"
141 array(reg8_t,42) "unknown_336"
142 array(reg8_t,95) "unknown_760"
143 array(reg8_t,62) "unknown_496"
144 array(reg8_t,76) "unknown_608"
145 array(reg8_t,59) "unknown_472"
146 array(reg8_t,34) "unknown_272"
147 array(reg8_t,64) "unknown_512"
148 array(reg8_t,22) "unknown_176"
149 array(reg8_t,12) "unknown_96"
150 array(reg8_t,6) "unknown_48"
151 array(reg8_t,49) "unknown_392"
152 array(reg8_t,43) "unknown_344"
153 array(reg8_t,14) "unknown_112"
154 array(reg8_t,57) "unknown_456"
155 array(reg8_t,106) "unknown_848"
156 array(reg8_t,40) "unknown_320"
157 array(reg8_t,74) "unknown_592"
158 array(reg8_t,28) "unknown_224"
159 array(reg8_t,109) "unknown_872"
160 array(reg8_t,54) "unknown_432"
161 array(reg8_t,130) "unknown_1040"
162 array(reg8_t,24) "unknown_192"
163 array(reg8_t,98) "unknown_784"
164 array(reg8_t,35) "unknown_280"
165 array(reg8_t,26) "unknown_208"
166 array(reg8_t,21) "unknown_168"
167 array(reg8_t,39) "unknown_312"
168 array(reg8_t,66) "unknown_528"
169 array(reg8_t,104) "unknown_832"
170 array(reg8_t,67) "unknown_536"
171 array(reg8_t,101) "unknown_808"
172 array(reg8_t,65) "unknown_520"
173 array(reg8_t,120) "unknown_960"
174 array(reg8_t,46) "unknown_368"
175 array(reg8_t,48) "unknown_384"
176 array(reg8_t,69) "unknown_552"
177 array(reg8_t,58) "unknown_464"
178 array(reg8_t,79) "unknown_632"
179 array(reg8_t,103) "unknown_824"
180 array(reg8_t,29) "unknown_232"
181 array(reg8_t,33) "unknown_264"
182 array(reg8_t,137) "unknown_1096"
183 array(reg8_t,78) "unknown_624"
184 array(reg8_t,38) "unknown_304"
185 array(reg8_t,213) "unknown_1704"
186 array(reg8_t,47) "unknown_376"
187 array(reg8_t,280) "unknown_2240"
188 array(reg8_t,114) "unknown_912"
189 array(reg8_t,75) "unknown_600"
190 array(reg8_t,77) "unknown_616"
191 array(reg8_t,284) "unknown_2272"
192 array(reg8_t,92) "unknown_736"
193 array(reg8_t,91) "unknown_728"
194 array(reg8_t,126) "unknown_1008"
195 array(reg8_t,89) "unknown_712"
196 array(reg8_t,52) "unknown_416"
197 array(reg8_t,61) "unknown_488"
198 array(reg8_t,190) "unknown_1520"
199 array(reg8_t,173) "unknown_1384"
200 array(reg8_t,149) "unknown_1192"
201 array(reg8_t,146) "unknown_1168"
202 array(reg8_t,151) "unknown_1208"
203 array(reg8_t,143) "unknown_1144"
204 array(reg8_t,80) "unknown_640"
205 array(reg8_t,94) "unknown_752"
206 array(reg8_t,140) "unknown_1120"
207 array(reg8_t,90) "unknown_720"
208 array(reg8_t,102) "unknown_816"
209 array(reg8_t,73) "unknown_584"
210 array(reg8_t,86) "unknown_688"
211 array(reg8_t,113) "unknown_904"
212 array(reg8_t,60) "unknown_480"
213 array(reg8_t,100) "unknown_800"
214 array(reg8_t,44) "unknown_352"
215 array(reg8_t,68) "unknown_544"
216 array(reg8_t,118) "unknown_944"
217 array(reg8_t,157) "unknown_1256"
218 array(reg8_t,107) "unknown_856"
219 array(reg8_t,87) "unknown_696"
220 array(reg8_t,123) "unknown_984"
221 array(reg8_t,121) "unknown_968"
222 array(reg8_t,147) "unknown_1176"
223 array(reg8_t,71) "unknown_568"
224 array(reg8_t,218) "unknown_1744"
225 array(reg8_t,119) "unknown_952"
226 array(reg8_t,99) "unknown_792"
227 array(reg8_t,117) "unknown_936"
228 array(reg8_t,116) "unknown_928"
229 array(reg8_t,82) "unknown_656"
230 array(reg8_t,72) "unknown_576"
231 array(reg8_t,129) "unknown_1032"
232 array(reg8_t,141) "unknown_1128"
233 array(reg8_t,111) "unknown_888"
234 array(num8_t,23) "char[23]"
235 array(num8_t,39) "char[39]"
236 array(num8_t,14) "char[14]"
237 array(num8_t,4) "char[4]"
238 array(num8_t,69) "char[69]"
239 array(num8_t,65) "char[65]"
240 struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t) "option"
241 array(reg8_t,192) "unknown_1536"
242 array(num8_t,31) "char[31]"
243 array(num8_t,79) "char[79]"
244 array(num8_t,618) "char[618]"
245 array(num8_t,45) "char[45]"
246 array(num8_t,54) "char[54]"
247 array(num8_t,15) "char[15]"
248 array(num8_t,3) "char[3]"
249 array(num8_t,90) "char[90]"
250 array(num8_t,10) "char[10]"
251 array(num8_t,8) "char[8]"
252 array(num8_t,9) "char[9]"
253 array(num8_t,16) "char[16]"
254 array(num8_t,2) "char[2]"
255 array(num8_t,25) "char[25]"
256 array(num8_t,12) "char[12]"
257 array(num8_t,7) "char[7]"
258 array(num8_t,24) "char[24]"
259 array(num8_t,33) "char[33]"
260 array(num8_t,56) "char[56]"
261 array(num8_t,6) "char[6]"
262 array(num8_t,11) "char[11]"
263 array(reg32_t,127) "dword[127]"
264 array(reg32_t,30) "dword[30]"
265 array(reg32_t,34) "dword[34]"
266 array(num8_t,203) "char[203]"
267 array(num8_t,28) "char[28]"
268 array(num8_t,32) "char[32]"
269 array(num8_t,36) "char[36]"
270 array(num8_t,40) "char[40]"
271 array(num8_t,44) "char[44]"
272 array(num8_t,48) "char[48]"
273 array(num8_t,52) "char[52]"
274 array(num8_t,60) "char[60]"
275 array(num8_t,21) "char[21]"
276 array(num8_t,22) "char[22]"
277 array(num8_t,20) "char[20]"
278 array(num8_t,64) "char[64]"
279 array(num8_t,47) "char[47]"
280 array(num8_t,17) "char[17]"
281 array(num8_t,81) "char[81]"
282 array(num8_t,13) "char[13]"
283 array(num8_t,18) "char[18]"
284 array(num8_t,19) "char[19]"
285 array(reg8_t,1476) "unknown_11808"
286 array(reg8_t,6160) "unknown_49280"
1 code_t "(void -?-> dword)*"
287 array(reg8_t,232) "unknown_1856"
288 array(reg8_t,256) "unknown_2048"
289 array(reg8_t,1028) "unknown_8224"
