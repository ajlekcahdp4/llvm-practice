; ModuleID = '../highlife/main.c'
source_filename = "../highlife/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"cells[x][y] != kBorn && cells[x][y] != kDied\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"../highlife/main.c\00", align 1
@__PRETTY_FUNCTION__.count_neighbors = private unnamed_addr constant [71 x i8] c"unsigned int count_neighbors(char (*)[92], unsigned int, unsigned int)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [92 x [92 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 8464, ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8464) %1, i8 0, i64 8464, i1 false)
  %2 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 46, i64 47
  store i8 1, ptr %2, align 1, !tbaa !4
  %3 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 46, i64 48
  store i8 1, ptr %3, align 8, !tbaa !4
  %4 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 46, i64 49
  store i8 1, ptr %4, align 1, !tbaa !4
  %5 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 47, i64 46
  store i8 1, ptr %5, align 2, !tbaa !4
  %6 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 48, i64 46
  store i8 1, ptr %6, align 2, !tbaa !4
  %7 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 49, i64 46
  store i8 1, ptr %7, align 2, !tbaa !4
  tail call void @init_sdl(i32 noundef 920, i32 noundef 920, i32 noundef 10, i32 noundef 50) #5
  br label %8

8:                                                ; preds = %0, %120
  %9 = phi i32 [ 0, %0 ], [ %121, %120 ]
  br label %11

10:                                               ; preds = %120
  tail call void (...) @destroy_sdl() #5
  call void @llvm.lifetime.end.p0(i64 8464, ptr nonnull %1) #5
  ret i32 0

11:                                               ; preds = %8, %123
  %12 = phi i64 [ 0, %8 ], [ %124, %123 ]
  %13 = trunc i64 %12 to i32
  %14 = trunc i64 %12 to i32
  br label %126

15:                                               ; preds = %123
  tail call void (...) @flush() #5
  br label %16

16:                                               ; preds = %23, %15
  %17 = phi i64 [ 0, %15 ], [ %24, %23 ]
  %18 = icmp eq i64 %17, 91
  %19 = icmp ne i64 %17, 0
  %20 = sext i1 %19 to i32
  %21 = select i1 %18, i32 1, i32 2
  %22 = trunc i64 %17 to i32
  br label %26

23:                                               ; preds = %95
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 92
  br i1 %25, label %98, label %16, !llvm.loop !7

26:                                               ; preds = %95, %16
  %27 = phi i64 [ 0, %16 ], [ %96, %95 ]
  %28 = getelementptr [92 x i8], ptr %1, i64 %17, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !4
  %30 = and i8 %29, -2
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 20, ptr noundef nonnull @__PRETTY_FUNCTION__.count_neighbors) #6
  unreachable

33:                                               ; preds = %26
  %34 = icmp ne i64 %27, 0
  %35 = sext i1 %34 to i32
  %36 = icmp eq i64 %27, 91
  %37 = select i1 %36, i32 1, i32 2
  %38 = trunc i64 %27 to i32
  %39 = sub nsw i32 %37, %35
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = add nsw i32 %35, %38
  %43 = zext i32 %42 to i64
  %44 = xor i1 %34, true
  %45 = zext i1 %44 to i32
  br label %46

46:                                               ; preds = %59, %33
  %47 = phi i32 [ %20, %33 ], [ %60, %59 ]
  %48 = phi i32 [ 0, %33 ], [ %81, %59 ]
  %49 = add nsw i32 %47, %22
  %50 = zext i32 %49 to i64
  br i1 %41, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr [92 x i8], ptr %1, i64 %50, i64 %43
  %53 = load i8, ptr %52, align 1, !tbaa !4
  switch i8 %53, label %56 [
    i8 1, label %54
    i8 3, label %54
  ]

54:                                               ; preds = %51, %51
  %55 = add i32 %48, 1
  br label %56

56:                                               ; preds = %46, %54, %51
  %57 = phi i32 [ %35, %46 ], [ %45, %54 ], [ %45, %51 ]
  %58 = phi i32 [ %48, %46 ], [ %55, %54 ], [ %48, %51 ]
  br label %62

59:                                               ; preds = %80
  %60 = add nsw i32 %47, 1
  %61 = icmp eq i32 %60, %21
  br i1 %61, label %84, label %46, !llvm.loop !9

62:                                               ; preds = %80, %56
  %63 = phi i32 [ %57, %56 ], [ %82, %80 ]
  %64 = phi i32 [ %58, %56 ], [ %81, %80 ]
  %65 = add nsw i32 %63, %38
  %66 = zext i32 %65 to i64
  %67 = getelementptr [92 x i8], ptr %1, i64 %50, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !4
  switch i8 %68, label %71 [
    i8 1, label %69
    i8 3, label %69
  ]

69:                                               ; preds = %62, %62
  %70 = add i32 %64, 1
  br label %71

71:                                               ; preds = %69, %62
  %72 = phi i32 [ %70, %69 ], [ %64, %62 ]
  %73 = add nsw i32 %63, 1
  %74 = add nsw i32 %73, %38
  %75 = zext i32 %74 to i64
  %76 = getelementptr [92 x i8], ptr %1, i64 %50, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !4
  switch i8 %77, label %80 [
    i8 1, label %78
    i8 3, label %78
  ]

78:                                               ; preds = %71, %71
  %79 = add i32 %72, 1
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi i32 [ %79, %78 ], [ %72, %71 ]
  %82 = add nsw i32 %63, 2
  %83 = icmp eq i32 %82, %37
  br i1 %83, label %59, label %62, !llvm.loop !10

84:                                               ; preds = %59
  %85 = icmp eq i8 %29, 1
  %86 = sext i1 %85 to i32
  %87 = add i32 %81, %86
  switch i8 %29, label %92 [
    i8 1, label %88
    i8 0, label %91
  ]

88:                                               ; preds = %84
  %89 = add i32 %87, -4
  %90 = icmp ult i32 %89, -2
  br i1 %90, label %93, label %95

91:                                               ; preds = %84
  switch i32 %87, label %95 [
    i32 6, label %93
    i32 3, label %93
  ]

92:                                               ; preds = %84
  tail call void @abort() #6
  unreachable

93:                                               ; preds = %91, %91, %88
  %94 = phi i8 [ 3, %88 ], [ 2, %91 ], [ 2, %91 ]
  store i8 %94, ptr %28, align 1, !tbaa !4
  br label %95

95:                                               ; preds = %93, %91, %88
  %96 = add nuw nsw i64 %27, 1
  %97 = icmp eq i64 %96, 92
  br i1 %97, label %23, label %26, !llvm.loop !11

98:                                               ; preds = %23, %100
  %99 = phi i64 [ %101, %100 ], [ 0, %23 ]
  br label %103

100:                                              ; preds = %117
  %101 = add nuw nsw i64 %99, 1
  %102 = icmp eq i64 %101, 92
  br i1 %102, label %120, label %98, !llvm.loop !12

103:                                              ; preds = %117, %98
  %104 = phi i64 [ 0, %98 ], [ %118, %117 ]
  %105 = getelementptr [92 x i8], ptr %1, i64 %99, i64 %104
  %106 = load i8, ptr %105, align 2, !tbaa !4
  switch i8 %106, label %110 [
    i8 2, label %108
    i8 3, label %107
  ]

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i8 [ 0, %107 ], [ 1, %103 ]
  store i8 %109, ptr %105, align 2, !tbaa !4
  br label %110

110:                                              ; preds = %108, %103
  %111 = or disjoint i64 %104, 1
  %112 = getelementptr [92 x i8], ptr %1, i64 %99, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !4
  switch i8 %113, label %117 [
    i8 2, label %115
    i8 3, label %114
  ]

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i8 [ 0, %114 ], [ 1, %110 ]
  store i8 %116, ptr %112, align 1, !tbaa !4
  br label %117

117:                                              ; preds = %115, %110
  %118 = add nuw nsw i64 %104, 2
  %119 = icmp eq i64 %118, 92
  br i1 %119, label %100, label %103, !llvm.loop !13

120:                                              ; preds = %100
  %121 = add nuw nsw i32 %9, 1
  %122 = icmp eq i32 %121, 1000
  br i1 %122, label %10, label %8, !llvm.loop !14

123:                                              ; preds = %134
  %124 = add nuw nsw i64 %12, 1
  %125 = icmp eq i64 %124, 92
  br i1 %125, label %15, label %11, !llvm.loop !15

126:                                              ; preds = %11, %134
  %127 = phi i64 [ 0, %11 ], [ %135, %134 ]
  %128 = getelementptr [92 x [92 x i8]], ptr %1, i64 0, i64 %12, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !4
  %130 = icmp eq i8 %129, 1
  %131 = trunc i64 %127 to i32
  br i1 %130, label %132, label %133

132:                                              ; preds = %126
  tail call void @put_cell(i32 noundef %14, i32 noundef %131, i32 noundef 16777215) #5
  br label %134

133:                                              ; preds = %126
  tail call void @put_cell(i32 noundef %13, i32 noundef %131, i32 noundef 0) #5
  br label %134

134:                                              ; preds = %132, %133
  %135 = add nuw nsw i64 %127, 1
  %136 = icmp eq i64 %135, 92
  br i1 %136, label %123, label %126, !llvm.loop !16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @init_sdl(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @put_cell(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @flush(...) local_unnamed_addr #3

declare void @destroy_sdl(...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="4" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.1.8"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
