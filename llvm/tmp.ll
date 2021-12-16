; ModuleID = 'tmp.cpp'
source_filename = "tmp.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

@a = global [20 x [20 x i32]] zeroinitializer, align 16
@b = global i32 1, align 4
@c = global i32 2, align 4

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [20 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %4, align 1
  %12 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %12, align 16
  %13 = load i32, i32* getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @a, i64 0, i64 0, i64 1), align 4
  %14 = load i32, i32* getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @a, i64 0, i64 2, i64 3), align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = call noalias nonnull i8* @_Znam(i64 24) #2
  %17 = bitcast i8* %16 to i32**
  store i32** %17, i32*** %7, align 8
  %18 = call noalias nonnull i8* @_Znam(i64 80) #2
  %19 = bitcast i8* %18 to i32*
  %20 = load i32**, i32*** %7, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  store i32* %19, i32** %21, align 8
  %22 = load i32**, i32*** %7, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* null, i32** %23, align 8
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znam(i64) #1

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 13.0.0"}
