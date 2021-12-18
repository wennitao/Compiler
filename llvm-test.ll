@b = global i32 0
@c = global i32* null

define i32 @main() {
main_entry: 
  %0 = add i32 1, 2
  store i32 %0, i32* @b
  %1 = alloca [10 x i32]
  %2 = bitcast [10 x i32]* %1 to i32*
  store i32* %2, i32** @c
  %3 = alloca i32
  store i32 1, i32* %3
  %4 = load i32, i32* %3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %ID5_AndAnd_true, label %ID5_AndAnd_out

ID5_AndAnd_true: 
  %6 = load i32, i32* %3
  %7 = icmp eq i32 %6, 2
  br label %ID5_AndAnd_out

ID5_AndAnd_out: 
  %8 = phi i1 [ false, %main_entry ], [ %7, %ID5_AndAnd_true ]
  br i1 %8, label %ID8_AndAnd_true, label %ID8_AndAnd_out

ID8_AndAnd_true: 
  %9 = load i32, i32* %3
  %10 = icmp eq i32 %9, 3
  br label %ID8_AndAnd_out

ID8_AndAnd_out: 
  %11 = phi i1 [ false, %ID5_AndAnd_out ], [ %10, %ID8_AndAnd_true ]
  br i1 %11, label %ID11_OrOr_out, label %ID11_OrOr_false

ID11_OrOr_false: 
  %12 = load i32, i32* %3
  %13 = icmp eq i32 %12, 4
  br label %ID11_OrOr_out

ID11_OrOr_out: 
  %14 = phi i1 [ true, %ID8_AndAnd_out ], [ %13, %ID11_OrOr_false ]
  br i1 %14, label %ID14_if_true, label %ID14_if_false

ID14_if_true: 
  %15 = load i32, i32* %3
  %16 = add i32 %15, 1
  store i32 %16, i32* %3
  br label %ID14_if_out

ID14_if_false: 
  %17 = load i32, i32* %3
  %18 = add i32 %17, 1
  store i32 %18, i32* %3
  br label %ID14_if_out

ID14_if_out: 
  ret i32 0

}
