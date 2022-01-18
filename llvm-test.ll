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
  %fuckLLVM_0 = mul i64 4, 4
  %fuckLLVM_1 = add i64 %fuckLLVM_0, 4
  %fuckLLVM_2 = call i8* @malloc(i64 %fuckLLVM_1)
  %fuckLLVM_3 = bitcast i8* %fuckLLVM_2 to i32*
  store i32 4, i32* %fuckLLVM_3
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 1
  %fuckLLVM_5 = bitcast i32* %fuckLLVM_4 to i32*
  %fuckLLVM_6 = bitcast i32* %fuckLLVM_5 to i32*
  store i32* %fuckLLVM_6, i32** @fuckLLVM_a
  br label %__init_return

__init_return: 
  ret void
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  store i32 0, i32* %fuckLLVM_0
  %fuckLLVM_1 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_2 = bitcast i32* %fuckLLVM_1 to i32*
  %fuckLLVM_3 = getelementptr inbounds i32, i32* %fuckLLVM_2, i8 -1
  %fuckLLVM_4 = load i32, i32* %fuckLLVM_3
  call void @printlnInt(i32 %fuckLLVM_4)
  %fuckLLVM_6 = alloca i32*
  %fuckLLVM_7 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_8 = bitcast i32* %fuckLLVM_7 to i32*
  %fuckLLVM_9 = getelementptr inbounds i32, i32* %fuckLLVM_8, i8 -1
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_9
  %fuckLLVM_11 = zext i32 %fuckLLVM_10 to i64
  %fuckLLVM_12 = mul i64 %fuckLLVM_11, 4
  %fuckLLVM_13 = add i64 %fuckLLVM_12, 4
  %fuckLLVM_14 = call i8* @malloc(i64 %fuckLLVM_13)
  %fuckLLVM_15 = bitcast i8* %fuckLLVM_14 to i32*
  store i32 %fuckLLVM_10, i32* %fuckLLVM_15
  %fuckLLVM_16 = getelementptr inbounds i32, i32* %fuckLLVM_15, i32 1
  %fuckLLVM_17 = bitcast i32* %fuckLLVM_16 to i32*
  %fuckLLVM_18 = bitcast i32* %fuckLLVM_17 to i32*
  store i32* %fuckLLVM_18, i32** %fuckLLVM_6
  %fuckLLVM_19 = load i32*, i32** %fuckLLVM_6
  %fuckLLVM_20 = bitcast i32* %fuckLLVM_19 to i32*
  %fuckLLVM_21 = getelementptr inbounds i32, i32* %fuckLLVM_20, i8 -1
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_21
  call void @printlnInt(i32 %fuckLLVM_22)
  %fuckLLVM_24 = alloca i32
  store i32 0, i32* %fuckLLVM_24
  br label %ID24_for_condition

ID24_for_condition: 
  %fuckLLVM_25 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_26 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_27 = bitcast i32* %fuckLLVM_26 to i32*
  %fuckLLVM_28 = getelementptr inbounds i32, i32* %fuckLLVM_27, i8 -1
  %fuckLLVM_29 = load i32, i32* %fuckLLVM_28
  %fuckLLVM_30 = icmp slt i32 %fuckLLVM_25, %fuckLLVM_29
  br i1 %fuckLLVM_30, label %ID24_for_suite, label %ID24_for_out

ID24_for_suite: 
  %fuckLLVM_31 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_33 = getelementptr inbounds i32, i32* %fuckLLVM_31, i32 %fuckLLVM_32
  store i32 0, i32* %fuckLLVM_33
  %fuckLLVM_34 = load i32*, i32** %fuckLLVM_6
  %fuckLLVM_35 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_36 = getelementptr inbounds i32, i32* %fuckLLVM_34, i32 %fuckLLVM_35
  %fuckLLVM_37 = call i32 @getInt()
  store i32 %fuckLLVM_37, i32* %fuckLLVM_36
  %fuckLLVM_38 = load i32*, i32** %fuckLLVM_6
  %fuckLLVM_39 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_40 = getelementptr inbounds i32, i32* %fuckLLVM_38, i32 %fuckLLVM_39
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_40
  call void @printlnInt(i32 %fuckLLVM_41)
  br label %ID24_for_incr

ID24_for_incr: 
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_44 = add i32 %fuckLLVM_43, 1
  store i32 %fuckLLVM_44, i32* %fuckLLVM_24
  br label %ID24_for_condition

ID24_for_out: 
  store i32 0, i32* %fuckLLVM_24
  br label %ID44_for_condition

ID44_for_condition: 
  %fuckLLVM_45 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_46 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_47 = bitcast i32* %fuckLLVM_46 to i32*
  %fuckLLVM_48 = getelementptr inbounds i32, i32* %fuckLLVM_47, i8 -1
  %fuckLLVM_49 = load i32, i32* %fuckLLVM_48
  %fuckLLVM_50 = icmp slt i32 %fuckLLVM_45, %fuckLLVM_49
  br i1 %fuckLLVM_50, label %ID44_for_suite, label %ID44_for_out

ID44_for_suite: 
  %fuckLLVM_51 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_53 = getelementptr inbounds i32, i32* %fuckLLVM_51, i32 %fuckLLVM_52
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_53
  %fuckLLVM_55 = call i8* @toString(i32 %fuckLLVM_54)
  %fuckLLVM_56 = bitcast i8* %fuckLLVM_55 to i8*
  call void @print(i8* %fuckLLVM_56)
  br label %ID44_for_incr

ID44_for_incr: 
  %fuckLLVM_58 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_59 = add i32 %fuckLLVM_58, 1
  store i32 %fuckLLVM_59, i32* %fuckLLVM_24
  br label %ID44_for_condition

ID44_for_out: 
  %fuckLLVM_60 = bitcast [1 x i8]* @fuckLLVM_.str.0 to i8*
  call void @println(i8* %fuckLLVM_60)
  %fuckLLVM_62 = load i32*, i32** %fuckLLVM_6
  %fuckLLVM_63 = bitcast i32* %fuckLLVM_62 to i32*
  store i32* %fuckLLVM_63, i32** @fuckLLVM_a
  store i32 0, i32* %fuckLLVM_24
  br label %ID63_for_condition

ID63_for_condition: 
  %fuckLLVM_64 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_65 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_66 = bitcast i32* %fuckLLVM_65 to i32*
  %fuckLLVM_67 = getelementptr inbounds i32, i32* %fuckLLVM_66, i8 -1
  %fuckLLVM_68 = load i32, i32* %fuckLLVM_67
  %fuckLLVM_69 = icmp slt i32 %fuckLLVM_64, %fuckLLVM_68
  br i1 %fuckLLVM_69, label %ID63_for_suite, label %ID63_for_out

ID63_for_suite: 
  %fuckLLVM_70 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_71 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_72 = getelementptr inbounds i32, i32* %fuckLLVM_70, i32 %fuckLLVM_71
  %fuckLLVM_73 = load i32, i32* %fuckLLVM_72
  %fuckLLVM_74 = call i8* @toString(i32 %fuckLLVM_73)
  %fuckLLVM_75 = bitcast i8* %fuckLLVM_74 to i8*
  call void @print(i8* %fuckLLVM_75)
  br label %ID63_for_incr

ID63_for_incr: 
  %fuckLLVM_77 = load i32, i32* %fuckLLVM_24
  %fuckLLVM_78 = add i32 %fuckLLVM_77, 1
  store i32 %fuckLLVM_78, i32* %fuckLLVM_24
  br label %ID63_for_condition

ID63_for_out: 
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_79 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_79
}
