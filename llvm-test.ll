%class.A = type { i32 }

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
define void @A(%class.A* %fuckLLVM_0) {
A: 
  %fuckLLVM_1 = alloca %class.A*
  store %class.A* %fuckLLVM_0, %class.A** %fuckLLVM_1
  %fuckLLVM_2 = load %class.A*, %class.A** %fuckLLVM_1
  %fuckLLVM_3 = getelementptr inbounds %class.A, %class.A* %fuckLLVM_2, i32 0, i32 0
  store i32 1, i32* %fuckLLVM_3
  br label %A_return

A_return: 
  ret void
}
define i32 @classA_geta(%class.A* %fuckLLVM_0) {
geta_entry: 
  %fuckLLVM_1 = alloca %class.A*
  store %class.A* %fuckLLVM_0, %class.A** %fuckLLVM_1
  %fuckLLVM_2 = alloca i32
  %fuckLLVM_3 = load %class.A*, %class.A** %fuckLLVM_1
  %fuckLLVM_4 = getelementptr inbounds %class.A, %class.A* %fuckLLVM_3, i32 0, i32 0
  %fuckLLVM_5 = load i32, i32* %fuckLLVM_4
  store i32 %fuckLLVM_5, i32* %fuckLLVM_2
  br label %classA_geta_return
  br label %classA_geta_return

classA_geta_return: 
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_2
  ret i32 %fuckLLVM_6
}
define i32 @main() {
main_entry: 
  %fuckLLVM_0 = alloca i32
  %fuckLLVM_1 = alloca i32
  store i32 0, i32* %fuckLLVM_1
  %fuckLLVM_2 = alloca %class.A
  call void @A(%class.A* %fuckLLVM_2)
  %fuckLLVM_3 = call i32 @classA_geta(%class.A* %fuckLLVM_2)
  store i32 %fuckLLVM_3, i32* %fuckLLVM_1
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_4 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_4
}
