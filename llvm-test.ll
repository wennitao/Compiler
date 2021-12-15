
define i32 @f(i32 %0, i32 %1) #0 {
f_entry: 
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = load i32, i32* %2
  %6 = load i32, i32* %3
  %7 = add i32 %5, %6
  store i32 %7, i32* %4
  %8 = load i32, i32* %4
  ret i32 %8

}
define i32 @main() #1 {
main_entry: 
  %0 = alloca i32
  store i32 1, i32* %0
  %1 = alloca i32
  store i32 2, i32* %1
  %2 = alloca i32
  %3 = load i32, i32* %0
  %4 = load i32, i32* %1
  %5 = add i32 %3, %4
  store i32 %5, i32* %2
  %6 = load i32, i32* %0
  %7 = load i32, i32* %1
  %8 = mul i32 %6, %7
  store i32 %8, i32* %2
  %9 = load i32, i32* %2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %ID11_if_true, label %ID11_if_false

ID11_if_true: 
  %11 = alloca i32
  %12 = load i32, i32* %0
  %13 = load i32, i32* %1
  %14 = add i32 %12, %13
  store i32 %14, i32* %11
  br label %ID11_if_out

ID11_if_false: 
  %15 = alloca i32
  %16 = load i32, i32* %0
  %17 = load i32, i32* %1
  %18 = add i32 %16, %17
  store i32 %18, i32* %15
  br label %ID11_if_out

ID11_if_out: 
  ret i32 0

}
