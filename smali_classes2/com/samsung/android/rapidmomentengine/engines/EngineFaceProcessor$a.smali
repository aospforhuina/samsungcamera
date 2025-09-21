.class Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;
.super Ljava/lang/Object;
.source "EngineFaceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static synthetic a(Lz3/c;)F
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->e(Lz3/c;)F

    move-result p0

    return p0
.end method

.method static synthetic b([Ljava/lang/Double;Lz3/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->g([Ljava/lang/Double;Lz3/a;)V

    return-void
.end method

.method static synthetic c(ILz3/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->f(ILz3/a;)V

    return-void
.end method

.method static synthetic d(DD)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->j(DD)I

    move-result p0

    return p0
.end method

.method private static e(Lz3/c;)F
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calculateFaceRatioInOrigImage: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lz3/c;->g()I

    move-result v1

    invoke-virtual {p0}, Lz3/c;->f()I

    move-result v2

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lz3/c;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lz3/c;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lz3/c;->d()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->i(Ljava/util/List;)I

    move-result p0

    .line 5
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateFaceRatioInOrigImage: faceArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateFaceRatioInOrigImage: origArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "calculateFaceRatioInOrigImage: X"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method private static f(ILz3/a;)V
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lz3/a$a;->f:Lz3/a$a;

    invoke-virtual {p1, p0}, Lz3/a;->c(Lz3/a$a;)V

    return-void

    .line 2
    :cond_0
    sget-object p0, Lz3/a$a;->d:Lz3/a$a;

    invoke-virtual {p1, p0}, Lz3/a;->c(Lz3/a$a;)V

    return-void

    .line 3
    :cond_1
    sget-object p0, Lz3/a$a;->c:Lz3/a$a;

    invoke-virtual {p1, p0}, Lz3/a;->c(Lz3/a$a;)V

    return-void

    .line 4
    :cond_2
    sget-object p0, Lz3/a$a;->b:Lz3/a$a;

    invoke-virtual {p1, p0}, Lz3/a;->c(Lz3/a$a;)V

    return-void

    .line 5
    :cond_3
    sget-object p0, Lz3/a$a;->a:Lz3/a$a;

    invoke-virtual {p1, p0}, Lz3/a;->c(Lz3/a$a;)V

    return-void
.end method

.method private static g([Ljava/lang/Double;Lz3/a;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->h([Ljava/lang/Double;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lz3/a$b;->f:Lz3/a$b;

    invoke-virtual {p1, p0}, Lz3/a;->d(Lz3/a$b;)V

    return-void

    .line 3
    :cond_0
    sget-object p0, Lz3/a$b;->d:Lz3/a$b;

    invoke-virtual {p1, p0}, Lz3/a;->d(Lz3/a$b;)V

    return-void

    .line 4
    :cond_1
    sget-object p0, Lz3/a$b;->c:Lz3/a$b;

    invoke-virtual {p1, p0}, Lz3/a;->d(Lz3/a$b;)V

    return-void

    .line 5
    :cond_2
    sget-object p0, Lz3/a$b;->b:Lz3/a$b;

    invoke-virtual {p1, p0}, Lz3/a;->d(Lz3/a$b;)V

    return-void

    .line 6
    :cond_3
    sget-object p0, Lz3/a$b;->a:Lz3/a$b;

    invoke-virtual {p1, p0}, Lz3/a;->d(Lz3/a$b;)V

    return-void
.end method

.method private static h([Ljava/lang/Double;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static i(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr v1, p0

    return v1
.end method

.method private static j(DD)I
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    div-double/2addr p0, v0

    div-double/2addr p2, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3fbc710cb295e9e2L    # 0.1111

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    cmpl-double p0, v2, p0

    if-lez p0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    cmpg-double p0, v0, p2

    if-gez p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    cmpl-double p0, v2, p2

    if-lez p0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
