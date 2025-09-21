.class public Lj/i;
.super Lj/a;
.source "GradientStrokeContent.java"


# instance fields
.field private final A:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lk/q;

.field private final r:Ljava/lang/String;

.field private final s:Z

.field private final t:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Landroid/graphics/RectF;

.field private final w:Lo/g;

.field private final x:I

.field private final y:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Lo/d;",
            "Lo/d;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/f;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lo/f;->b()Lo/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lo/r$b;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 2
    invoke-virtual {p3}, Lo/f;->g()Lo/r$c;

    move-result-object v0

    invoke-virtual {v0}, Lo/r$c;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lo/f;->i()F

    move-result v6

    invoke-virtual {p3}, Lo/f;->k()Ln/d;

    move-result-object v7

    .line 3
    invoke-virtual {p3}, Lo/f;->m()Ln/b;

    move-result-object v8

    invoke-virtual {p3}, Lo/f;->h()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lo/f;->c()Ln/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v10}, Lj/a;-><init>(Lcom/airbnb/lottie/n;Lp/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLn/d;Ln/b;Ljava/util/List;Ln/b;)V

    .line 5
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lj/i;->t:Landroidx/collection/LongSparseArray;

    .line 6
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lj/i;->u:Landroidx/collection/LongSparseArray;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lj/i;->v:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {p3}, Lo/f;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj/i;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {p3}, Lo/f;->f()Lo/g;

    move-result-object v0

    iput-object v0, p0, Lj/i;->w:Lo/g;

    .line 10
    invoke-virtual {p3}, Lo/f;->n()Z

    move-result v0

    iput-boolean v0, p0, Lj/i;->s:Z

    .line 11
    invoke-virtual {p1}, Lcom/airbnb/lottie/n;->G()Lh/h;

    move-result-object p1

    invoke-virtual {p1}, Lh/h;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lj/i;->x:I

    .line 12
    invoke-virtual {p3}, Lo/f;->e()Ln/c;

    move-result-object p1

    invoke-virtual {p1}, Ln/c;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/i;->y:Lk/a;

    .line 13
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 14
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 15
    invoke-virtual {p3}, Lo/f;->l()Ln/f;

    move-result-object p1

    invoke-virtual {p1}, Ln/f;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/i;->z:Lk/a;

    .line 16
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 17
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 18
    invoke-virtual {p3}, Lo/f;->d()Ln/f;

    move-result-object p1

    invoke-virtual {p1}, Ln/f;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/i;->A:Lk/a;

    .line 19
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 20
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    return-void
.end method

.method private j([I)[I
    .locals 3

    .line 1
    iget-object p0, p0, Lj/i;->B:Lk/q;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lk/q;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    .line 3
    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 5
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    .line 7
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    .line 8
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lj/i;->z:Lk/a;

    invoke-virtual {v0}, Lk/a;->f()F

    move-result v0

    iget v1, p0, Lj/i;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lj/i;->A:Lk/a;

    invoke-virtual {v1}, Lk/a;->f()F

    move-result v1

    iget v2, p0, Lj/i;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3
    iget-object v2, p0, Lj/i;->y:Lk/a;

    invoke-virtual {v2}, Lk/a;->f()F

    move-result v2

    iget p0, p0, Lj/i;->x:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method private l()Landroid/graphics/LinearGradient;
    .locals 14

    .line 1
    invoke-direct {p0}, Lj/i;->k()I

    move-result v0

    .line 2
    iget-object v1, p0, Lj/i;->t:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lj/i;->z:Lk/a;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4
    iget-object v1, p0, Lj/i;->A:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 5
    iget-object v4, p0, Lj/i;->y:Lk/a;

    invoke-virtual {v4}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    .line 6
    invoke-virtual {v4}, Lo/d;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lj/i;->j([I)[I

    move-result-object v11

    .line 7
    invoke-virtual {v4}, Lo/d;->b()[F

    move-result-object v12

    .line 8
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 9
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 10
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 11
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 12
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 13
    iget-object p0, p0, Lj/i;->t:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method

.method private m()Landroid/graphics/RadialGradient;
    .locals 13

    .line 1
    invoke-direct {p0}, Lj/i;->k()I

    move-result v0

    .line 2
    iget-object v1, p0, Lj/i;->u:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lj/i;->z:Lk/a;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4
    iget-object v1, p0, Lj/i;->A:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 5
    iget-object v4, p0, Lj/i;->y:Lk/a;

    invoke-virtual {v4}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    .line 6
    invoke-virtual {v4}, Lo/d;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lj/i;->j([I)[I

    move-result-object v10

    .line 7
    invoke-virtual {v4}, Lo/d;->b()[F

    move-result-object v11

    .line 8
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 9
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 10
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 11
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    .line 12
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    .line 13
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 14
    iget-object p0, p0, Lj/i;->u:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;Lu/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lu/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lj/a;->d(Ljava/lang/Object;Lu/c;)V

    .line 2
    sget-object v0, Lh/u;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lj/i;->B:Lk/q;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lj/a;->f:Lp/b;

    invoke-virtual {v0, p1}, Lp/b;->G(Lk/a;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj/i;->B:Lk/q;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/i;->B:Lk/q;

    .line 7
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 8
    iget-object p1, p0, Lj/a;->f:Lp/b;

    iget-object p0, p0, Lj/i;->B:Lk/q;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj/i;->r:Ljava/lang/String;

    return-object p0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/i;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lj/i;->v:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lj/a;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 3
    iget-object v0, p0, Lj/i;->w:Lo/g;

    sget-object v1, Lo/g;->a:Lo/g;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lj/i;->l()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lj/i;->m()Landroid/graphics/RadialGradient;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Lj/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    invoke-super {p0, p1, p2, p3}, Lj/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
