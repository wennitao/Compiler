
define i32 @main() {
main_entry: 
  %0 = alloca i8
  store i8 0, i8* %0
  %1 = alloca i8
  %2 = load i8, i8* %0
  %3 = trunc i8 %2 to i1
  %4 = xor i1 %3, 1
  %5 = zext i1 %4 to i8
  store i8 %5, i8* %1
  %6 = alloca i32
  store i32 123, i32* %6
  %7 = alloca i32
  %8 = load i32, i32* %6
  %9 = xor i32 %8, -1
  store i32 %9, i32* %7
  %10 = alloca i32
  %11 = load i32, i32* %6
  %12 = sub i32 0, %11
  store i32 %12, i32* %10
  ret i32 0

}
