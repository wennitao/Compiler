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
  %fuckLLVM_0 = alloca i32
  %fuckLLVM_1 = alloca i32**
  %fuckLLVM_2 = mul i64 10, 8
  %fuckLLVM_3 = call i8* @malloc(i64 %fuckLLVM_2)
  %fuckLLVM_4 = bitcast i8* %fuckLLVM_3 to i32**
  %fuckLLVM_5 = alloca i32
  store i32 0, i32* %fuckLLVM_5
  br label %ID5_for_condition

ID5_for_condition: 
  %fuckLLVM_6 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_7 = icmp slt i32 %fuckLLVM_6, 10
  br i1 %fuckLLVM_7, label %ID5_for_suite, label %ID5_for_out

ID5_for_suite: 
  %fuckLLVM_8 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_9 = getelementptr inbounds i32*, i32** %fuckLLVM_4, i32 %fuckLLVM_8
  %fuckLLVM_10 = mul i64 10, 4
  %fuckLLVM_11 = call i8* @malloc(i64 %fuckLLVM_10)
  %fuckLLVM_12 = bitcast i8* %fuckLLVM_11 to i32*
  store i32* %fuckLLVM_12, i32** %fuckLLVM_9
  br label %ID5_for_incr

ID5_for_incr: 
  %fuckLLVM_13 = load i32, i32* %fuckLLVM_5
  %fuckLLVM_14 = add i32 %fuckLLVM_13, 1
  store i32 %fuckLLVM_14, i32* %fuckLLVM_5
  br label %ID5_for_condition

ID5_for_out: 
  store i32** %fuckLLVM_4, i32*** %fuckLLVM_1
  %fuckLLVM_15 = load i32**, i32*** %fuckLLVM_1
  %fuckLLVM_16 = getelementptr inbounds i32*, i32** %fuckLLVM_15, i32 0
  %fuckLLVM_17 = load i32*, i32** %fuckLLVM_16
  %fuckLLVM_18 = getelementptr inbounds i32, i32* %fuckLLVM_17, i32 0
  store i32 2, i32* %fuckLLVM_18
  %fuckLLVM_19 = load i32**, i32*** %fuckLLVM_1
  %fuckLLVM_20 = getelementptr inbounds i32*, i32** %fuckLLVM_19, i32 0
  %fuckLLVM_21 = load i32*, i32** %fuckLLVM_20
  %fuckLLVM_22 = getelementptr inbounds i32, i32* %fuckLLVM_21, i32 0
  %fuckLLVM_23 = load i32, i32* %fuckLLVM_22
  call void @printlnInt(i32 %fuckLLVM_23)
  store i32 0, i32* %fuckLLVM_0
  br label %main_return
  br label %main_return

main_return: 
  %fuckLLVM_25 = load i32, i32* %fuckLLVM_0
  ret i32 %fuckLLVM_25
}
