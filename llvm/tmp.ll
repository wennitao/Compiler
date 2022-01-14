; ModuleID = 'tmp.cpp'
source_filename = "tmp.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

@n = global i32 0, align 4
@a = global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define void @_Z8exchangeii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** @a, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** @a, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @a, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** @a, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %20, i32* %24, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @_Z8makeHeapv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @n, align 4
  %5 = sub nsw i32 %4, 1
  %6 = sdiv i32 %5, 2
  store i32 %6, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %52, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @n, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load i32*, i32** @a, align 8
  %20 = load i32, i32* %1, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @a, align 8
  %27 = load i32, i32* %1, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %25, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load i32, i32* %1, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %18, %10
  %38 = load i32*, i32** @a, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @a, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %3, align 4
  call void @_Z8exchangeii(i32 %50, i32 %51)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i32, i32* %1, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %7, !llvm.loop !5

55:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @_Z10adjustHeapi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %73, %1
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %8, 2
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %12
  %21 = load i32*, i32** @a, align 8
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @a, align 8
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %27, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %20, %12
  %40 = load i32*, i32** @a, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @a, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %44, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %39
  %52 = load i32*, i32** @a, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** @a, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @a, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** @a, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %39
  br label %74

73:                                               ; preds = %51
  br label %7, !llvm.loop !7

74:                                               ; preds = %72, %7
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define i32 @_Z8heapSortv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %34, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @n, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = load i32*, i32** @a, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @a, align 8
  %12 = load i32, i32* @n, align 4
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @a, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32*, i32** @a, align 8
  %23 = load i32, i32* @n, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* @n, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @_Z10adjustHeapi(i32 %32)
  br label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %3, !llvm.loop !8

37:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* @n)
  %4 = load i32, i32* @n, align 4
  %5 = sext i32 %4 to i64
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %5, i64 4)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %10 = call noalias nonnull i8* @_Znam(i64 %9) #5
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** @a, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %22, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @n, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32*, i32** @a, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %12, !llvm.loop !9

25:                                               ; preds = %12
  %26 = call i32 @_Z8makeHeapv()
  %27 = call i32 @_Z8heapSortv()
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %39, %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @n, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32*, i32** @a, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %28, !llvm.loop !10

42:                                               ; preds = %28
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare i32 @scanf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znam(i64) #4

declare i32 @printf(i8*, ...) #2

attributes #0 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Homebrew clang version 13.0.0"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
