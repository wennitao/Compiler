; ModuleID = 'tmp.cpp'
source_filename = "tmp.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

; Function Attrs: mustprogress noinline norecurse nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 1, i8* %2, align 1
  %7 = load i8, i8* %2, align 1
  %8 = trunc i8 %7 to i1
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %3, align 1
  store i32 123, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = xor i32 %11, -1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 13.0.0"}
