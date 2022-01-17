declare void @print(i8* %fuckLLVM_0)
declare void @println(i8* %fuckLLVM_0)
declare void @printInt(i32 %fuckLLVM_0)
declare void @printlnInt(i32 %fuckLLVM_0)
declare i8* @getString()
declare i32 @getInt()
declare i8* @toString(i32 %fuckLLVM_0)
declare i32 @size(i8* %fuckLLVM_0)
declare i32 @length(i8* %fuckLLVM_0)
declare i8* @substring(i8* %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2)
declare i32 @parseInt(i8* %fuckLLVM_0)
declare i32 @ord(i8* %fuckLLVM_0, i32 %fuckLLVM_1)
declare i8* @string_add(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_equal(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_notEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_less(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_lessEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greater(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greaterEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i8* @malloc(i64 %fuckLLVM_0)
define void @__init() {
__init_entry: 
  br label %__init_return

__init_return: 
  ret void
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  %fuckLLVM_1 = alloca i32
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = alloca i32
  %fuckLLVM_4 = alloca i32**
  %fuckLLVM_5 = mul i64 3, 8
  %fuckLLVM_6 = add i64 %fuckLLVM_5, 4
  %fuckLLVM_7 = call i8* @malloc(i64 %fuckLLVM_6)
  %fuckLLVM_8 = bitcast i8* %fuckLLVM_7 to i32*
  store i32 3, i32* %fuckLLVM_8
  %fuckLLVM_9 = getelementptr inbounds i32, i32* %fuckLLVM_8, i32 1
  %fuckLLVM_10 = bitcast i32* %fuckLLVM_9 to i32**
  %fuckLLVM_11 = alloca i32
  store i32 0, i32* %fuckLLVM_11
  br label %ID11_for_condition

ID11_for_condition: 
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_13 = icmp slt i32 %fuckLLVM_12, 3
  br i1 %fuckLLVM_13, label %ID11_for_suite, label %ID11_for_out

ID11_for_suite: 
  %fuckLLVM_14 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_15 = getelementptr inbounds i32*, i32** %fuckLLVM_10, i32 %fuckLLVM_14
  %fuckLLVM_16 = mul i64 4, 4
  %fuckLLVM_17 = add i64 %fuckLLVM_16, 4
  %fuckLLVM_18 = call i8* @malloc(i64 %fuckLLVM_17)
  %fuckLLVM_19 = bitcast i8* %fuckLLVM_18 to i32*
  store i32 4, i32* %fuckLLVM_19
  %fuckLLVM_20 = getelementptr inbounds i32, i32* %fuckLLVM_19, i32 1
  %fuckLLVM_21 = bitcast i32* %fuckLLVM_20 to i32*
  store i32* %fuckLLVM_21, i32** %fuckLLVM_15
  br label %ID11_for_incr

ID11_for_incr: 
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_11
  %fuckLLVM_23 = add i32 %fuckLLVM_22, 1
  store i32 %fuckLLVM_23, i32* %fuckLLVM_11
  br label %ID11_for_condition

ID11_for_out: 
  %fuckLLVM_24 = bitcast i32** %fuckLLVM_10 to i32**
  store i32** %fuckLLVM_24, i32*** %fuckLLVM_4
  %fuckLLVM_25 = alloca i32**
  %fuckLLVM_26 = mul i64 4, 8
  %fuckLLVM_27 = add i64 %fuckLLVM_26, 4
  %fuckLLVM_28 = call i8* @malloc(i64 %fuckLLVM_27)
  %fuckLLVM_29 = bitcast i8* %fuckLLVM_28 to i32*
  store i32 4, i32* %fuckLLVM_29
  %fuckLLVM_30 = getelementptr inbounds i32, i32* %fuckLLVM_29, i32 1
  %fuckLLVM_31 = bitcast i32* %fuckLLVM_30 to i32**
  %fuckLLVM_32 = alloca i32
  store i32 0, i32* %fuckLLVM_32
  br label %ID32_for_condition

ID32_for_condition: 
  %fuckLLVM_33 = load i32, i32* %fuckLLVM_32
  %fuckLLVM_34 = icmp slt i32 %fuckLLVM_33, 4
  br i1 %fuckLLVM_34, label %ID32_for_suite, label %ID32_for_out

ID32_for_suite: 
  %fuckLLVM_35 = load i32, i32* %fuckLLVM_32
  %fuckLLVM_36 = getelementptr inbounds i32*, i32** %fuckLLVM_31, i32 %fuckLLVM_35
  %fuckLLVM_37 = mul i64 2, 4
  %fuckLLVM_38 = add i64 %fuckLLVM_37, 4
  %fuckLLVM_39 = call i8* @malloc(i64 %fuckLLVM_38)
  %fuckLLVM_40 = bitcast i8* %fuckLLVM_39 to i32*
  store i32 2, i32* %fuckLLVM_40
  %fuckLLVM_41 = getelementptr inbounds i32, i32* %fuckLLVM_40, i32 1
  %fuckLLVM_42 = bitcast i32* %fuckLLVM_41 to i32*
  store i32* %fuckLLVM_42, i32** %fuckLLVM_36
  br label %ID32_for_incr

ID32_for_incr: 
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_32
  %fuckLLVM_44 = add i32 %fuckLLVM_43, 1
  store i32 %fuckLLVM_44, i32* %fuckLLVM_32
  br label %ID32_for_condition

ID32_for_out: 
  %fuckLLVM_45 = bitcast i32** %fuckLLVM_31 to i32**
  store i32** %fuckLLVM_45, i32*** %fuckLLVM_25
  %fuckLLVM_46 = alloca i32**
  %fuckLLVM_47 = mul i64 3, 8
  %fuckLLVM_48 = add i64 %fuckLLVM_47, 4
  %fuckLLVM_49 = call i8* @malloc(i64 %fuckLLVM_48)
  %fuckLLVM_50 = bitcast i8* %fuckLLVM_49 to i32*
  store i32 3, i32* %fuckLLVM_50
  %fuckLLVM_51 = getelementptr inbounds i32, i32* %fuckLLVM_50, i32 1
  %fuckLLVM_52 = bitcast i32* %fuckLLVM_51 to i32**
  %fuckLLVM_53 = alloca i32
  store i32 0, i32* %fuckLLVM_53
  br label %ID53_for_condition

ID53_for_condition: 
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_53
  %fuckLLVM_55 = icmp slt i32 %fuckLLVM_54, 3
  br i1 %fuckLLVM_55, label %ID53_for_suite, label %ID53_for_out

ID53_for_suite: 
  %fuckLLVM_56 = load i32, i32* %fuckLLVM_53
  %fuckLLVM_57 = getelementptr inbounds i32*, i32** %fuckLLVM_52, i32 %fuckLLVM_56
  %fuckLLVM_58 = mul i64 2, 4
  %fuckLLVM_59 = add i64 %fuckLLVM_58, 4
  %fuckLLVM_60 = call i8* @malloc(i64 %fuckLLVM_59)
  %fuckLLVM_61 = bitcast i8* %fuckLLVM_60 to i32*
  store i32 2, i32* %fuckLLVM_61
  %fuckLLVM_62 = getelementptr inbounds i32, i32* %fuckLLVM_61, i32 1
  %fuckLLVM_63 = bitcast i32* %fuckLLVM_62 to i32*
  store i32* %fuckLLVM_63, i32** %fuckLLVM_57
  br label %ID53_for_incr

ID53_for_incr: 
  %fuckLLVM_64 = load i32, i32* %fuckLLVM_53
  %fuckLLVM_65 = add i32 %fuckLLVM_64, 1
  store i32 %fuckLLVM_65, i32* %fuckLLVM_53
  br label %ID53_for_condition

ID53_for_out: 
  %fuckLLVM_66 = bitcast i32** %fuckLLVM_52 to i32**
  store i32** %fuckLLVM_66, i32*** %fuckLLVM_46
  store i32 0, i32* %fuckLLVM_1
  br label %ID66_for_condition

ID66_for_condition: 
  %fuckLLVM_67 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_68 = icmp slt i32 %fuckLLVM_67, 3
  br i1 %fuckLLVM_68, label %ID66_for_suite, label %ID66_for_out

ID66_for_suite: 
  store i32 0, i32* %fuckLLVM_2
  br label %ID68_for_condition

ID68_for_condition: 
  %fuckLLVM_69 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_70 = icmp slt i32 %fuckLLVM_69, 4
  br i1 %fuckLLVM_70, label %ID68_for_suite, label %ID68_for_out

ID68_for_suite: 
  %fuckLLVM_71 = load i32**, i32*** %fuckLLVM_4
  %fuckLLVM_72 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_73 = getelementptr inbounds i32*, i32** %fuckLLVM_71, i32 %fuckLLVM_72
  %fuckLLVM_74 = load i32*, i32** %fuckLLVM_73
  %fuckLLVM_75 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_76 = getelementptr inbounds i32, i32* %fuckLLVM_74, i32 %fuckLLVM_75
  %fuckLLVM_77 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_78 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_79 = add i32 %fuckLLVM_77, %fuckLLVM_78
  store i32 %fuckLLVM_79, i32* %fuckLLVM_76
  br label %ID68_for_incr

ID68_for_incr: 
  %fuckLLVM_80 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_81 = add i32 %fuckLLVM_80, 1
  store i32 %fuckLLVM_81, i32* %fuckLLVM_2
  %fuckLLVM_82 = load i32, i32* %fuckLLVM_2
  br label %ID68_for_condition

ID68_for_out: 
  br label %ID66_for_incr

ID66_for_incr: 
  %fuckLLVM_83 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_84 = add i32 %fuckLLVM_83, 1
  store i32 %fuckLLVM_84, i32* %fuckLLVM_1
  %fuckLLVM_85 = load i32, i32* %fuckLLVM_1
  br label %ID66_for_condition

ID66_for_out: 
  store i32 0, i32* %fuckLLVM_1
  br label %ID85_for_condition

ID85_for_condition: 
  %fuckLLVM_86 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_87 = icmp slt i32 %fuckLLVM_86, 4
  br i1 %fuckLLVM_87, label %ID85_for_suite, label %ID85_for_out

ID85_for_suite: 
  store i32 0, i32* %fuckLLVM_2
  br label %ID87_for_condition

ID87_for_condition: 
  %fuckLLVM_88 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_89 = icmp slt i32 %fuckLLVM_88, 2
  br i1 %fuckLLVM_89, label %ID87_for_suite, label %ID87_for_out

ID87_for_suite: 
  %fuckLLVM_90 = load i32**, i32*** %fuckLLVM_25
  %fuckLLVM_91 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_92 = getelementptr inbounds i32*, i32** %fuckLLVM_90, i32 %fuckLLVM_91
  %fuckLLVM_93 = load i32*, i32** %fuckLLVM_92
  %fuckLLVM_94 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_95 = getelementptr inbounds i32, i32* %fuckLLVM_93, i32 %fuckLLVM_94
  %fuckLLVM_96 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_97 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_98 = mul i32 %fuckLLVM_96, %fuckLLVM_97
  store i32 %fuckLLVM_98, i32* %fuckLLVM_95
  br label %ID87_for_incr

ID87_for_incr: 
  %fuckLLVM_99 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_100 = add i32 %fuckLLVM_99, 1
  store i32 %fuckLLVM_100, i32* %fuckLLVM_2
  %fuckLLVM_101 = load i32, i32* %fuckLLVM_2
  br label %ID87_for_condition

ID87_for_out: 
  br label %ID85_for_incr

ID85_for_incr: 
  %fuckLLVM_102 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_103 = add i32 %fuckLLVM_102, 1
  store i32 %fuckLLVM_103, i32* %fuckLLVM_1
  %fuckLLVM_104 = load i32, i32* %fuckLLVM_1
  br label %ID85_for_condition

ID85_for_out: 
  store i32 0, i32* %fuckLLVM_1
  br label %ID104_for_condition

ID104_for_condition: 
  %fuckLLVM_105 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_106 = icmp slt i32 %fuckLLVM_105, 3
  br i1 %fuckLLVM_106, label %ID104_for_suite, label %ID104_for_out

ID104_for_suite: 
  store i32 0, i32* %fuckLLVM_2
  br label %ID106_for_condition

ID106_for_condition: 
  %fuckLLVM_107 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_108 = icmp slt i32 %fuckLLVM_107, 2
  br i1 %fuckLLVM_108, label %ID106_for_suite, label %ID106_for_out

ID106_for_suite: 
  %fuckLLVM_109 = load i32**, i32*** %fuckLLVM_46
  %fuckLLVM_110 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_111 = getelementptr inbounds i32*, i32** %fuckLLVM_109, i32 %fuckLLVM_110
  %fuckLLVM_112 = load i32*, i32** %fuckLLVM_111
  %fuckLLVM_113 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_114 = getelementptr inbounds i32, i32* %fuckLLVM_112, i32 %fuckLLVM_113
  store i32 0, i32* %fuckLLVM_114
  br label %ID106_for_incr

ID106_for_incr: 
  %fuckLLVM_115 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_116 = add i32 %fuckLLVM_115, 1
  store i32 %fuckLLVM_116, i32* %fuckLLVM_2
  %fuckLLVM_117 = load i32, i32* %fuckLLVM_2
  br label %ID106_for_condition

ID106_for_out: 
  br label %ID104_for_incr

ID104_for_incr: 
  %fuckLLVM_118 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_119 = add i32 %fuckLLVM_118, 1
  store i32 %fuckLLVM_119, i32* %fuckLLVM_1
  %fuckLLVM_120 = load i32, i32* %fuckLLVM_1
  br label %ID104_for_condition

ID104_for_out: 
  store i32 0, i32* %fuckLLVM_1
  br label %ID120_for_condition

ID120_for_condition: 
  %fuckLLVM_121 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_122 = icmp slt i32 %fuckLLVM_121, 3
  br i1 %fuckLLVM_122, label %ID120_for_suite, label %ID120_for_out

ID120_for_suite: 
  store i32 0, i32* %fuckLLVM_2
  br label %ID122_for_condition

ID122_for_condition: 
  %fuckLLVM_123 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_124 = icmp slt i32 %fuckLLVM_123, 2
  br i1 %fuckLLVM_124, label %ID122_for_suite, label %ID122_for_out

ID122_for_suite: 
  store i32 0, i32* %fuckLLVM_3
  br label %ID124_for_condition

ID124_for_condition: 
  %fuckLLVM_125 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_126 = icmp slt i32 %fuckLLVM_125, 4
  br i1 %fuckLLVM_126, label %ID124_for_suite, label %ID124_for_out

ID124_for_suite: 
  %fuckLLVM_127 = load i32**, i32*** %fuckLLVM_46
  %fuckLLVM_128 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_129 = getelementptr inbounds i32*, i32** %fuckLLVM_127, i32 %fuckLLVM_128
  %fuckLLVM_130 = load i32*, i32** %fuckLLVM_129
  %fuckLLVM_131 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_132 = getelementptr inbounds i32, i32* %fuckLLVM_130, i32 %fuckLLVM_131
  %fuckLLVM_133 = load i32**, i32*** %fuckLLVM_46
  %fuckLLVM_134 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_135 = getelementptr inbounds i32*, i32** %fuckLLVM_133, i32 %fuckLLVM_134
  %fuckLLVM_136 = load i32*, i32** %fuckLLVM_135
  %fuckLLVM_137 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_138 = getelementptr inbounds i32, i32* %fuckLLVM_136, i32 %fuckLLVM_137
  %fuckLLVM_139 = load i32, i32* %fuckLLVM_138
  %fuckLLVM_140 = load i32**, i32*** %fuckLLVM_4
  %fuckLLVM_141 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_142 = getelementptr inbounds i32*, i32** %fuckLLVM_140, i32 %fuckLLVM_141
  %fuckLLVM_143 = load i32*, i32** %fuckLLVM_142
  %fuckLLVM_144 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_145 = getelementptr inbounds i32, i32* %fuckLLVM_143, i32 %fuckLLVM_144
  %fuckLLVM_146 = load i32, i32* %fuckLLVM_145
  %fuckLLVM_147 = load i32**, i32*** %fuckLLVM_25
  %fuckLLVM_148 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_149 = getelementptr inbounds i32*, i32** %fuckLLVM_147, i32 %fuckLLVM_148
  %fuckLLVM_150 = load i32*, i32** %fuckLLVM_149
  %fuckLLVM_151 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_152 = getelementptr inbounds i32, i32* %fuckLLVM_150, i32 %fuckLLVM_151
  %fuckLLVM_153 = load i32, i32* %fuckLLVM_152
  %fuckLLVM_154 = mul i32 %fuckLLVM_146, %fuckLLVM_153
  %fuckLLVM_155 = add i32 %fuckLLVM_139, %fuckLLVM_154
  store i32 %fuckLLVM_155, i32* %fuckLLVM_132
  br label %ID124_for_incr

ID124_for_incr: 
  %fuckLLVM_156 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_157 = add i32 %fuckLLVM_156, 1
  store i32 %fuckLLVM_157, i32* %fuckLLVM_3
  %fuckLLVM_158 = load i32, i32* %fuckLLVM_3
  br label %ID124_for_condition

ID124_for_out: 
  br label %ID122_for_incr

ID122_for_incr: 
  %fuckLLVM_159 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_160 = add i32 %fuckLLVM_159, 1
  store i32 %fuckLLVM_160, i32* %fuckLLVM_2
  %fuckLLVM_161 = load i32, i32* %fuckLLVM_2
  br label %ID122_for_condition

ID122_for_out: 
  br label %ID120_for_incr

ID120_for_incr: 
  %fuckLLVM_162 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_163 = add i32 %fuckLLVM_162, 1
  store i32 %fuckLLVM_163, i32* %fuckLLVM_1
  %fuckLLVM_164 = load i32, i32* %fuckLLVM_1
  br label %ID120_for_condition

ID120_for_out: 
  %fuckLLVM_165 = alloca i32
  store i32 0, i32* %fuckLLVM_165
  store i32 0, i32* %fuckLLVM_1
  br label %ID165_for_condition

ID165_for_condition: 
  %fuckLLVM_166 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_167 = icmp slt i32 %fuckLLVM_166, 3
  br i1 %fuckLLVM_167, label %ID165_for_suite, label %ID165_for_out

ID165_for_suite: 
  store i32 0, i32* %fuckLLVM_2
  br label %ID167_for_condition

ID167_for_condition: 
  %fuckLLVM_168 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_169 = icmp slt i32 %fuckLLVM_168, 2
  br i1 %fuckLLVM_169, label %ID167_for_suite, label %ID167_for_out

ID167_for_suite: 
  %fuckLLVM_170 = load i32, i32* %fuckLLVM_165
  %fuckLLVM_171 = load i32**, i32*** %fuckLLVM_46
  %fuckLLVM_172 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_173 = getelementptr inbounds i32*, i32** %fuckLLVM_171, i32 %fuckLLVM_172
  %fuckLLVM_174 = load i32*, i32** %fuckLLVM_173
  %fuckLLVM_175 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_176 = getelementptr inbounds i32, i32* %fuckLLVM_174, i32 %fuckLLVM_175
  %fuckLLVM_177 = load i32, i32* %fuckLLVM_176
  %fuckLLVM_178 = add i32 %fuckLLVM_170, %fuckLLVM_177
  store i32 %fuckLLVM_178, i32* %fuckLLVM_165
  br label %ID167_for_incr

ID167_for_incr: 
  %fuckLLVM_179 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_180 = add i32 %fuckLLVM_179, 1
  store i32 %fuckLLVM_180, i32* %fuckLLVM_2
  %fuckLLVM_181 = load i32, i32* %fuckLLVM_2
  br label %ID167_for_condition

ID167_for_out: 
  br label %ID165_for_incr

ID165_for_incr: 
  %fuckLLVM_182 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_183 = add i32 %fuckLLVM_182, 1
  store i32 %fuckLLVM_183, i32* %fuckLLVM_1
  %fuckLLVM_184 = load i32, i32* %fuckLLVM_1
  br label %ID165_for_condition

ID165_for_out: 
  %fuckLLVM_185 = load i32, i32* %fuckLLVM_165
  %fuckLLVM_186 = call i8* @toString(i32 %fuckLLVM_185)
  %fuckLLVM_187 = bitcast i8* %fuckLLVM_186 to i8*
  call void @print(i8* %fuckLLVM_187)
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_189 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_189
}
