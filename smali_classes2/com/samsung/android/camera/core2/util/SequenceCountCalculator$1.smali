.class final enum Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$1;
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
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/util/o2;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/util/i2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected n(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->b:I

    iget v0, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->c:I

    add-int/2addr p1, v0

    .line 4
    :goto_0
    new-instance v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;

    const/4 v1, 0x0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->d:I

    invoke-direct {v0, p1, v1, p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;-><init>(III)V

    return-object v0
.end method
