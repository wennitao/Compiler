
define i32 @main() {
main_entry: 
  %0 = alloca i32
  store i32 1, i32* %0
  %1 = load i32, i32* %0
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %ID2_AndAnd_true, label %ID2_AndAnd_out

ID2_AndAnd_true: 
  %3 = load i32, i32* %0
  %4 = icmp eq i32 %3, 2
  br label %ID2_AndAnd_out

ID2_AndAnd_out: 
  %5 = phi i1 [ false, %main_entry ], [ %4, %ID2_AndAnd_true ]
  br i1 %5, label %ID5_if_true, label %ID5_if_out

ID5_if_true: 
  %6 = load i32, i32* %0
  %7 = add i32 %6, 1
  store i32 %7, i32* %0
  br label %ID5_if_out

ID5_if_out: 
  ret i32 0

}
