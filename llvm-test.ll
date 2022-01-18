@fuckLLVM_n = global i32 0
@fuckLLVM_.str.0 = private constant [4 x i8] c"YES\00"
@fuckLLVM_.str.1 = private constant [3 x i8] c"NO\00"

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
  %fuckLLVM_1 = call i32 @getInt()
  store i32 %fuckLLVM_1, i32* @fuckLLVM_n
  %fuckLLVM_2 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_3 = srem i32 %fuckLLVM_2, 4
  %fuckLLVM_4 = icmp eq i32 %fuckLLVM_3, 0
  br i1 %fuckLLVM_4, label %ID4_OrOr_out, label %ID4_OrOr_false

ID4_OrOr_false: 
  %fuckLLVM_5 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_6 = srem i32 %fuckLLVM_5, 7
  %fuckLLVM_7 = icmp eq i32 %fuckLLVM_6, 0
  br label %ID4_OrOr_out

ID4_OrOr_out: 
  %fuckLLVM_8 = phi i1 [ true, %main_entry ], [ %fuckLLVM_7, %ID4_OrOr_false ]
  br i1 %fuckLLVM_8, label %ID8_OrOr_out, label %ID8_OrOr_false

ID8_OrOr_false: 
  %fuckLLVM_9 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_10 = srem i32 %fuckLLVM_9, 47
  %fuckLLVM_11 = icmp eq i32 %fuckLLVM_10, 0
  br label %ID8_OrOr_out

ID8_OrOr_out: 
  %fuckLLVM_12 = phi i1 [ true, %ID4_OrOr_out ], [ %fuckLLVM_11, %ID8_OrOr_false ]
  br i1 %fuckLLVM_12, label %ID12_OrOr_out, label %ID12_OrOr_false

ID12_OrOr_false: 
  %fuckLLVM_13 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_14 = srem i32 %fuckLLVM_13, 74
  %fuckLLVM_15 = icmp eq i32 %fuckLLVM_14, 0
  br label %ID12_OrOr_out

ID12_OrOr_out: 
  %fuckLLVM_16 = phi i1 [ true, %ID8_OrOr_out ], [ %fuckLLVM_15, %ID12_OrOr_false ]
  br i1 %fuckLLVM_16, label %ID16_OrOr_out, label %ID16_OrOr_false

ID16_OrOr_false: 
  %fuckLLVM_17 = load i32, i32* @fuckLLVM_n
  %fuckLLVM_18 = srem i32 %fuckLLVM_17, 477
  %fuckLLVM_19 = icmp eq i32 %fuckLLVM_18, 0
  br label %ID16_OrOr_out

ID16_OrOr_out: 
  %fuckLLVM_20 = phi i1 [ true, %ID12_OrOr_out ], [ %fuckLLVM_19, %ID16_OrOr_false ]
  br i1 %fuckLLVM_20, label %ID20_if_true, label %ID20_if_false

ID20_if_true: 
  %fuckLLVM_21 = bitcast [4 x i8]* @fuckLLVM_.str.0 to i8*
  call void @print(i8* %fuckLLVM_21)
  br label %ID20_if_out

ID20_if_false: 
  %fuckLLVM_23 = bitcast [3 x i8]* @fuckLLVM_.str.1 to i8*
  call void @print(i8* %fuckLLVM_23)
  br label %ID20_if_out

ID20_if_out: 
  br label %main_return

main_return: 
  %fuckLLVM_25 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_25
}
