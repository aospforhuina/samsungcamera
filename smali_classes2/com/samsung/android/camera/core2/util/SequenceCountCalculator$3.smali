.class final enum Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$3;
.super Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;
.source "SequenceCountCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/o2;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/m2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$3;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;)V

    return-void
.end method


# virtual methods
.method public n(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;
    .locals 2

    .line 1
    iget p1, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->b:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v1, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->c:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;

    iget p0, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->d:I

    invoke-direct {v0, p1, p1, p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;-><init>(III)V

    return-object v0
.end method
