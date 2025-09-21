.class Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;
.super Ljava/lang/Object;
.source "PolarrCompositionGuideNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositionGuideParam"
.end annotation


# instance fields
.field private final a:[Landroid/hardware/camera2/params/Face;

.field private final b:Landroid/graphics/Rect;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method constructor <init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->a:[Landroid/hardware/camera2/params/Face;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->b:Landroid/graphics/Rect;

    .line 4
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->c:I

    .line 5
    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->d:I

    .line 6
    invoke-static {p5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->e:I

    .line 7
    invoke-static {p6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->f:I

    .line 8
    invoke-static {p7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->g:I

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->e:I

    return p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->c:I

    return p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->d:I

    return p0
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->f:I

    return p0
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->g:I

    return p0
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)[Landroid/hardware/camera2/params/Face;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->a:[Landroid/hardware/camera2/params/Face;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode$CompositionGuideParam;->b:Landroid/graphics/Rect;

    return-object p0
.end method
