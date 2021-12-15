
define i32 @f(i32 %0, i32 %1) #0 {
  %3 = alloca i32
  store i32 %0, i32* %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  %6 = load i32, i32* %3
  %7 = load i32, i32* %4
  %8 = add i32 %6, %7
  store i32 %8, i32* %5
  %9 = load i32, i32* %5
  ret i32 %9
}
define i32 @main() #1 {
  %1 = alloca i32
  store i32 1, i32* %1
  %2 = alloca i32
  store i32 2, i32* %2
  %3 = alloca i32
  %4 = load i32, i32* %1
  %5 = load i32, i32* %2
  %6 = add i32 %4, %5
  store i32 %6, i32* %3
  %7 = load i32, i32* %1
  %8 = load i32, i32* %2
  %9 = mul i32 %7, %8
  store i32 %9, i32* %3
  %10 = load i32, i32* %3
  %11 = eq i32 %10, 2
  br i1 %11, label %12, label %13
12: 
  %15 = alloca i32
  %16 = load i32, i32* %1
  %17 = load i32, i32* %2
  %18 = add i32 %16, %17
  store i32 %18, i32* %15
  br label %14

13: 
  %19 = alloca i32
  %20 = load i32, i32* %1
  %21 = load i32, i32* %2
  %22 = add i32 %20, %21
  store i32 %22, i32* %19
  br label %14

14: 
  ret i32 0

}
