.class final enum Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$2;
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

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/l2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$2;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic x(Lcom/samsung/android/camera/core2/container/CaptureIndexInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$2;->y(Lcom/samsung/android/camera/core2/container/CaptureIndexInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic y(Lcom/samsung/android/camera/core2/container/CaptureIndexInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/CaptureIndexInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/CaptureIndexInfo;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected n(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->b:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/camera/core2/util/j2;

    invoke-direct {v2, p1}, Lcom/samsung/android/camera/core2/util/j2;-><init>(Lcom/samsung/android/camera/core2/container/DynamicShotMode;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/camera/core2/util/k2;->a:Lcom/samsung/android/camera/core2/util/k2;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    long-to-int p1, v2

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;

    iget v2, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->b:I

    add-int/2addr v2, p1

    iget p0, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->d:I

    invoke-direct {v0, v2, v1, p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;-><init>(III)V

    return-object v0
.end method
