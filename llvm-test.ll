@fuckLLVM_a = global i32* null
@fuckLLVM_n = global i32 10000
@fuckLLVM_.str.0 = private constant [2 x i8] c" \00"
@fuckLLVM_.str.1 = private constant [2 x i8] c"\0A\00"

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
  %fuckLLVM_0 = mul i64 10100, 4
  %fuckLLVM_1 = add i64 %fuckLLVM_0, 4
  %fuckLLVM_2 = call i8* @malloc(i64 %fuckLLVM_1)
  %fuckLLVM_3 = bitcast i8* %fuckLLVM_2 to i32*
  store i32 10100, i32* %fuckLLVM_3
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 1
  %fuckLLVM_5 = bitcast i32* %fuckLLVM_4 to i32*
  %fuckLLVM_6 = bitcast i32* %fuckLLVM_5 to i32*
  store i32* %fuckLLVM_6, i32** @fuckLLVM_a
  br label %__init_return

__init_return: 
  ret void
}
define i32 @qsrt(i32 %fuckLLVM_0, i32 %fuckLLVM_1) {
qsrt_entry: 
  %fuckLLVM_2 = alloca i32
  store i32 %fuckLLVM_0, i32* %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  store i32 %fuckLLVM_1, i32* %fuckLLVM_3
  %fuckLLVM_4 = alloca i32
  %fuckLLVM_5 = alloca i32
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_2
  store i32 %fuckLLVM_6, i32* %fuckLLVM_5
  %fuckLLVM_7 = alloca i32
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_3
  store i32 %fuckLLVM_8, i32* %fuckLLVM_7
  %fuckLLVM_9 = alloca i32
  %fuckLLVM_10 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_11 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_13 = add i32 %fuckLLVM_11, %fuckLLVM_12
  %fuckLLVM_14 = sdiv i32 %fuckLLVM_13, 2
  %fuckLLVM_15 = getelementptr inbounds i32, i32* %fuckLLVM_10, i32 %fuckLLVM_14
  %fuckLLVM_16 = load i32, i32* %fuckLLVM_15
  store i32 %fuckLLVM_16, i32* %fuckLLVM_9
  br label %qsrt_ID17_while_condition

qsrt_ID17_while_condition: 
  %fuckLLVM_17 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_18 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_19 = icmp sle i32 %fuckLLVM_17, %fuckLLVM_18
  br i1 %fuckLLVM_19, label %qsrt_ID20_while_suite, label %qsrt_ID20_while_out

qsrt_ID20_while_condition: 
  %fuckLLVM_20 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_21 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_22 = getelementptr inbounds i32, i32* %fuckLLVM_20, i32 %fuckLLVM_21
  %fuckLLVM_23 = load i32, i32* %fuckLLVM_22
  %fuckLLVM_24 = load i32, i32* %fuckLLVM_9
  %fuckLLVM_25 = icmp slt i32 %fuckLLVM_23, %fuckLLVM_24
  br i1 %fuckLLVM_25, label %qsrt_ID26_while_suite, label %qsrt_ID26_while_out

qsrt_ID26_while_suite: 
  %fuckLLVM_26 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_27 = add i32 %fuckLLVM_26, 1
  store i32 %fuckLLVM_27, i32* %fuckLLVM_5
  br label %qsrt_ID20_while_condition

qsrt_ID26_while_out: 
  br label %qsrt_ID28_while_condition

qsrt_ID28_while_condition: 
  %fuckLLVM_28 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_29 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_30 = getelementptr inbounds i32, i32* %fuckLLVM_28, i32 %fuckLLVM_29
  %fuckLLVM_31 = load i32, i32* %fuckLLVM_30
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_9
  %fuckLLVM_33 = icmp sgt i32 %fuckLLVM_31, %fuckLLVM_32
  br i1 %fuckLLVM_33, label %qsrt_ID34_while_suite, label %qsrt_ID34_while_out

qsrt_ID34_while_suite: 
  %fuckLLVM_34 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_35 = sub i32 %fuckLLVM_34, 1
  store i32 %fuckLLVM_35, i32* %fuckLLVM_7
  br label %qsrt_ID28_while_condition

qsrt_ID34_while_out: 
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_37 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_38 = icmp sle i32 %fuckLLVM_36, %fuckLLVM_37
  br i1 %fuckLLVM_38, label %qsrt_ID38_if_true, label %qsrt_ID38_if_out

qsrt_ID38_if_true: 
  %fuckLLVM_39 = alloca i32
  %fuckLLVM_40 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_41 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_42 = getelementptr inbounds i32, i32* %fuckLLVM_40, i32 %fuckLLVM_41
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_42
  store i32 %fuckLLVM_43, i32* %fuckLLVM_39
  %fuckLLVM_44 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_45 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_46 = getelementptr inbounds i32, i32* %fuckLLVM_44, i32 %fuckLLVM_45
  %fuckLLVM_47 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_48 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_49 = getelementptr inbounds i32, i32* %fuckLLVM_47, i32 %fuckLLVM_48
  %fuckLLVM_50 = load i32, i32* %fuckLLVM_49
  store i32 %fuckLLVM_50, i32* %fuckLLVM_46
  %fuckLLVM_51 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_52 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_53 = getelementptr inbounds i32, i32* %fuckLLVM_51, i32 %fuckLLVM_52
  %fuckLLVM_54 = load i32, i32* %fuckLLVM_39
  store i32 %fuckLLVM_54, i32* %fuckLLVM_53
  %fuckLLVM_55 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_56 = add i32 %fuckLLVM_55, 1
  store i32 %fuckLLVM_56, i32* %fuckLLVM_5
  %fuckLLVM_57 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_58 = sub i32 %fuckLLVM_57, 1
  store i32 %fuckLLVM_58, i32* %fuckLLVM_7
  br label %qsrt_ID38_if_out

qsrt_ID38_if_out: 
  br label %qsrt_ID17_while_condition

qsrt_ID20_while_suite: 
  br label %qsrt_ID20_while_condition

qsrt_ID20_while_out: 
  %fuckLLVM_59 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_60 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_61 = icmp slt i32 %fuckLLVM_59, %fuckLLVM_60
  br i1 %fuckLLVM_61, label %qsrt_ID61_if_true, label %qsrt_ID61_if_out

qsrt_ID61_if_true: 
  %fuckLLVM_62 = load i32, i32* %fuckLLVM_2
  %fuckLLVM_63 = load i32, i32* %fuckLLVM_7
  %fuckLLVM_64 = call i32 @qsrt(i32 %fuckLLVM_62, i32 %fuckLLVM_63)
  br label %qsrt_ID61_if_out

qsrt_ID61_if_out: 
  %fuckLLVM_65 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_66 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_67 = icmp slt i32 %fuckLLVM_65, %fuckLLVM_66
  br i1 %fuckLLVM_67, label %qsrt_ID67_if_true, label %qsrt_ID67_if_out

qsrt_ID67_if_true: 
  %fuckLLVM_68 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_69 = load i32, i32* %fuckLLVM_3
  %fuckLLVM_70 = call i32 @qsrt(i32 %fuckLLVM_68, i32 %fuckLLVM_69)
  br label %qsrt_ID67_if_out

qsrt_ID67_if_out: 
  store i32 0, i32* %fuckLLVM_4
  br label %qsrt_return
  br label %qsrt_return

qsrt_return: 
  %fuckLLVM_71 = load i32, i32* %fuckLLVM_4
  ret i32 %fuckLLVM_71
}
define i32 @main() {
main_entry: 
  call void @__init()
  %fuckLLVM_0 = alloca i32
  store i32 0, i32* %fuckLLVM_0
  %fuckLLVM_1 = alloca i32
  store i32 1, i32* %fuckLLVM_1
  br label %main_ID1_for_condition

main_ID1_for_condition: 
  %fuckLLVM_2 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_3 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_4 = icmp sle i32 %fuckLLVM_2, %fuckLLVM_3
  br i1 %fuckLLVM_4, label %main_ID1_for_suite, label %main_ID1_for_out

main_ID1_for_suite: 
  %fuckLLVM_5 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_7 = getelementptr inbounds i32, i32* %fuckLLVM_5, i32 %fuckLLVM_6
  %fuckLLVM_8 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_9 = add i32 %fuckLLVM_8, 1
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_11 = sub i32 %fuckLLVM_9, %fuckLLVM_10
  store i32 %fuckLLVM_11, i32* %fuckLLVM_7
  br label %main_ID1_for_incr

main_ID1_for_incr: 
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_13 = add i32 %fuckLLVM_12, 1
  store i32 %fuckLLVM_13, i32* %fuckLLVM_1
  br label %main_ID1_for_condition

main_ID1_for_out: 
  %fuckLLVM_14 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_15 = call i32 @qsrt(i32 1, i32 %fuckLLVM_14)
  store i32 1, i32* %fuckLLVM_1
  br label %main_ID15_for_condition

main_ID15_for_condition: 
  %fuckLLVM_16 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_17 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_18 = icmp sle i32 %fuckLLVM_16, %fuckLLVM_17
  br i1 %fuckLLVM_18, label %main_ID15_for_suite, label %main_ID15_for_out

main_ID15_for_suite: 
  %fuckLLVM_19 = load i32*, i32** @fuckLLVM_a
  %fuckLLVM_20 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_21 = getelementptr inbounds i32, i32* %fuckLLVM_19, i32 %fuckLLVM_20
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_21
  %fuckLLVM_23 = call i8* @toString(i32 %fuckLLVM_22)
  %fuckLLVM_24 = bitcast i8* %fuckLLVM_23 to i8*
  call void @print(i8* %fuckLLVM_24)
  %fuckLLVM_26 = bitcast [2 x i8]* @fuckLLVM_.str.0 to i8*
  call void @print(i8* %fuckLLVM_26)
  br label %main_ID15_for_incr

main_ID15_for_incr: 
  %fuckLLVM_28 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_29 = add i32 %fuckLLVM_28, 1
  store i32 %fuckLLVM_29, i32* %fuckLLVM_1
  br label %main_ID15_for_condition

main_ID15_for_out: 
  %fuckLLVM_30 = bitcast [2 x i8]* @fuckLLVM_.str.1 to i8*
  call void @print(i8* %fuckLLVM_30)
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_32 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_32
}
