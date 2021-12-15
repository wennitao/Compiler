@b = global i321
@c = global i322

define i32 @main() {
main_entry: 
  %0 = alloca i32
  %1 = load i32, i32* @b
  %2 = load i32, i32* @c
  %3 = add i32 %1, %2
  store i32 %3, i32* %0
  ret i32 0

}
