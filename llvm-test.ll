%class.A = type { i32, i32 }

define void @A(%class.A* %0) {
A: 
  %1 = alloca %class.A*
  store %class.A* %0, %class.A** %1
  %2 = getelementptr inbounds %class.A, %class.A* %1, i32 0
  %3 = getelementptr inbounds i32, %class.A %2, i32 0
  %4 = getelementptr inbounds %class.A, %class.A* %1, i32 0
  %5 = getelementptr inbounds i32, %class.A %4, i32 1
  store i32 1, i32* %5
  store i32 1, i32* %3

}
define i32 @main() {
main_entry: 
  %0 = alloca i32
  store i32 1, i32* %0
  %1 = alloca i32
  store i32 2, i32* %1
  %2 = alloca i32
  %3 = load i32, i32* %0
  %4 = load i32, i32* %1
  %5 = call i32 @f(i32 %3, i32 %4)
  store i32 %5, i32* %2
  %6 = alloca %class.A
  %7 = alloca %class.A
  %8 = bitcast %class.A* %7 to %class.A
  store %class.A %8, %class.A* %6
  call void @A(%class.A %6)
  %9 = getelementptr inbounds %class.A, %class.A %6, i32 0
  %10 = getelementptr inbounds i32, %class.A %9, i32 0
  store i32 2, i32* %10
  %11 = alloca i32
  %12 = call i32 @classA_sum(%class.A %6, i32 2)
  store i32 %12, i32* %11
  ret i32 0

}
define i32 @f(i32 %0, i32 %1) {
f_entry: 
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = load i32, i32* %2
  %5 = load i32, i32* %3
  %6 = add i32 %4, %5
  ret i32 %6
  %7 = alloca i32
  %8 = alloca i32

}
define i32 @classA_sum(%class.A* %0, i32 %1) {
sum_entry: 
  %2 = alloca %class.A*
  store %class.A* %0, %class.A** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = getelementptr inbounds %class.A, %class.A* %2, i32 0
  %5 = getelementptr inbounds i32, %class.A %4, i32 0
  %6 = getelementptr inbounds %class.A, %class.A* %2, i32 0
  %7 = getelementptr inbounds i32, %class.A %6, i32 1
  %8 = add i32 %5, %7
  ret i32 %8

}
