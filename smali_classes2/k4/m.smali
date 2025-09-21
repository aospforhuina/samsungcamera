.class public Lk4/m;
.super Ljava/lang/Object;
.source "OCRResultUtils.java"


# direct methods
.method public static synthetic a(Landroid/graphics/Point;)D
    .locals 2

    invoke-static {p0}, Lk4/m;->f(Landroid/graphics/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Landroid/graphics/Point;)D
    .locals 2

    invoke-static {p0}, Lk4/m;->g(Landroid/graphics/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static c()[Landroid/graphics/Point;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7fffffff

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/Point;

    const/high16 v3, -0x80000000

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static d([Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lk4/k;->a:Lk4/k;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v1

    double-to-int v1, v1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lk4/l;->a:Lk4/l;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v2

    double-to-int v0, v2

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static e([Landroid/graphics/Point;[Landroid/graphics/Point;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    .line 3
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 4
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    .line 5
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 6
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v0, 0x3

    .line 7
    aget-object v1, p0, v0

    aget-object v2, p0, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 8
    aget-object v1, p0, v0

    aget-object p0, p0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static synthetic f(Landroid/graphics/Point;)D
    .locals 2

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double v0, p0

    return-wide v0
.end method

.method private static synthetic g(Landroid/graphics/Point;)D
    .locals 2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v0, p0

    return-wide v0
.end method
