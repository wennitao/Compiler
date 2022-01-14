@fuckLLVM_N = global i32 0
@fuckLLVM_M = global i32 0
@fuckLLVM_i = global i32 0
@fuckLLVM_j = global i32 0
@fuckLLVM_primeCount = global i32 0
@fuckLLVM_resultCount = global i32 0
@fuckLLVM_b = global i32* null
@fuckLLVM_prime = global i32* null
@fuckLLVM_gps = global i32* null
@fuckLLVM_tmp = global i32* null
@fuckLLVM_result = global i32** null
@fuckLLVM_.str.0 = private constant [2 x i8] c" \00"
@fuckLLVM_.str.1 = private constant [2 x i8] c"\0A\00"
@fuckLLVM_.str.2 = private constant [8 x i8] c"Total: \00"

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
  %fuckLLVM_0 = mul i64 1001, 4
  %fuckLLVM_1 = add i64 %fuckLLVM_0, 4
  %fuckLLVM_2 = call i8* @malloc(i64 %fuckLLVM_1)
  %fuckLLVM_3 = bitcast i8* %fuckLLVM_2 to i32*
  store i32 1001, i32* %fuckLLVM_3
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 1
  %fuckLLVM_5 = bitcast i32* %fuckLLVM_4 to i32*
  %fuckLLVM_6 = bitcast i32* %fuckLLVM_5 to i32*
  store i32* %fuckLLVM_6, i32** @fuckLLVM_b
  %fuckLLVM_7 = mul i64 170, 4
  %fuckLLVM_8 = add i64 %fuckLLVM_7, 4
  %fuckLLVM_9 = call i8* @malloc(i64 %fuckLLVM_8)
  %fuckLLVM_10 = bitcast i8* %fuckLLVM_9 to i32*
  store i32 170, i32* %fuckLLVM_10
  %fuckLLVM_11 = getelementptr inbounds i32, i32* %fuckLLVM_10, i32 1
  %fuckLLVM_12 = bitcast i32* %fuckLLVM_11 to i32*
  %fuckLLVM_13 = bitcast i32* %fuckLLVM_12 to i32*
  store i32* %fuckLLVM_13, i32** @fuckLLVM_prime
  %fuckLLVM_14 = mul i64 1001, 4
  %fuckLLVM_15 = add i64 %fuckLLVM_14, 4
  %fuckLLVM_16 = call i8* @malloc(i64 %fuckLLVM_15)
  %fuckLLVM_17 = bitcast i8* %fuckLLVM_16 to i32*
  store i32 1001, i32* %fuckLLVM_17
  %fuckLLVM_18 = getelementptr inbounds i32, i32* %fuckLLVM_17, i32 1
  %fuckLLVM_19 = bitcast i32* %fuckLLVM_18 to i32*
  %fuckLLVM_20 = bitcast i32* %fuckLLVM_19 to i32*
  store i32* %fuckLLVM_20, i32** @fuckLLVM_gps
  %fuckLLVM_21 = mul i64 1, 4
  %fuckLLVM_22 = add i64 %fuckLLVM_21, 4
  %fuckLLVM_23 = call i8* @malloc(i64 %fuckLLVM_22)
  %fuckLLVM_24 = bitcast i8* %fuckLLVM_23 to i32*
  store i32 1, i32* %fuckLLVM_24
  %fuckLLVM_25 = getelementptr inbounds i32, i32* %fuckLLVM_24, i32 1
  %fuckLLVM_26 = bitcast i32* %fuckLLVM_25 to i32*
  %fuckLLVM_27 = bitcast i32* %fuckLLVM_26 to i32*
  store i32* %fuckLLVM_27, i32** @fuckLLVM_tmp
  br label %__init_return

__init_return: 
  ret void
}
define void @origin(i32 %fuckLLVM_0) {
origin_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  %fuckLLVM_3 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_4 = zext i32 %fuckLLVM_3 to i64
  %fuckLLVM_5 = mul i64 %fuckLLVM_4, 8
  %fuckLLVM_6 = add i64 %fuckLLVM_5, 4
  %fuckLLVM_7 = call i8* @malloc(i64 %fuckLLVM_6)
  %fuckLLVM_8 = bitcast i8* %fuckLLVM_7 to i32*
  store i32 %fuckLLVM_3, i32* %fuckLLVM_8
  %fuckLLVM_9 = getelementptr inbounds i32, i32* %fuckLLVM_8, i32 1
  %fuckLLVM_10 = bitcast i32* %fuckLLVM_9 to i32**
  store i32** %fuckLLVM_10, i32*** @fuckLLVM_result
  store i32 0, i32* @fuckLLVM_i
  br label %ID10_for_condition

ID10_for_condition: 
  %fuckLLVM_11 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_13 = icmp slt i32 %fuckLLVM_11, %fuckLLVM_12
  br i1 %fuckLLVM_13, label %ID10_for_suite, label %ID10_for_out

ID10_for_suite: 
  %fuckLLVM_14 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_15 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_16 = getelementptr inbounds i32*, i32** %fuckLLVM_14, i32 %fuckLLVM_15
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_18 = zext i32 %fuckLLVM_17 to i64
  %fuckLLVM_19 = mul i64 %fuckLLVM_18, 4
  %fuckLLVM_20 = add i64 %fuckLLVM_19, 4
  %fuckLLVM_21 = call i8* @malloc(i64 %fuckLLVM_20)
  %fuckLLVM_22 = bitcast i8* %fuckLLVM_21 to i32*
  store i32 %fuckLLVM_17, i32* %fuckLLVM_22
  %fuckLLVM_23 = getelementptr inbounds i32, i32* %fuckLLVM_22, i32 1
  %fuckLLVM_24 = bitcast i32* %fuckLLVM_23 to i32*
  store i32* %fuckLLVM_24, i32** %fuckLLVM_16
  store i32 0, i32* @fuckLLVM_j
  br label %ID24_for_condition

ID24_for_condition: 
  %fuckLLVM_25 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_26 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_27 = icmp slt i32 %fuckLLVM_25, %fuckLLVM_26
  br i1 %fuckLLVM_27, label %ID24_for_suite, label %ID24_for_out

ID24_for_suite: 
  %fuckLLVM_28 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_29 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_30 = getelementptr inbounds i32*, i32** %fuckLLVM_28, i32 %fuckLLVM_29
  %fuckLLVM_31 = load i32*, i32** %fuckLLVM_30
  %fuckLLVM_32 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_33 = getelementptr inbounds i32, i32* %fuckLLVM_31, i32 %fuckLLVM_32
  store i32 0, i32* %fuckLLVM_33
  br label %ID24_for_incr

ID24_for_incr: 
  %fuckLLVM_34 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_35 = add i32 %fuckLLVM_34, 1
  store i32 %fuckLLVM_35, i32* @fuckLLVM_j
  br label %ID24_for_condition

ID24_for_out: 
  br label %ID10_for_incr

ID10_for_incr: 
  %fuckLLVM_36 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_37 = add i32 %fuckLLVM_36, 1
  store i32 %fuckLLVM_37, i32* @fuckLLVM_i
  br label %ID10_for_condition

ID10_for_out: 
  br label %origin_return

origin_return: 
  ret void
}
define void @getPrime(i32 %fuckLLVM_0) {
getPrime_entry: 
  %fuckLLVM_1 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_1
  %fuckLLVM_3 = alloca i32
  %fuckLLVM_4 = alloca i32
  store i32 2, i32* %fuckLLVM_3
  store i32 2, i32* %fuckLLVM_4
  br label %ID4_for_condition

ID4_for_condition: 
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_7 = icmp sle i32 %fuckLLVM_5, %fuckLLVM_6
  br i1 %fuckLLVM_7, label %ID4_for_suite, label %ID4_for_out

ID4_for_suite: 
  %fuckLLVM_8 = load i32*, i32** @fuckLLVM_b
  %fuckLLVM_9 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_10 = getelementptr inbounds i32, i32* %fuckLLVM_8, i32 %fuckLLVM_9
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_10
  %fuckLLVM_12 = icmp eq i32 %fuckLLVM_11, 1
  br i1 %fuckLLVM_12, label %ID12_if_true, label %ID12_if_out

ID12_if_true: 
  %fuckLLVM_13 = load i32*, i32** @fuckLLVM_tmp
  %fuckLLVM_14 = getelementptr inbounds i32, i32* %fuckLLVM_13, i32 0
  %fuckLLVM_15 = load i32*, i32** @fuckLLVM_tmp
  %fuckLLVM_16 = getelementptr inbounds i32, i32* %fuckLLVM_15, i32 0
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_16
  %fuckLLVM_18 = add i32 %fuckLLVM_17, 1
  store i32 %fuckLLVM_18, i32* %fuckLLVM_14
  %fuckLLVM_19 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_20 = load i32*, i32** @fuckLLVM_tmp
  %fuckLLVM_21 = getelementptr inbounds i32, i32* %fuckLLVM_20, i32 0
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_21
  %fuckLLVM_23 = getelementptr inbounds i32, i32* %fuckLLVM_19, i32 %fuckLLVM_22
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_4
  store i32 %fuckLLVM_24, i32* %fuckLLVM_23
  %fuckLLVM_25 = load i32*, i32** @fuckLLVM_gps
  %fuckLLVM_26 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_27 = getelementptr inbounds i32, i32* %fuckLLVM_25, i32 %fuckLLVM_26
  %fuckLLVM_28 = load i32*, i32** @fuckLLVM_tmp
  %fuckLLVM_29 = getelementptr inbounds i32, i32* %fuckLLVM_28, i32 0
  %fuckLLVM_30 = load i32, i32* %fuckLLVM_29
  store i32 %fuckLLVM_30, i32* %fuckLLVM_27
  br label %ID12_if_out

ID12_if_out: 
  br label %ID31_while_condition

ID31_while_condition: 
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_33 = mul i32 %fuckLLVM_31, %fuckLLVM_32
  %fuckLLVM_34 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_35 = icmp sle i32 %fuckLLVM_33, %fuckLLVM_34
  br i1 %fuckLLVM_35, label %ID36_while_suite, label %ID36_while_out

ID36_while_suite: 
  %fuckLLVM_36 = load i32*, i32** @fuckLLVM_b
  %fuckLLVM_37 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_38 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_39 = mul i32 %fuckLLVM_37, %fuckLLVM_38
  %fuckLLVM_40 = getelementptr inbounds i32, i32* %fuckLLVM_36, i32 %fuckLLVM_39
  store i32 0, i32* %fuckLLVM_40
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_42 = add i32 %fuckLLVM_41, 1
  store i32 %fuckLLVM_42, i32* %fuckLLVM_3
  br label %ID31_while_condition

ID36_while_out: 
  store i32 2, i32* %fuckLLVM_3
  br label %ID4_for_incr

ID4_for_incr: 
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_44 = add i32 %fuckLLVM_43, 1
  store i32 %fuckLLVM_44, i32* %fuckLLVM_4
  br label %ID4_for_condition

ID4_for_out: 
  br label %getPrime_return

getPrime_return: 
  ret void
}
define i32 @getResult(i32 %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2) {
getResult_entry: 
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_4
  %fuckLLVM_5 = alloca i32
  store i32 %fuckLLVM_2, i32* %fuckLLVM_5
  %fuckLLVM_6 = alloca i32
  %fuckLLVM_7 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_9 = getelementptr inbounds i32*, i32** %fuckLLVM_7, i32 %fuckLLVM_8
  %fuckLLVM_10 = load i32*, i32** %fuckLLVM_9
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_12 = getelementptr inbounds i32, i32* %fuckLLVM_10, i32 %fuckLLVM_11
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_12
  %fuckLLVM_14 = sub i32 0, 1
  %fuckLLVM_15 = icmp eq i32 %fuckLLVM_13, %fuckLLVM_14
  br i1 %fuckLLVM_15, label %ID15_if_true, label %ID15_if_out

ID41_if_true: 
  %fuckLLVM_42 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_44 = getelementptr inbounds i32*, i32** %fuckLLVM_42, i32 %fuckLLVM_43
  %fuckLLVM_45 = load i32*, i32** %fuckLLVM_44
  %fuckLLVM_46 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_47 = getelementptr inbounds i32, i32* %fuckLLVM_45, i32 %fuckLLVM_46
  %fuckLLVM_48 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_49 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_50 = load i32*, i32** @fuckLLVM_gps
  %fuckLLVM_51 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_53 = getelementptr inbounds i32, i32* %fuckLLVM_51, i32 %fuckLLVM_52
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_53
  %fuckLLVM_55 = mul i32 %fuckLLVM_54, 2
  %fuckLLVM_56 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_57 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_58 = getelementptr inbounds i32, i32* %fuckLLVM_56, i32 %fuckLLVM_57
  %fuckLLVM_59 = load i32, i32* %fuckLLVM_58
  %fuckLLVM_60 = sub i32 %fuckLLVM_55, %fuckLLVM_59
  %fuckLLVM_61 = getelementptr inbounds i32, i32* %fuckLLVM_50, i32 %fuckLLVM_60
  %fuckLLVM_62 = load i32, i32* %fuckLLVM_61
  %fuckLLVM_63 = call i32 @getResult(i32 %fuckLLVM_48, i32 %fuckLLVM_49, i32 %fuckLLVM_62)
  %fuckLLVM_64 = add i32 %fuckLLVM_63, 1
  store i32 %fuckLLVM_64, i32* %fuckLLVM_47
  br label %ID41_if_out

ID41_if_out: 
  br label %ID27_if_out

ID27_if_true: 
  %fuckLLVM_28 = load i32*, i32** @fuckLLVM_b
  %fuckLLVM_29 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_30 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_31 = getelementptr inbounds i32, i32* %fuckLLVM_29, i32 %fuckLLVM_30
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_31
  %fuckLLVM_33 = mul i32 %fuckLLVM_32, 2
  %fuckLLVM_34 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_35 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_36 = getelementptr inbounds i32, i32* %fuckLLVM_34, i32 %fuckLLVM_35
  %fuckLLVM_37 = load i32, i32* %fuckLLVM_36
  %fuckLLVM_38 = sub i32 %fuckLLVM_33, %fuckLLVM_37
  %fuckLLVM_39 = getelementptr inbounds i32, i32* %fuckLLVM_28, i32 %fuckLLVM_38
  %fuckLLVM_40 = load i32, i32* %fuckLLVM_39
  %fuckLLVM_41 = icmp ne i32 %fuckLLVM_40, 0
  br i1 %fuckLLVM_41, label %ID41_if_true, label %ID41_if_out

ID27_if_out: 
  br label %ID15_if_out

ID15_if_true: 
  %fuckLLVM_16 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_18 = getelementptr inbounds i32, i32* %fuckLLVM_16, i32 %fuckLLVM_17
  %fuckLLVM_19 = load i32, i32* %fuckLLVM_18
  %fuckLLVM_20 = mul i32 %fuckLLVM_19, 2
  %fuckLLVM_21 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_23 = getelementptr inbounds i32, i32* %fuckLLVM_21, i32 %fuckLLVM_22
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_23
  %fuckLLVM_25 = sub i32 %fuckLLVM_20, %fuckLLVM_24
  %fuckLLVM_26 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_27 = icmp sle i32 %fuckLLVM_25, %fuckLLVM_26
  br i1 %fuckLLVM_27, label %ID27_if_true, label %ID27_if_out

ID15_if_out: 
  %fuckLLVM_65 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_66 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_67 = getelementptr inbounds i32*, i32** %fuckLLVM_65, i32 %fuckLLVM_66
  %fuckLLVM_68 = load i32*, i32** %fuckLLVM_67
  %fuckLLVM_69 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_70 = getelementptr inbounds i32, i32* %fuckLLVM_68, i32 %fuckLLVM_69
  %fuckLLVM_71 = load i32, i32* %fuckLLVM_70
  %fuckLLVM_72 = sub i32 0, 1
  %fuckLLVM_73 = icmp eq i32 %fuckLLVM_71, %fuckLLVM_72
  br i1 %fuckLLVM_73, label %ID73_if_true, label %ID73_if_out

ID73_if_true: 
  %fuckLLVM_74 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_75 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_76 = getelementptr inbounds i32*, i32** %fuckLLVM_74, i32 %fuckLLVM_75
  %fuckLLVM_77 = load i32*, i32** %fuckLLVM_76
  %fuckLLVM_78 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_79 = getelementptr inbounds i32, i32* %fuckLLVM_77, i32 %fuckLLVM_78
  store i32 1, i32* %fuckLLVM_79
  br label %ID73_if_out

ID73_if_out: 
  %fuckLLVM_80 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_81 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_82 = getelementptr inbounds i32*, i32** %fuckLLVM_80, i32 %fuckLLVM_81
  %fuckLLVM_83 = load i32*, i32** %fuckLLVM_82
  %fuckLLVM_84 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_85 = getelementptr inbounds i32, i32* %fuckLLVM_83, i32 %fuckLLVM_84
  %fuckLLVM_86 = load i32, i32* %fuckLLVM_85
  store i32 %fuckLLVM_86, i32* %fuckLLVM_6
  br label %getResult_return
  br label %getResult_return

getResult_return: 
  %fuckLLVM_87 = load i32, i32* %fuckLLVM_6
  ret i32 %fuckLLVM_87
}
define void @printF(i32 %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2) {
printF_entry: 
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_4
  %fuckLLVM_5 = alloca i32
  store i32 %fuckLLVM_2, i32* %fuckLLVM_5
  %fuckLLVM_7 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_8 = call i8* @toString(i32 %fuckLLVM_7)
  %fuckLLVM_9 = bitcast i8* %fuckLLVM_8 to i8*
  call void @print(i8* %fuckLLVM_9)
  br label %ID11_while_condition

ID11_while_condition: 
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_12 = icmp sgt i32 %fuckLLVM_11, 0
  br i1 %fuckLLVM_12, label %ID13_while_suite, label %ID13_while_out

ID13_while_suite: 
  %fuckLLVM_13 = bitcast [2 x i8]* @fuckLLVM_.str.0 to i8*
  call void @print(i8* %fuckLLVM_13)
  %fuckLLVM_15 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_16 = call i8* @toString(i32 %fuckLLVM_15)
  %fuckLLVM_17 = bitcast i8* %fuckLLVM_16 to i8*
  call void @print(i8* %fuckLLVM_17)
  %fuckLLVM_19 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_20 = mul i32 %fuckLLVM_19, 2
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_22 = sub i32 %fuckLLVM_20, %fuckLLVM_21
  store i32 %fuckLLVM_22, i32* %fuckLLVM_4
  %fuckLLVM_23 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_4
  %fuckLLVM_25 = add i32 %fuckLLVM_23, %fuckLLVM_24
  %fuckLLVM_26 = sdiv i32 %fuckLLVM_25, 2
  store i32 %fuckLLVM_26, i32* %fuckLLVM_3
  %fuckLLVM_27 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_28 = sub i32 %fuckLLVM_27, 1
  store i32 %fuckLLVM_28, i32* %fuckLLVM_5
  br label %ID11_while_condition

ID13_while_out: 
  %fuckLLVM_29 = bitcast [2 x i8]* @fuckLLVM_.str.1 to i8*
  call void @print(i8* %fuckLLVM_29)
  br label %printF_return

printF_return: 
  ret void
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  call void @origin(i32 170)
  store i32 1000, i32* @fuckLLVM_N
  %fuckLLVM_2 = call i32 @getInt()
  store i32 %fuckLLVM_2, i32* @fuckLLVM_M
  store i32 0, i32* @fuckLLVM_primeCount
  store i32 0, i32* @fuckLLVM_resultCount
  %fuckLLVM_3 = load i32*, i32** @fuckLLVM_tmp
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 0
  store i32 0, i32* %fuckLLVM_4
  store i32 0, i32* @fuckLLVM_i
  br label %ID4_for_condition

ID4_for_condition: 
  %fuckLLVM_5 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_6 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_7 = add i32 %fuckLLVM_6, 1
  %fuckLLVM_8 = icmp slt i32 %fuckLLVM_5, %fuckLLVM_7
  br i1 %fuckLLVM_8, label %ID4_for_suite, label %ID4_for_out

ID4_for_suite: 
  %fuckLLVM_9 = load i32*, i32** @fuckLLVM_b
  %fuckLLVM_10 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_11 = getelementptr inbounds i32, i32* %fuckLLVM_9, i32 %fuckLLVM_10
  store i32 1, i32* %fuckLLVM_11
  %fuckLLVM_12 = load i32*, i32** @fuckLLVM_gps
  %fuckLLVM_13 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_14 = getelementptr inbounds i32, i32* %fuckLLVM_12, i32 %fuckLLVM_13
  store i32 0, i32* %fuckLLVM_14
  br label %ID4_for_incr

ID4_for_incr: 
  %fuckLLVM_15 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_16 = add i32 %fuckLLVM_15, 1
  store i32 %fuckLLVM_16, i32* @fuckLLVM_i
  br label %ID4_for_condition

ID4_for_out: 
  store i32 0, i32* @fuckLLVM_i
  br label %ID16_for_condition

ID16_for_condition: 
  %fuckLLVM_17 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_18 = load i32, i32* @fuckLLVM_M
  %fuckLLVM_19 = add i32 %fuckLLVM_18, 1
  %fuckLLVM_20 = icmp slt i32 %fuckLLVM_17, %fuckLLVM_19
  br i1 %fuckLLVM_20, label %ID16_for_suite, label %ID16_for_out

ID16_for_suite: 
  %fuckLLVM_21 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_22 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_23 = getelementptr inbounds i32, i32* %fuckLLVM_21, i32 %fuckLLVM_22
  store i32 0, i32* %fuckLLVM_23
  br label %ID16_for_incr

ID16_for_incr: 
  %fuckLLVM_24 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_25 = add i32 %fuckLLVM_24, 1
  store i32 %fuckLLVM_25, i32* @fuckLLVM_i
  br label %ID16_for_condition

ID16_for_out: 
  store i32 0, i32* @fuckLLVM_i
  br label %ID25_for_condition

ID25_for_condition: 
  %fuckLLVM_26 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_27 = load i32, i32* @fuckLLVM_M
  %fuckLLVM_28 = icmp sle i32 %fuckLLVM_26, %fuckLLVM_27
  br i1 %fuckLLVM_28, label %ID25_for_suite, label %ID25_for_out

ID25_for_suite: 
  store i32 0, i32* @fuckLLVM_j
  br label %ID28_for_condition

ID28_for_condition: 
  %fuckLLVM_29 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_30 = load i32, i32* @fuckLLVM_M
  %fuckLLVM_31 = icmp sle i32 %fuckLLVM_29, %fuckLLVM_30
  br i1 %fuckLLVM_31, label %ID28_for_suite, label %ID28_for_out

ID28_for_suite: 
  %fuckLLVM_32 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_33 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_34 = getelementptr inbounds i32*, i32** %fuckLLVM_32, i32 %fuckLLVM_33
  %fuckLLVM_35 = load i32*, i32** %fuckLLVM_34
  %fuckLLVM_36 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_37 = getelementptr inbounds i32, i32* %fuckLLVM_35, i32 %fuckLLVM_36
  %fuckLLVM_38 = sub i32 0, 1
  store i32 %fuckLLVM_38, i32* %fuckLLVM_37
  br label %ID28_for_incr

ID28_for_incr: 
  %fuckLLVM_39 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_40 = add i32 %fuckLLVM_39, 1
  store i32 %fuckLLVM_40, i32* @fuckLLVM_j
  br label %ID28_for_condition

ID28_for_out: 
  br label %ID25_for_incr

ID25_for_incr: 
  %fuckLLVM_41 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_42 = add i32 %fuckLLVM_41, 1
  store i32 %fuckLLVM_42, i32* @fuckLLVM_i
  br label %ID25_for_condition

ID25_for_out: 
  %fuckLLVM_43 = load i32, i32* @fuckLLVM_N
  call void @getPrime(i32 %fuckLLVM_43)
  %fuckLLVM_45 = load i32*, i32** @fuckLLVM_tmp
  %fuckLLVM_46 = getelementptr inbounds i32, i32* %fuckLLVM_45, i32 0
  %fuckLLVM_47 = load i32, i32* %fuckLLVM_46
  store i32 %fuckLLVM_47, i32* @fuckLLVM_primeCount
  store i32 1, i32* @fuckLLVM_i
  br label %ID47_for_condition

ID47_for_condition: 
  %fuckLLVM_48 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_49 = load i32, i32* @fuckLLVM_primeCount
  %fuckLLVM_50 = icmp slt i32 %fuckLLVM_48, %fuckLLVM_49
  br i1 %fuckLLVM_50, label %ID47_for_suite, label %ID47_for_out

ID47_for_suite: 
  %fuckLLVM_51 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_52 = add i32 %fuckLLVM_51, 1
  store i32 %fuckLLVM_52, i32* @fuckLLVM_j
  br label %ID52_for_condition

ID52_for_condition: 
  %fuckLLVM_53 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_54 = load i32, i32* @fuckLLVM_primeCount
  %fuckLLVM_55 = icmp sle i32 %fuckLLVM_53, %fuckLLVM_54
  br i1 %fuckLLVM_55, label %ID52_for_suite, label %ID52_for_out

ID52_for_suite: 
  %fuckLLVM_56 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_57 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_58 = getelementptr inbounds i32*, i32** %fuckLLVM_56, i32 %fuckLLVM_57
  %fuckLLVM_59 = load i32*, i32** %fuckLLVM_58
  %fuckLLVM_60 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_61 = getelementptr inbounds i32, i32* %fuckLLVM_59, i32 %fuckLLVM_60
  %fuckLLVM_62 = load i32, i32* %fuckLLVM_61
  %fuckLLVM_63 = sub i32 0, 1
  %fuckLLVM_64 = icmp eq i32 %fuckLLVM_62, %fuckLLVM_63
  br i1 %fuckLLVM_64, label %ID64_if_true, label %ID64_if_out

ID82_if_true: 
  %fuckLLVM_83 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_84 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_85 = getelementptr inbounds i32, i32* %fuckLLVM_83, i32 %fuckLLVM_84
  %fuckLLVM_86 = load i32, i32* %fuckLLVM_85
  %fuckLLVM_87 = load i32*, i32** @fuckLLVM_prime
  %fuckLLVM_88 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_89 = getelementptr inbounds i32, i32* %fuckLLVM_87, i32 %fuckLLVM_88
  %fuckLLVM_90 = load i32, i32* %fuckLLVM_89
  %fuckLLVM_91 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_92 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_93 = getelementptr inbounds i32*, i32** %fuckLLVM_91, i32 %fuckLLVM_92
  %fuckLLVM_94 = load i32*, i32** %fuckLLVM_93
  %fuckLLVM_95 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_96 = getelementptr inbounds i32, i32* %fuckLLVM_94, i32 %fuckLLVM_95
  %fuckLLVM_97 = load i32, i32* %fuckLLVM_96
  call void @printF(i32 %fuckLLVM_86, i32 %fuckLLVM_90, i32 %fuckLLVM_97)
  %fuckLLVM_99 = load i32, i32* @fuckLLVM_resultCount
  %fuckLLVM_100 = add i32 %fuckLLVM_99, 1
  store i32 %fuckLLVM_100, i32* @fuckLLVM_resultCount
  br label %ID82_if_out

ID82_if_out: 
  br label %ID64_if_out

ID64_if_true: 
  %fuckLLVM_65 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_66 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_67 = getelementptr inbounds i32*, i32** %fuckLLVM_65, i32 %fuckLLVM_66
  %fuckLLVM_68 = load i32*, i32** %fuckLLVM_67
  %fuckLLVM_69 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_70 = getelementptr inbounds i32, i32* %fuckLLVM_68, i32 %fuckLLVM_69
  %fuckLLVM_71 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_72 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_73 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_74 = call i32 @getResult(i32 %fuckLLVM_71, i32 %fuckLLVM_72, i32 %fuckLLVM_73)
  store i32 %fuckLLVM_74, i32* %fuckLLVM_70
  %fuckLLVM_75 = load i32**, i32*** @fuckLLVM_result
  %fuckLLVM_76 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_77 = getelementptr inbounds i32*, i32** %fuckLLVM_75, i32 %fuckLLVM_76
  %fuckLLVM_78 = load i32*, i32** %fuckLLVM_77
  %fuckLLVM_79 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_80 = getelementptr inbounds i32, i32* %fuckLLVM_78, i32 %fuckLLVM_79
  %fuckLLVM_81 = load i32, i32* %fuckLLVM_80
  %fuckLLVM_82 = icmp sgt i32 %fuckLLVM_81, 1
  br i1 %fuckLLVM_82, label %ID82_if_true, label %ID82_if_out

ID64_if_out: 
  br label %ID52_for_incr

ID52_for_incr: 
  %fuckLLVM_101 = load i32, i32* @fuckLLVM_j
  %fuckLLVM_102 = add i32 %fuckLLVM_101, 1
  store i32 %fuckLLVM_102, i32* @fuckLLVM_j
  br label %ID52_for_condition

ID52_for_out: 
  br label %ID47_for_incr

ID47_for_incr: 
  %fuckLLVM_103 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_104 = add i32 %fuckLLVM_103, 1
  store i32 %fuckLLVM_104, i32* @fuckLLVM_i
  br label %ID47_for_condition

ID47_for_out: 
  %fuckLLVM_105 = bitcast [8 x i8]* @fuckLLVM_.str.2 to i8*
  call void @print(i8* %fuckLLVM_105)
  %fuckLLVM_107 = load i32, i32* @fuckLLVM_resultCount
  %fuckLLVM_108 = call i8* @toString(i32 %fuckLLVM_107)
  %fuckLLVM_109 = bitcast i8* %fuckLLVM_108 to i8*
  call void @println(i8* %fuckLLVM_109)
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_111 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_111
}
