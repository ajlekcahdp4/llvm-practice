; ModuleID = 'mymodule'
source_filename = "mymodule"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg %0, ptr nocapture %1) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly %0, i8 %1, i64 %2, i1 immarg %3) #1

declare void @init_sdl(i32 %0, i32 %1, i32 %2, i32 %3)

declare void @destroy_sdl()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg %0, ptr nocapture %1) #0

declare void @flush()

declare void @put_cell(i32 %0, i32 %1, i32 %2)

define i32 @main() {
  %1 = alloca [92 x [92 x i8]], align 1
  call void @llvm.lifetime.start.p0(i64 8464, ptr %1)
  call void @llvm.memset.p0.i64(ptr %1, i8 0, i64 8464, i1 false)
  %2 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 46, i64 47
  store i8 1, ptr %2, align 1
  %3 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 46, i64 48
  store i8 1, ptr %3, align 1
  %4 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 46, i64 49
  store i8 1, ptr %4, align 1
  %5 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 47, i64 46
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 48, i64 46
  store i8 1, ptr %6, align 1
  %7 = getelementptr inbounds [92 x [92 x i8]], ptr %1, i64 0, i64 49, i64 46
  store i8 1, ptr %7, align 1
  call void @init_sdl(i32 920, i32 920, i32 10, i32 50)
  br label %8

8:                                                ; preds = %115, %0
  %9 = phi i32 [ 0, %0 ], [ %116, %115 ]
  br label %11

10:                                               ; preds = %115
  call void @destroy_sdl()
  call void @llvm.lifetime.end.p0(i64 8464, ptr %1)
  ret i32 0

11:                                               ; preds = %118, %8
  %12 = phi i64 [ 0, %8 ], [ %119, %118 ]
  %13 = trunc i64 %12 to i32
  %14 = trunc i64 %12 to i32
  br label %121

15:                                               ; preds = %118
  call void @flush()
  br label %16

16:                                               ; preds = %23, %15
  %17 = phi i64 [ 0, %15 ], [ %24, %23 ]
  %18 = icmp eq i64 %17, 91
  %19 = icmp ne i64 %17, 0
  %20 = sext i1 %19 to i32
  %21 = select i1 %18, i32 1, i32 2
  %22 = trunc i64 %17 to i32
  br label %26

23:                                               ; preds = %90
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 92
  br i1 %25, label %93, label %16

26:                                               ; preds = %90, %16
  %27 = phi i64 [ 0, %16 ], [ %91, %90 ]
  %28 = icmp ne i64 %27, 0
  %29 = sext i1 %28 to i32
  %30 = icmp eq i64 %27, 91
  %31 = select i1 %30, i32 1, i32 2
  %32 = trunc i64 %27 to i32
  %33 = sub nsw i32 %31, %29
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = add nsw i32 %29, %32
  %37 = zext i32 %36 to i64
  %38 = xor i1 %28, true
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %53, %26
  %41 = phi i32 [ %20, %26 ], [ %54, %53 ]
  %42 = phi i32 [ 0, %26 ], [ %75, %53 ]
  %43 = add nsw i32 %41, %22
  %44 = zext i32 %43 to i64
  br i1 %35, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr [92 x i8], ptr %1, i64 %44, i64 %37
  %47 = load i8, ptr %46, align 1
  switch i8 %47, label %50 [
    i8 1, label %48
    i8 3, label %48
  ]

48:                                               ; preds = %45, %45
  %49 = add i32 %42, 1
  br label %50

50:                                               ; preds = %48, %45, %40
  %51 = phi i32 [ %29, %40 ], [ %39, %48 ], [ %39, %45 ]
  %52 = phi i32 [ %42, %40 ], [ %49, %48 ], [ %42, %45 ]
  br label %56

53:                                               ; preds = %74
  %54 = add nsw i32 %41, 1
  %55 = icmp eq i32 %54, %21
  br i1 %55, label %78, label %40

56:                                               ; preds = %74, %50
  %57 = phi i32 [ %51, %50 ], [ %76, %74 ]
  %58 = phi i32 [ %52, %50 ], [ %75, %74 ]
  %59 = add nsw i32 %57, %32
  %60 = zext i32 %59 to i64
  %61 = getelementptr [92 x i8], ptr %1, i64 %44, i64 %60
  %62 = load i8, ptr %61, align 1
  switch i8 %62, label %65 [
    i8 1, label %63
    i8 3, label %63
  ]

63:                                               ; preds = %56, %56
  %64 = add i32 %58, 1
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi i32 [ %64, %63 ], [ %58, %56 ]
  %67 = add nsw i32 %57, 1
  %68 = add nsw i32 %67, %32
  %69 = zext i32 %68 to i64
  %70 = getelementptr [92 x i8], ptr %1, i64 %44, i64 %69
  %71 = load i8, ptr %70, align 1
  switch i8 %71, label %74 [
    i8 1, label %72
    i8 3, label %72
  ]

72:                                               ; preds = %65, %65
  %73 = add i32 %66, 1
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi i32 [ %73, %72 ], [ %66, %65 ]
  %76 = add nsw i32 %57, 2
  %77 = icmp eq i32 %76, %31
  br i1 %77, label %53, label %56

78:                                               ; preds = %53
  %79 = getelementptr [92 x i8], ptr %1, i64 %17, i64 %27
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 1
  %82 = sext i1 %81 to i32
  %83 = add i32 %75, %82
  switch i8 %80, label %90 [
    i8 1, label %84
    i8 0, label %87
  ]

84:                                               ; preds = %78
  %85 = add i32 %83, -4
  %86 = icmp ult i32 %85, -2
  br i1 %86, label %88, label %90

87:                                               ; preds = %78
  switch i32 %83, label %90 [
    i32 6, label %88
    i32 3, label %88
  ]

88:                                               ; preds = %87, %87, %84
  %89 = phi i8 [ 3, %84 ], [ 2, %87 ], [ 2, %87 ]
  store i8 %89, ptr %79, align 1
  br label %90

90:                                               ; preds = %88, %87, %84, %78
  %91 = add nuw nsw i64 %27, 1
  %92 = icmp eq i64 %91, 92
  br i1 %92, label %23, label %26

93:                                               ; preds = %95, %23
  %94 = phi i64 [ %96, %95 ], [ 0, %23 ]
  br label %98

95:                                               ; preds = %112
  %96 = add nuw nsw i64 %94, 1
  %97 = icmp eq i64 %96, 92
  br i1 %97, label %115, label %93

98:                                               ; preds = %112, %93
  %99 = phi i64 [ 0, %93 ], [ %113, %112 ]
  %100 = getelementptr [92 x i8], ptr %1, i64 %94, i64 %99
  %101 = load i8, ptr %100, align 1
  switch i8 %101, label %105 [
    i8 2, label %103
    i8 3, label %102
  ]

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i8 [ 0, %102 ], [ 1, %98 ]
  store i8 %104, ptr %100, align 1
  br label %105

105:                                              ; preds = %103, %98
  %106 = or disjoint i64 %99, 1
  %107 = getelementptr [92 x i8], ptr %1, i64 %94, i64 %106
  %108 = load i8, ptr %107, align 1
  switch i8 %108, label %112 [
    i8 2, label %110
    i8 3, label %109
  ]

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i8 [ 0, %109 ], [ 1, %105 ]
  store i8 %111, ptr %107, align 1
  br label %112

112:                                              ; preds = %110, %105
  %113 = add nuw nsw i64 %99, 2
  %114 = icmp eq i64 %113, 92
  br i1 %114, label %95, label %98

115:                                              ; preds = %95
  %116 = add nuw nsw i32 %9, 1
  %117 = icmp eq i32 %116, 1000
  br i1 %117, label %10, label %8

118:                                              ; preds = %129
  %119 = add nuw nsw i64 %12, 1
  %120 = icmp eq i64 %119, 92
  br i1 %120, label %15, label %11

121:                                              ; preds = %129, %11
  %122 = phi i64 [ 0, %11 ], [ %130, %129 ]
  %123 = getelementptr [92 x [92 x i8]], ptr %1, i64 0, i64 %12, i64 %122
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 1
  %126 = trunc i64 %122 to i32
  br i1 %125, label %127, label %128

127:                                              ; preds = %121
  call void @put_cell(i32 %14, i32 %126, i32 16777215)
  br label %129

128:                                              ; preds = %121
  call void @put_cell(i32 %13, i32 %126, i32 0)
  br label %129

129:                                              ; preds = %128, %127
  %130 = add nuw nsw i64 %122, 1
  %131 = icmp eq i64 %130, 92
  br i1 %131, label %118, label %121
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
