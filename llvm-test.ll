@fuckLLVM_N = global i32 15000
@fuckLLVM_b = global i8* null
@fuckLLVM_resultCount = global i32 0
@fuckLLVM_.str.0 = private constant [2 x i8] c" \00"
@fuckLLVM_.str.1 = private constant [8 x i8] c"Total: \00"

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
  %fuckLLVM_0 = mul i64 15001, 1
  %fuckLLVM_1 = add i64 %fuckLLVM_0, 4
  %fuckLLVM_2 = call i8* @malloc(i64 %fuckLLVM_1)
  %fuckLLVM_3 = bitcast i8* %fuckLLVM_2 to i32*
  store i32 15001, i32* %fuckLLVM_3
  %fuckLLVM_4 = getelementptr inbounds i32, i32* %fuckLLVM_3, i32 1
  %fuckLLVM_5 = bitcast i32* %fuckLLVM_4 to i8*
  %fuckLLVM_6 = bitcast i8* %fuckLLVM_5 to i8*
  store i8* %fuckLLVM_6, i8** @fuckLLVM_b
  br label %__init_return

__init_return: 
  ret void
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
  %fuckLLVM_3 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_4 = icmp sle i32 %fuckLLVM_2, %fuckLLVM_3
  br i1 %fuckLLVM_4, label %main_ID1_for_suite, label %main_ID1_for_out

main_ID1_for_suite: 
  %fuckLLVM_5 = load i8*, i8** @fuckLLVM_b
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_7 = getelementptr inbounds i8, i8* %fuckLLVM_5, i32 %fuckLLVM_6
  store i8 1, i8* %fuckLLVM_7
  br label %main_ID1_for_incr

main_ID1_for_incr: 
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_9 = add i32 %fuckLLVM_8, 1
  store i32 %fuckLLVM_9, i32* %fuckLLVM_1
  br label %main_ID1_for_condition

main_ID1_for_out: 
  store i32 2, i32* %fuckLLVM_1
  br label %main_ID9_for_condition

main_ID9_for_condition: 
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_11 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_12 = icmp sle i32 %fuckLLVM_10, %fuckLLVM_11
  br i1 %fuckLLVM_12, label %main_ID9_for_suite, label %main_ID9_for_out

main_ID9_for_suite: 
  %fuckLLVM_13 = load i8*, i8** @fuckLLVM_b
  %fuckLLVM_14 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_15 = getelementptr inbounds i8, i8* %fuckLLVM_13, i32 %fuckLLVM_14
  %fuckLLVM_16 = load i8, i8* %fuckLLVM_15
  %fuckLLVM_17 = trunc i8 %fuckLLVM_16 to i1
  br i1 %fuckLLVM_17, label %main_ID17_if_true, label %main_ID17_if_out

main_ID20_AndAnd_true: 
  %fuckLLVM_21 = load i8*, i8** @fuckLLVM_b
  %fuckLLVM_22 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_23 = sub i32 %fuckLLVM_22, 2
  %fuckLLVM_24 = getelementptr inbounds i8, i8* %fuckLLVM_21, i32 %fuckLLVM_23
  %fuckLLVM_25 = load i8, i8* %fuckLLVM_24
  %fuckLLVM_26 = trunc i8 %fuckLLVM_25 to i1
  br label %main_ID20_AndAnd_out

main_ID20_AndAnd_out: 
  %fuckLLVM_27 = phi i1 [ false, %main_ID17_if_true ], [ %fuckLLVM_26, %main_ID20_AndAnd_true ]
  br i1 %fuckLLVM_27, label %main_ID27_if_true, label %main_ID27_if_out

main_ID27_if_true: 
  %fuckLLVM_28 = load i32, i32* @fuckLLVM_resultCount
  %fuckLLVM_29 = add i32 %fuckLLVM_28, 1
  store i32 %fuckLLVM_29, i32* @fuckLLVM_resultCount
  %fuckLLVM_30 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_31 = sub i32 %fuckLLVM_30, 2
  %fuckLLVM_32 = call i8* @toString(i32 %fuckLLVM_31)
  %fuckLLVM_33 = bitcast i8* %fuckLLVM_32 to i8*
  %fuckLLVM_34 = bitcast [2 x i8]* @fuckLLVM_.str.0 to i8*
  %fuckLLVM_35 = call i8* @string_add(i8* %fuckLLVM_33, i8* %fuckLLVM_34)
  %fuckLLVM_36 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_37 = call i8* @toString(i32 %fuckLLVM_36)
  %fuckLLVM_38 = bitcast i8* %fuckLLVM_35 to i8*
  %fuckLLVM_39 = bitcast i8* %fuckLLVM_37 to i8*
  %fuckLLVM_40 = call i8* @string_add(i8* %fuckLLVM_38, i8* %fuckLLVM_39)
  %fuckLLVM_41 = bitcast i8* %fuckLLVM_40 to i8*
  call void @println(i8* %fuckLLVM_41)
  br label %main_ID27_if_out

main_ID27_if_out: 
  br label %main_ID43_while_condition

main_ID43_while_condition: 
  %fuckLLVM_43 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_44 = load i32, i32* %fuckLLVM_18
  %fuckLLVM_45 = mul i32 %fuckLLVM_43, %fuckLLVM_44
  %fuckLLVM_46 = load i32, i32* @fuckLLVM_N
  %fuckLLVM_47 = icmp sle i32 %fuckLLVM_45, %fuckLLVM_46
  br i1 %fuckLLVM_47, label %main_ID48_while_suite, label %main_ID48_while_out

main_ID48_while_suite: 
  %fuckLLVM_48 = load i8*, i8** @fuckLLVM_b
  %fuckLLVM_49 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_50 = load i32, i32* %fuckLLVM_18
  %fuckLLVM_51 = mul i32 %fuckLLVM_49, %fuckLLVM_50
  %fuckLLVM_52 = getelementptr inbounds i8, i8* %fuckLLVM_48, i32 %fuckLLVM_51
  store i8 0, i8* %fuckLLVM_52
  %fuckLLVM_53 = load i32, i32* %fuckLLVM_18
  %fuckLLVM_54 = add i32 %fuckLLVM_53, 1
  store i32 %fuckLLVM_54, i32* %fuckLLVM_18
  br label %main_ID43_while_condition

main_ID48_while_out: 
  br label %main_ID17_if_out

main_ID17_if_true: 
  %fuckLLVM_18 = alloca i32
  store i32 2, i32* %fuckLLVM_18
  %fuckLLVM_19 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_20 = icmp sgt i32 %fuckLLVM_19, 3
  br i1 %fuckLLVM_20, label %main_ID20_AndAnd_true, label %main_ID20_AndAnd_out

main_ID17_if_out: 
  br label %main_ID9_for_incr

main_ID9_for_incr: 
  %fuckLLVM_55 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_56 = add i32 %fuckLLVM_55, 1
  store i32 %fuckLLVM_56, i32* %fuckLLVM_1
  br label %main_ID9_for_condition

main_ID9_for_out: 
  %fuckLLVM_57 = load i32, i32* @fuckLLVM_resultCount
  %fuckLLVM_58 = call i8* @toString(i32 %fuckLLVM_57)
  %fuckLLVM_59 = bitcast [8 x i8]* @fuckLLVM_.str.1 to i8*
  %fuckLLVM_60 = bitcast i8* %fuckLLVM_58 to i8*
  %fuckLLVM_61 = call i8* @string_add(i8* %fuckLLVM_59, i8* %fuckLLVM_60)
  %fuckLLVM_62 = bitcast i8* %fuckLLVM_61 to i8*
  call void @println(i8* %fuckLLVM_62)
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_64 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_64
}
