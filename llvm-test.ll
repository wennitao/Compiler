
define i32 @main() {
main_entry: 
  %0 = alloca i32
  store i32 1, i32* %0
  %1 = alloca i32
  store i32 2, i32* %1
  %2 = alloca i8
  %3 = load i32, i32* %0
  %4 = load i32, i32* %1
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %2
  %7 = alloca i32**
  %8 = alloca [3 x i32*]
  %9 = bitcast [3 x i32*]* %8 to i32**
  store i32** %9, i32*** %7
  %10 = load i32**, i32*** %7
  %11 = getelementptr inbounds i32*, i32** %10, i32 0
  store i32* null, i32** %11
  %12 = load i32**, i32*** %7
  %13 = getelementptr inbounds i32*, i32** %12, i32 1
  %14 = alloca [10 x i32]
  %15 = bitcast [10 x i32]* %14 to i32*
  store i32* %15, i32** %13
  %16 = load i32**, i32*** %7
  %17 = getelementptr inbounds i32*, i32** %16, i32 2
  %18 = alloca [30 x i32]
  %19 = bitcast [30 x i32]* %18 to i32*
  store i32* %19, i32** %17
  ret i32 0

}
