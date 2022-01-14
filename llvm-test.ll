@fuckLLVM_a = global i32* null
@fuckLLVM_.str.0 = private constant [1 x i8] c"\00"

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
declare i8 @ord(i8* %fuckLLVM_0, i32 %fuckLLVM_1)
declare i8* @string_add(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_equal(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_notEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_less(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_lessEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greater(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greaterEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i8* @malloc(i64 %fuckLLVM_0)
define i32 @main() {
main_entry: 
  %fuckLLVM_0 = mul i64 4, 4
  %fuckLLVM_1 = add i64 %fuckLLVM_0, 4
  %fuckLLVM_2 = call i8* @malloc(i64 %fuckLLVM_1)
  %fuckLLVM_3 = bitcast i8* %fuckLLVM_2 to i32*
  store i32 4, i32* %fuckLLVM_3
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 1
  %fuckLLVM_5 = bitcast i32* %fuckLLVM_4 to i32*
  %fuckLLVM_6 = bitcast i32* %fuckLLVM_5 to i32*
  store i32* %fuckLLVM_6, i32** @fuckLLVM_a
  %fuckLLVM_7 = alloca i32
  %fuckLLVM_8 = alloca i32**
  %fuckLLVM_9 = mul i64 4, 8
  %fuckLLVM_10 = add i64 %fuckLLVM_9, 4
  %fuckLLVM_11 = call i8* @malloc(i64 %fuckLLVM_10)
  %fuckLLVM_12 = bitcast i8* %fuckLLVM_11 to i32*
  store i32 4, i32* %fuckLLVM_12
  %fuckLLVM_13 = getelementptr inbounds i32, i32* %fuckLLVM_12, i32 1
  %fuckLLVM_14 = bitcast i32* %fuckLLVM_13 to i32**
  %fuckLLVM_15 = bitcast i32** %fuckLLVM_14 to i32**
  store i32** %fuckLLVM_15, i32*** %fuckLLVM_8
  %fuckLLVM_16 = alloca i32
  %fuckLLVM_17 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_18 = getelementptr inbounds i32*, i32** %fuckLLVM_17, i32 0
  %fuckLLVM_19 = load i32*, i32** @fuckLLVM_a
  store i32* %fuckLLVM_19, i32** %fuckLLVM_18
  %fuckLLVM_20 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_21 = getelementptr inbounds i32*, i32** %fuckLLVM_20, i32 1
  %fuckLLVM_22 = load i32*, i32** @fuckLLVM_a
  store i32* %fuckLLVM_22, i32** %fuckLLVM_21
  %fuckLLVM_23 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_24 = getelementptr inbounds i32*, i32** %fuckLLVM_23, i32 2
  %fuckLLVM_25 = load i32*, i32** @fuckLLVM_a
  store i32* %fuckLLVM_25, i32** %fuckLLVM_24
  %fuckLLVM_26 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_27 = getelementptr inbounds i32*, i32** %fuckLLVM_26, i32 3
  %fuckLLVM_28 = load i32*, i32** @fuckLLVM_a
  store i32* %fuckLLVM_28, i32** %fuckLLVM_27
  %fuckLLVM_29 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_30 = bitcast i32** %fuckLLVM_29 to i32*
  %fuckLLVM_31 = getelementptr inbounds i32, i32* %fuckLLVM_30, i8 -1
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_31
  %fuckLLVM_33 = call i8* @toString(i32 %fuckLLVM_32)
  %fuckLLVM_34 = bitcast i8* %fuckLLVM_33 to i8*
  call void @println(i8* %fuckLLVM_34)
  store i32 0, i32* %fuckLLVM_16
  br label %ID35_for_condition

ID35_for_condition: 
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_37 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_38 = getelementptr inbounds i32*, i32** %fuckLLVM_37, i32 0
  %fuckLLVM_39 = load i32*, i32** %fuckLLVM_38
  %fuckLLVM_40 = bitcast i32* %fuckLLVM_39 to i32*
  %fuckLLVM_41 = getelementptr inbounds i32, i32* %fuckLLVM_40, i8 -1
  %fuckLLVM_42 = load i32, i32* %fuckLLVM_41
  %fuckLLVM_43 = icmp slt i32 %fuckLLVM_36, %fuckLLVM_42
  br i1 %fuckLLVM_43, label %ID35_for_suite, label %ID35_for_out

ID35_for_suite: 
  %fuckLLVM_44 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_45 = getelementptr inbounds i32*, i32** %fuckLLVM_44, i32 0
  %fuckLLVM_46 = load i32*, i32** %fuckLLVM_45
  %fuckLLVM_47 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_48 = getelementptr inbounds i32, i32* %fuckLLVM_46, i32 %fuckLLVM_47
  %fuckLLVM_49 = call i32 @getInt()
  store i32 %fuckLLVM_49, i32* %fuckLLVM_48
  br label %ID35_for_incr

ID35_for_incr: 
  %fuckLLVM_50 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_51 = add i32 %fuckLLVM_50, 1
  store i32 %fuckLLVM_51, i32* %fuckLLVM_16
  br label %ID35_for_condition

ID35_for_out: 
  store i32 0, i32* %fuckLLVM_16
  br label %ID51_for_condition

ID51_for_condition: 
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_53 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_54 = getelementptr inbounds i32*, i32** %fuckLLVM_53, i32 1
  %fuckLLVM_55 = load i32*, i32** %fuckLLVM_54
  %fuckLLVM_56 = bitcast i32* %fuckLLVM_55 to i32*
  %fuckLLVM_57 = getelementptr inbounds i32, i32* %fuckLLVM_56, i8 -1
  %fuckLLVM_58 = load i32, i32* %fuckLLVM_57
  %fuckLLVM_59 = icmp slt i32 %fuckLLVM_52, %fuckLLVM_58
  br i1 %fuckLLVM_59, label %ID51_for_suite, label %ID51_for_out

ID51_for_suite: 
  %fuckLLVM_60 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_61 = getelementptr inbounds i32*, i32** %fuckLLVM_60, i32 1
  %fuckLLVM_62 = load i32*, i32** %fuckLLVM_61
  %fuckLLVM_63 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_64 = getelementptr inbounds i32, i32* %fuckLLVM_62, i32 %fuckLLVM_63
  %fuckLLVM_65 = load i32, i32* %fuckLLVM_64
  %fuckLLVM_66 = call i8* @toString(i32 %fuckLLVM_65)
  %fuckLLVM_67 = bitcast i8* %fuckLLVM_66 to i8*
  call void @print(i8* %fuckLLVM_67)
  br label %ID51_for_incr

ID51_for_incr: 
  %fuckLLVM_69 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_70 = add i32 %fuckLLVM_69, 1
  store i32 %fuckLLVM_70, i32* %fuckLLVM_16
  br label %ID51_for_condition

ID51_for_out: 
  %fuckLLVM_71 = bitcast [1 x i8]* @fuckLLVM_.str.0 to i8*
  call void @println(i8* %fuckLLVM_71)
  store i32 0, i32* %fuckLLVM_16
  br label %ID72_for_condition

ID72_for_condition: 
  %fuckLLVM_73 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_74 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_75 = getelementptr inbounds i32*, i32** %fuckLLVM_74, i32 2
  %fuckLLVM_76 = load i32*, i32** %fuckLLVM_75
  %fuckLLVM_77 = bitcast i32* %fuckLLVM_76 to i32*
  %fuckLLVM_78 = getelementptr inbounds i32, i32* %fuckLLVM_77, i8 -1
  %fuckLLVM_79 = load i32, i32* %fuckLLVM_78
  %fuckLLVM_80 = icmp slt i32 %fuckLLVM_73, %fuckLLVM_79
  br i1 %fuckLLVM_80, label %ID72_for_suite, label %ID72_for_out

ID72_for_suite: 
  %fuckLLVM_81 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_82 = getelementptr inbounds i32*, i32** %fuckLLVM_81, i32 2
  %fuckLLVM_83 = load i32*, i32** %fuckLLVM_82
  %fuckLLVM_84 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_85 = getelementptr inbounds i32, i32* %fuckLLVM_83, i32 %fuckLLVM_84
  store i32 0, i32* %fuckLLVM_85
  br label %ID72_for_incr

ID72_for_incr: 
  %fuckLLVM_86 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_87 = add i32 %fuckLLVM_86, 1
  store i32 %fuckLLVM_87, i32* %fuckLLVM_16
  br label %ID72_for_condition

ID72_for_out: 
  store i32 0, i32* %fuckLLVM_16
  br label %ID87_for_condition

ID87_for_condition: 
  %fuckLLVM_88 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_89 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_90 = getelementptr inbounds i32*, i32** %fuckLLVM_89, i32 3
  %fuckLLVM_91 = load i32*, i32** %fuckLLVM_90
  %fuckLLVM_92 = bitcast i32* %fuckLLVM_91 to i32*
  %fuckLLVM_93 = getelementptr inbounds i32, i32* %fuckLLVM_92, i8 -1
  %fuckLLVM_94 = load i32, i32* %fuckLLVM_93
  %fuckLLVM_95 = icmp slt i32 %fuckLLVM_88, %fuckLLVM_94
  br i1 %fuckLLVM_95, label %ID87_for_suite, label %ID87_for_out

ID87_for_suite: 
  %fuckLLVM_96 = load i32**, i32*** %fuckLLVM_8
  %fuckLLVM_97 = getelementptr inbounds i32*, i32** %fuckLLVM_96, i32 3
  %fuckLLVM_98 = load i32*, i32** %fuckLLVM_97
  %fuckLLVM_99 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_100 = getelementptr inbounds i32, i32* %fuckLLVM_98, i32 %fuckLLVM_99
  %fuckLLVM_101 = load i32, i32* %fuckLLVM_100
  %fuckLLVM_102 = call i8* @toString(i32 %fuckLLVM_101)
  %fuckLLVM_103 = bitcast i8* %fuckLLVM_102 to i8*
  call void @print(i8* %fuckLLVM_103)
  br label %ID87_for_incr

ID87_for_incr: 
  %fuckLLVM_105 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_106 = add i32 %fuckLLVM_105, 1
  store i32 %fuckLLVM_106, i32* %fuckLLVM_16
  br label %ID87_for_condition

ID87_for_out: 
  store i32 0, i32* %fuckLLVM_7
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_107 = load i32, i32* %fuckLLVM_7
  ret i32 %fuckLLVM_107
}
