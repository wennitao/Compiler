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
  store i32 1, i32* %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  store i32 2, i32* %fuckLLVM_2
  %fuckLLVM_3 = alloca i32
  %fuckLLVM_4 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_5 = add i32 %fuckLLVM_4, 1
  store i32 %fuckLLVM_5, i32* %fuckLLVM_1
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_7 = add i32 %fuckLLVM_6, 1
  store i32 %fuckLLVM_7, i32* %fuckLLVM_1
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_1
  %fuckLLVM_9 = add i32 %fuckLLVM_4, %fuckLLVM_8
  store i32 %fuckLLVM_9, i32* %fuckLLVM_3
  %fuckLLVM_10 = load i32, i32* %fuckLLVM_3
  call void @printlnInt(i32 %fuckLLVM_10)
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_12 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_12
}
