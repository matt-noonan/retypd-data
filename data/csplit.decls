0 reg32_t "dword"
1 code_t "proc*"
2 uint32_t "unsigned int"
3 num32_t "int"
4 num8_t "char"
2 uint32_t "size_t"
5 ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(struct(0:num32_t,4:ptr(reg8_t),8:ptr(reg8_t),12:ptr(reg8_t),16:ptr(reg8_t),20:ptr(reg8_t),24:ptr(reg8_t),28:ptr(reg8_t),32:ptr(reg8_t),36:ptr(reg8_t),40:ptr(reg8_t),44:ptr(reg8_t),48:ptr(TOP),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),8:num32_t)),52:ptr(struct(0:num32_t,4:ptr(num8_t),8:ptr(num8_t),12:ptr(num8_t),16:ptr(num8_t),20:ptr(num8_t),24:ptr(num8_t),28:ptr(num8_t),32:ptr(num8_t),36:ptr(num8_t),40:ptr(num8_t),44:ptr(num8_t),48:ptr(struct(0:ptr(TOP),4:ptr(TOP),8:num32_t)),52:ptr(TOP),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))),56:num32_t,60:num32_t,64:num32_t,68:uint16_t,70:int8_t,71:array(num8_t,1),72:ptr(TOP),76:num64_t,84:ptr(TOP),88:ptr(TOP),92:ptr(TOP),96:ptr(TOP),100:uint32_t,104:num32_t,108:array(num8_t,40))) "FILE*"
6 ptr(num8_t) "char*"
7 ptr(TOP) "void*"
8 ptr(struct(0:union(code_t,code_t),4:struct(0:array(uint32_t,32)),132:num32_t,136:code_t)) "sigaction*"
9 ptr(struct(0:array(uint32_t,32))) "sigset_t*"
1 code_t "(int -?-> void)*"
10 ptr(ptr(num8_t)) "char**"
11 union(ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP)))))) "Union_5"
12 ptr(array(reg8_t,16)) "unknown_128*"
13 ptr(array(reg8_t,56)) "unknown_448*"
14 ptr(array(reg8_t,167)) "unknown_1336*"
15 ptr(array(reg8_t,42)) "unknown_336*"
16 ptr(reg32_t) "dword*"
17 ptr(num32_t) "int*"
18 union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))) "Union_2"
19 ptr(struct(8:reg32_t,652:ptr(TOP))) "Struct_2*"
20 ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))) "StructFrag_27*"
21 ptr(struct(0:ptr(TOP))) "Singleton_0*"
6 ptr(num8_t) "char[]"
20 ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))) "StructFrag_26*"
22 ptr(ptr(struct(8:reg32_t,652:ptr(TOP)))) "Struct_2**"
23 ptr(struct(0:num32_t,4:ptr(ptr(num8_t)),4294967292:reg32_t)) "Struct_9*"
24 ptr(struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t)) "option*"
25 uint64_t "unsigned long long"
26 array(reg8_t,3) "unknown_24"
27 ptr(struct(0:num64_t,8:uint64_t,12:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),16:reg32_t,20:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),24:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),28:num8_t,29:num8_t,30:num8_t,32:reg32_t,36:reg32_t,48:ptr(num8_t),52:reg32_t)) "Struct_10*"
28 ptr(uint16_t) "unsigned short*"
1 code_t "(void -> void)*"
29 ptr(array(reg8_t,29)) "unknown_232*"
30 ptr(struct(0:reg32_t,40:ptr(TOP),44:ptr(num8_t))) "Struct_5*"
31 ptr(uint32_t) "size_t*"
32 union(uint32_t,uint32_t) "Union_8"
33 ptr(struct(0:reg32_t,4:ptr(TOP))) "Struct_0*"
34 union(ptr(num8_t),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))),ptr(struct(0:ptr(TOP)))) "Union_7"
35 ptr(struct(0:num32_t,4:reg32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_39*"
36 reg64_t "qword"
37 int32_t "signed int"
38 ptr(struct(0:array(reg8_t,64),64:ptr(TOP))) "StructFrag_24*"
39 ptr(struct(0:array(reg8_t,18),18:num8_t)) "StructFrag_9*"
40 ptr(struct(0:array(reg8_t,40),40:num8_t)) "StructFrag_32*"
41 ptr(struct(0:array(reg8_t,3),3:num8_t)) "StructFrag_29*"
31 ptr(uint32_t) "unsigned int*"
42 union(ptr(num8_t),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP)))))) "Union_6"
43 num64_t "long long"
17 ptr(num32_t) "int[]"
44 union(ptr(reg32_t),ptr(struct(0:array(reg8_t,3),3:num8_t,4:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),5:array(reg8_t,3)))) "Union_9"
3 num32_t "__ssize_t"
45 ptr(ptr(uint16_t)) "unsigned short**"
46 union(ptr(num8_t),ptr(struct(0:num64_t,8:uint64_t,12:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),16:reg32_t,20:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),24:union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t))),28:num8_t,29:num8_t,30:num8_t,32:reg32_t,36:reg32_t,48:ptr(num8_t),52:reg32_t))) "Union_3"
16 ptr(reg32_t) "dword[]"
47 struct(0:ptr(TOP)) "Singleton_0"
48 ptr(struct(8:reg32_t,12:reg32_t,24:reg32_t,32:ptr(struct(0:array(reg8_t,652),652:ptr(TOP))),40:ptr(TOP))) "Struct_27*"
49 ptr(struct(0:reg64_t,8:num8_t)) "StructFrag_3*"
50 ptr(ptr(TOP)) "void**"
51 ptr(struct(0:num32_t,4:uint32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_43*"
52 ptr(struct(0:num32_t,40:ptr(num8_t),44:ptr(num8_t))) "Struct_35*"
53 ptr(reg16_t) "word[]"
54 ptr(struct(0:array(reg8_t,24),24:num32_t)) "StructFrag_21*"
55 ptr(struct(0:array(reg8_t,98970),98970:reg32_t)) "StructFrag_13*"
56 ptr(struct(0:array(reg8_t,536870908),4294967292:reg32_t)) "StructFrag_14*"
57 ptr(struct(0:array(reg8_t,46300),46300:reg32_t)) "StructFrag_19*"
58 ptr(struct(0:array(reg8_t,648),648:reg32_t)) "StructFrag_20*"
59 ptr(struct(0:uint32_t,4:union(ptr(num8_t),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))),ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))),ptr(struct(0:ptr(TOP)))))) "Struct_40*"
60 ptr(struct(0:array(reg8_t,652),652:ptr(TOP))) "StructFrag_10*"
61 ptr(union(ptr(num8_t),uint32_t,ptr(struct(0:reg16_t,2:num8_t)))) "Union_2*"
62 ptr(array(reg8_t,128)) "unknown_1024*"
63 ptr(struct(12:uint32_t,16:ptr(struct(0:array(reg8_t,72),72:ptr(struct(0:reg32_t,4:reg32_t,652:ptr(TOP))))))) "Struct_37*"
64 ptr(struct(0:reg64_t,8:uint32_t)) "StructFrag_28*"
65 array(reg8_t,4096) "unknown_32768"
66 array(reg8_t,135168) "unknown_1081344"
67 array(reg8_t,30) "unknown_240"
68 array(reg8_t,5) "unknown_40"
69 array(reg8_t,21) "unknown_168"
70 array(reg8_t,16) "unknown_128"
71 array(reg8_t,167) "unknown_1336"
72 array(reg8_t,105) "unknown_840"
73 array(reg8_t,37) "unknown_296"
74 array(reg8_t,59) "unknown_472"
75 array(reg8_t,12) "unknown_96"
76 array(reg8_t,15) "unknown_120"
77 array(reg8_t,43) "unknown_344"
78 array(reg8_t,10) "unknown_80"
79 array(reg8_t,57) "unknown_456"
80 array(reg8_t,40) "unknown_320"
81 array(reg8_t,77) "unknown_616"
82 array(reg8_t,36) "unknown_288"
83 array(reg8_t,32) "unknown_256"
84 array(reg8_t,75) "unknown_600"
85 array(reg8_t,29) "unknown_232"
86 array(reg8_t,116) "unknown_928"
87 array(reg8_t,18) "unknown_144"
88 array(reg8_t,78) "unknown_624"
89 array(reg8_t,24) "unknown_192"
90 array(reg8_t,7) "unknown_56"
91 array(reg8_t,67) "unknown_536"
92 array(reg8_t,17) "unknown_136"
93 array(reg8_t,13) "unknown_104"
94 array(reg8_t,194) "unknown_1552"
95 array(reg8_t,9) "unknown_72"
96 array(reg8_t,93) "unknown_744"
97 array(reg8_t,82) "unknown_656"
98 array(reg8_t,19) "unknown_152"
99 array(reg8_t,48) "unknown_384"
100 array(reg8_t,60) "unknown_480"
101 array(reg8_t,14) "unknown_112"
102 array(reg8_t,34) "unknown_272"
103 array(reg8_t,41) "unknown_328"
104 array(reg8_t,38) "unknown_304"
105 array(reg8_t,45) "unknown_360"
106 array(reg8_t,47) "unknown_376"
107 array(reg8_t,42) "unknown_336"
108 array(reg8_t,70) "unknown_560"
109 array(reg8_t,25) "unknown_200"
110 array(reg8_t,11) "unknown_88"
111 array(reg8_t,99) "unknown_792"
112 array(reg8_t,23) "unknown_184"
113 array(reg8_t,22) "unknown_176"
114 array(reg8_t,35) "unknown_280"
115 array(reg8_t,20) "unknown_160"
116 array(reg8_t,50) "unknown_400"
117 array(reg8_t,26) "unknown_208"
118 array(reg8_t,61) "unknown_488"
119 array(reg8_t,58) "unknown_464"
120 array(reg8_t,52) "unknown_416"
121 array(reg8_t,6) "unknown_48"
122 array(reg8_t,76) "unknown_608"
123 array(reg8_t,54) "unknown_432"
124 array(reg8_t,33) "unknown_264"
125 array(reg8_t,51) "unknown_408"
126 array(reg8_t,69) "unknown_552"
127 array(reg8_t,27) "unknown_216"
128 array(reg8_t,53) "unknown_424"
129 array(reg8_t,80) "unknown_640"
130 array(reg8_t,128) "unknown_1024"
131 array(reg8_t,157) "unknown_1256"
132 array(reg8_t,152) "unknown_1216"
133 array(reg8_t,74) "unknown_592"
134 array(reg8_t,39) "unknown_312"
135 array(reg8_t,110) "unknown_880"
136 array(reg8_t,68) "unknown_544"
137 array(reg8_t,72) "unknown_576"
138 array(reg8_t,44) "unknown_352"
139 reg16_t "word"
140 array(reg8_t,49) "unknown_392"
141 array(reg8_t,158) "unknown_1264"
142 array(reg8_t,396) "unknown_3168"
143 array(reg8_t,66) "unknown_528"
144 array(reg8_t,81) "unknown_648"
145 array(reg8_t,64) "unknown_512"
146 array(reg8_t,109) "unknown_872"
147 array(reg8_t,31) "unknown_248"
148 array(reg8_t,96) "unknown_768"
149 array(reg8_t,112) "unknown_896"
150 array(reg8_t,62) "unknown_496"
151 array(reg8_t,28) "unknown_224"
152 array(reg8_t,90) "unknown_720"
153 array(reg8_t,87) "unknown_696"
154 array(reg8_t,162) "unknown_1296"
155 array(reg8_t,176) "unknown_1408"
156 array(reg8_t,160) "unknown_1280"
157 array(reg8_t,56) "unknown_448"
158 array(reg8_t,83) "unknown_664"
159 array(reg8_t,65) "unknown_520"
160 array(reg8_t,71) "unknown_568"
161 array(reg8_t,86) "unknown_688"
162 array(reg8_t,108) "unknown_864"
163 array(reg8_t,147) "unknown_1176"
164 array(reg8_t,111) "unknown_888"
165 array(num8_t,5) "char[5]"
166 array(num8_t,19) "char[19]"
167 array(num8_t,2) "char[2]"
168 array(num8_t,17) "char[17]"
169 array(num8_t,11) "char[11]"
170 array(num8_t,24) "char[24]"
171 array(num8_t,18) "char[18]"
172 array(num8_t,23) "char[23]"
173 array(num8_t,10) "char[10]"
174 array(num8_t,4) "char[4]"
175 array(num8_t,3) "char[3]"
176 array(num8_t,16) "char[16]"
177 array(num8_t,12) "char[12]"
178 array(num8_t,7) "char[7]"
179 array(num8_t,25) "char[25]"
180 array(num8_t,27) "char[27]"
181 array(num8_t,20) "char[20]"
182 array(num8_t,29) "char[29]"
183 array(num8_t,33) "char[33]"
184 array(num8_t,39) "char[39]"
185 array(num8_t,134) "char[134]"
186 array(num8_t,75) "char[75]"
187 array(num8_t,188) "char[188]"
188 array(num8_t,66) "char[66]"
189 array(num8_t,199) "char[199]"
190 array(num8_t,45) "char[45]"
191 array(num8_t,54) "char[54]"
192 array(num8_t,58) "char[58]"
193 array(num8_t,426) "char[426]"
194 array(num8_t,69) "char[69]"
195 array(num8_t,65) "char[65]"
196 array(num8_t,87) "char[87]"
197 array(num8_t,48) "char[48]"
198 array(num8_t,43) "char[43]"
199 array(num8_t,46) "char[46]"
200 array(num8_t,50) "char[50]"
201 array(num8_t,35) "char[35]"
202 array(num8_t,37) "char[37]"
203 array(num8_t,42) "char[42]"
204 array(num8_t,57) "char[57]"
205 array(num8_t,61) "char[61]"
206 array(num8_t,36) "char[36]"
207 struct(0:ptr(num8_t),4:num32_t,8:ptr(num32_t),12:num32_t) "option"
208 array(num8_t,56) "char[56]"
209 array(num8_t,8) "char[8]"
210 array(reg32_t,9) "dword[9]"
211 array(reg32_t,127) "dword[127]"
212 array(reg32_t,34) "dword[34]"
213 array(num8_t,28) "char[28]"
214 array(num8_t,21) "char[21]"
215 array(num8_t,22) "char[22]"
216 array(num8_t,203) "char[203]"
217 array(num8_t,32) "char[32]"
218 array(num8_t,40) "char[40]"
219 array(num8_t,44) "char[44]"
220 array(num8_t,52) "char[52]"
221 array(num8_t,60) "char[60]"
222 array(num8_t,64) "char[64]"
223 array(ptr(TOP),10) "void*[10]"
224 array(num8_t,47) "char[47]"
225 array(num8_t,14) "char[14]"
226 array(num8_t,38) "char[38]"
227 array(ptr(TOP),54) "void*[54]"
228 array(num8_t,9) "char[9]"
229 array(num8_t,6) "char[6]"
230 array(num8_t,78) "char[78]"
231 array(reg8_t,820) "unknown_6560"
232 array(reg8_t,8204) "unknown_65632"
233 array(reg8_t,7680) "unknown_61440"
1 code_t "(void -?-> dword)*"
234 array(reg8_t,232) "unknown_1856"
235 ptr(struct(0:reg16_t,2:num8_t)) "StructFrag_0*"
236 ptr(struct(0:array(reg8_t,64),64:ptr(struct(0:array(reg8_t,652),652:reg32_t)))) "StructFrag_4*"
237 union(ptr(num8_t),ptr(struct(0:reg64_t,8:num8_t))) "Union_0"
236 ptr(struct(0:array(reg8_t,64),64:ptr(struct(0:array(reg8_t,652),652:reg32_t)))) "StructFrag_6*"
238 array(reg8_t,256) "unknown_2048"
