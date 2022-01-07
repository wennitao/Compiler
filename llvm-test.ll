@fuckLLVM_n = global i32 0
@fuckLLVM_p = global i32 0
@fuckLLVM_k = global i32 0
@fuckLLVM_i = global i32 0
@fuckLLVM_.str.0 = private constant [4 x i8] c"<< \00"
@fuckLLVM_.str.1 = private constant [2 x i8] c"(\00"
@fuckLLVM_.str.2 = private constant [3 x i8] c") \00"
@fuckLLVM_.str.3 = private constant [2 x i8] c" \00"
@fuckLLVM_.str.4 = private constant [4 x i8] c">> \00"

declare void @print(i8* %fuckLLVM_0)
declare void @println(i8* %fuckLLVM_0)
declare void @printInt(i32 %fuckLLVM_0)
declare void @printlnInt(i32 %fuckLLVM_0)
declare i8* @getString()
declare i32 @getInt()
declare i8* @toString(i32 %fuckLLVM_0)
declare i32 @array_size(i8* %fuckLLVM_0)
declare i32 @string_length(i8* %fuckLLVM_0)
declare i32 @string_substring(i8* %fuckLLVM_0, i32 %fuckLLVM_1, i32 %fuckLLVM_2)
declare i32 @string_parseInt(i8* %fuckLLVM_0)
declare i8 @string_ord(i8* %fuckLLVM_0, i32 %fuckLLVM_1)
declare i8* @string_add(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_equal(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_notEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_less(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_lessEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greater(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
declare i1 @string_greaterEqual(i8* %fuckLLVM_0, i8* %fuckLLVM_1)
define i32 @main() {
main_entry: 
  %fuckLLVM_0 = alloca i32
  %fuckLLVM_1 = call i32 @getInt()
  store i32 %fuckLLVM_1, i32* @fuckLLVM_n
  %fuckLLVM_2 = call i32 @getInt()
  store i32 %fuckLLVM_2, i32* @fuckLLVM_p
  %fuckLLVM_3 = call i32 @getInt()
  store i32 %fuckLLVM_3, i32* @fuckLLVM_k
  %fuckLLVM_4 = load i32, i32* @fuckLLVM_p
  %fuckLLVM_5 = load i32, i32* @fuckLLVM_k
  %fuckLLVM_6 = sub i32 %fuckLLVM_4, %fuckLLVM_5
  %fuckLLVM_7 = icmp sgt i32 %fuckLLVM_6, 1
  br i1 %fuckLLVM_7, label %ID7_if_true, label %ID7_if_out

ID7_if_true: 
  call void @print([4 x i8]* @fuckLLVM_.str.0)
  br label %ID7_if_out

ID7_if_out: 
  %fuckLLVM_9 = load i32, i32* @fuckLLVM_p
  %fuckLLVM_10 = load i32, i32* @fuckLLVM_k
  %fuckLLVM_11 = sub i32 %fuckLLVM_9, %fuckLLVM_10
  store i32 %fuckLLVM_11, i32* @fuckLLVM_i
  br label %ID11_for_condition

ID11_for_condition: 
  %fuckLLVM_12 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_13 = load i32, i32* @fuckLLVM_p
  %fuckLLVM_14 = load i32, i32* @fuckLLVM_k
  %fuckLLVM_15 = add i32 %fuckLLVM_13, %fuckLLVM_14
  %fuckLLVM_16 = icmp sle i32 %fuckLLVM_12, %fuckLLVM_15
  br i1 %fuckLLVM_16, label %ID11_for_suite, label %ID11_for_out

ID11_for_suite: 
  %fuckLLVM_17 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_18 = icmp sle i32 1, %fuckLLVM_17
  br i1 %fuckLLVM_18, label %ID18_AndAnd_true, label %ID18_AndAnd_out

ID18_AndAnd_true: 
  %fuckLLVM_19 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_20 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_21 = icmp sle i32 %fuckLLVM_19, %fuckLLVM_20
  br label %ID18_AndAnd_out

ID18_AndAnd_out: 
  %fuckLLVM_22 = phi i1 [ false, %ID11_for_suite ], [ %fuckLLVM_21, %ID18_AndAnd_true ]
  br i1 %fuckLLVM_22, label %ID22_if_true, label %ID22_if_out

ID25_if_true: 
  call void @print([2 x i8]* @fuckLLVM_.str.1)
  %fuckLLVM_27 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_28 = call i8* @toString(i32 %fuckLLVM_27)
  call void @print(i8* %fuckLLVM_28)
  call void @print([3 x i8]* @fuckLLVM_.str.2)
  br label %ID25_if_out

ID25_if_false: 
  %fuckLLVM_31 = load i32, i32* @fuckLLVM_i
  call void @printInt(i32 %fuckLLVM_31)
  call void @print([2 x i8]* @fuckLLVM_.str.3)
  br label %ID25_if_out

ID25_if_out: 
  br label %ID22_if_out

ID22_if_true: 
  %fuckLLVM_23 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_24 = load i32, i32* @fuckLLVM_p
  %fuckLLVM_25 = icmp eq i32 %fuckLLVM_23, %fuckLLVM_24
  br i1 %fuckLLVM_25, label %ID25_if_true, label %ID25_if_false

ID22_if_out: 
  br label %ID11_for_incr

ID11_for_incr: 
  %fuckLLVM_34 = load i32, i32* @fuckLLVM_i
  %fuckLLVM_35 = add i32 %fuckLLVM_34, 1
  store i32 %fuckLLVM_35, i32* @fuckLLVM_i
  br label %ID11_for_condition

ID11_for_out: 
  %fuckLLVM_36 = load i32, i32* @fuckLLVM_p
  %fuckLLVM_37 = load i32, i32* @fuckLLVM_k
  %fuckLLVM_38 = add i32 %fuckLLVM_36, %fuckLLVM_37
  %fuckLLVM_39 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_40 = icmp slt i32 %fuckLLVM_38, %fuckLLVM_39
  br i1 %fuckLLVM_40, label %ID40_if_true, label %ID40_if_out

ID40_if_true: 
  call void @print([4 x i8]* @fuckLLVM_.str.4)
  br label %ID40_if_out

ID40_if_out: 
  store i32 0, i32* %fuckLLVM_0
  br label %main_return

main_return: 
  %fuckLLVM_42 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_42
}
