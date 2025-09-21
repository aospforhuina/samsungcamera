.class public Lj/h;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lj/e;
.implements Lk/a$b;
.implements Lj/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lp/b;

.field private final d:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/m;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/g;

.field private final k:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Lo/d;",
            "Lo/d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lk/q;

.field private final q:Lcom/airbnb/lottie/n;

.field private final r:I

.field private s:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field t:F

.field private u:Lk/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lj/h;->d:Landroidx/collection/LongSparseArray;

    .line 3
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lj/h;->e:Landroidx/collection/LongSparseArray;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lj/h;->f:Landroid/graphics/Path;

    .line 5
    new-instance v1, Li/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Li/a;-><init>(I)V

    iput-object v1, p0, Lj/h;->g:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lj/h;->h:Landroid/graphics/RectF;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj/h;->i:Ljava/util/List;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lj/h;->t:F

    .line 9
    iput-object p2, p0, Lj/h;->c:Lp/b;

    .line 10
    invoke-virtual {p3}, Lo/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lj/h;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p3}, Lo/e;->i()Z

    move-result v1

    iput-boolean v1, p0, Lj/h;->b:Z

    .line 12
    iput-object p1, p0, Lj/h;->q:Lcom/airbnb/lottie/n;

    .line 13
    invoke-virtual {p3}, Lo/e;->e()Lo/g;

    move-result-object v1

    iput-object v1, p0, Lj/h;->j:Lo/g;

    .line 14
    invoke-virtual {p3}, Lo/e;->c()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/n;->G()Lh/h;

    move-result-object p1

    invoke-virtual {p1}, Lh/h;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lj/h;->r:I

    .line 16
    invoke-virtual {p3}, Lo/e;->d()Ln/c;

    move-result-object p1

    invoke-virtual {p1}, Ln/c;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/h;->k:Lk/a;

    .line 17
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 18
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 19
    invoke-virtual {p3}, Lo/e;->g()Ln/d;

    move-result-object p1

    invoke-virtual {p1}, Ln/d;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/h;->l:Lk/a;

    .line 20
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 21
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 22
    invoke-virtual {p3}, Lo/e;->h()Ln/f;

    move-result-object p1

    invoke-virtual {p1}, Ln/f;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/h;->m:Lk/a;

    .line 23
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 24
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 25
    invoke-virtual {p3}, Lo/e;->b()Ln/f;

    move-result-object p1

    invoke-virtual {p1}, Ln/f;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/h;->n:Lk/a;

    .line 26
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 27
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 28
    invoke-virtual {p2}, Lp/b;->v()Lo/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p2}, Lp/b;->v()Lo/a;

    move-result-object p1

    invoke-virtual {p1}, Lo/a;->a()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/h;->s:Lk/a;

    .line 30
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 31
    iget-object p1, p0, Lj/h;->s:Lk/a;

    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 32
    :cond_0
    invoke-virtual {p2}, Lp/b;->x()Lr/j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    new-instance p1, Lk/c;

    invoke-virtual {p2}, Lp/b;->x()Lr/j;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lk/c;-><init>(Lk/a$b;Lp/b;Lr/j;)V

    iput-object p1, p0, Lj/h;->u:Lk/c;

    :cond_1
    return-void
.end method

.method private f([I)[I
    .locals 3

    .line 1
    iget-object p0, p0, Lj/h;->p:Lk/q;

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

.method private i()I
    .locals 3

    .line 1
    iget-object v0, p0, Lj/h;->m:Lk/a;

    invoke-virtual {v0}, Lk/a;->f()F

    move-result v0

    iget v1, p0, Lj/h;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lj/h;->n:Lk/a;

    invoke-virtual {v1}, Lk/a;->f()F

    move-result v1

    iget v2, p0, Lj/h;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3
    iget-object v2, p0, Lj/h;->k:Lk/a;

    invoke-virtual {v2}, Lk/a;->f()F

    move-result v2

    iget p0, p0, Lj/h;->r:I

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

.method private j()Landroid/graphics/LinearGradient;
    .locals 14

    .line 1
    invoke-direct {p0}, Lj/h;->i()I

    move-result v0

    .line 2
    iget-object v1, p0, Lj/h;->d:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lj/h;->m:Lk/a;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4
    iget-object v1, p0, Lj/h;->n:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 5
    iget-object v4, p0, Lj/h;->k:Lk/a;

    invoke-virtual {v4}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    .line 6
    invoke-virtual {v4}, Lo/d;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lj/h;->f([I)[I

    move-result-object v11

    .line 7
    invoke-virtual {v4}, Lo/d;->b()[F

    move-result-object v12

    .line 8
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 9
    iget-object p0, p0, Lj/h;->d:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v4
.end method

.method private k()Landroid/graphics/RadialGradient;
    .locals 13

    .line 1
    invoke-direct {p0}, Lj/h;->i()I

    move-result v0

    .line 2
    iget-object v1, p0, Lj/h;->e:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lj/h;->m:Lk/a;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4
    iget-object v1, p0, Lj/h;->n:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 5
    iget-object v4, p0, Lj/h;->k:Lk/a;

    invoke-virtual {v4}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/d;

    .line 6
    invoke-virtual {v4}, Lo/d;->a()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lj/h;->f([I)[I

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

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v9, v0

    .line 13
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 14
    iget-object p0, p0, Lj/h;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lj/h;->q:Lcom/airbnb/lottie/n;

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/c;",
            ">;",
            "Ljava/util/List<",
            "Lj/c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/c;

    .line 3
    instance-of v1, v0, Lj/m;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lj/h;->i:Ljava/util/List;

    check-cast v0, Lj/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Object;Lu/c;)V
    .locals 2
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
    sget-object v0, Lh/u;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lj/h;->l:Lk/a;

    invoke-virtual {p0, p2}, Lk/a;->n(Lu/c;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Lh/u;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lj/h;->o:Lk/a;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lj/h;->c:Lp/b;

    invoke-virtual {v0, p1}, Lp/b;->G(Lk/a;)V

    :cond_1
    if-nez p2, :cond_2

    .line 6
    iput-object v1, p0, Lj/h;->o:Lk/a;

    goto/16 :goto_0

    .line 7
    :cond_2
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/h;->o:Lk/a;

    .line 8
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 9
    iget-object p1, p0, Lj/h;->c:Lp/b;

    iget-object p0, p0, Lj/h;->o:Lk/a;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v0, Lh/u;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    .line 11
    iget-object p1, p0, Lj/h;->p:Lk/q;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lj/h;->c:Lp/b;

    invoke-virtual {v0, p1}, Lp/b;->G(Lk/a;)V

    :cond_4
    if-nez p2, :cond_5

    .line 13
    iput-object v1, p0, Lj/h;->p:Lk/q;

    goto/16 :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Lj/h;->d:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 15
    iget-object p1, p0, Lj/h;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 16
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/h;->p:Lk/q;

    .line 17
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 18
    iget-object p1, p0, Lj/h;->c:Lp/b;

    iget-object p0, p0, Lj/h;->p:Lk/q;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    goto :goto_0

    .line 19
    :cond_6
    sget-object v0, Lh/u;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 20
    iget-object p1, p0, Lj/h;->s:Lk/a;

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p1, p2}, Lk/a;->n(Lu/c;)V

    goto :goto_0

    .line 22
    :cond_7
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/h;->s:Lk/a;

    .line 23
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 24
    iget-object p1, p0, Lj/h;->c:Lp/b;

    iget-object p0, p0, Lj/h;->s:Lk/a;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    goto :goto_0

    .line 25
    :cond_8
    sget-object v0, Lh/u;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lj/h;->u:Lk/c;

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {v0, p2}, Lk/c;->c(Lu/c;)V

    goto :goto_0

    .line 27
    :cond_9
    sget-object v0, Lh/u;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lj/h;->u:Lk/c;

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v0, p2}, Lk/c;->f(Lu/c;)V

    goto :goto_0

    .line 29
    :cond_a
    sget-object v0, Lh/u;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lj/h;->u:Lk/c;

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {v0, p2}, Lk/c;->d(Lu/c;)V

    goto :goto_0

    .line 31
    :cond_b
    sget-object v0, Lh/u;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lj/h;->u:Lk/c;

    if-eqz v0, :cond_c

    .line 32
    invoke-virtual {v0, p2}, Lk/c;->e(Lu/c;)V

    goto :goto_0

    .line 33
    :cond_c
    sget-object v0, Lh/u;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Lj/h;->u:Lk/c;

    if-eqz p0, :cond_d

    .line 34
    invoke-virtual {p0, p2}, Lk/c;->g(Lu/c;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lj/h;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, Lj/h;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lj/h;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lj/h;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj/m;

    invoke-interface {v2}, Lj/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lj/h;->f:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public g(Lm/e;ILjava/util/List;Lm/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e;",
            "I",
            "Ljava/util/List<",
            "Lm/e;",
            ">;",
            "Lm/e;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lt/g;->k(Lm/e;ILjava/util/List;Lm/e;Lj/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    .line 2
    invoke-static {v0}, Lh/c;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lj/h;->f:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lj/h;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lj/h;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lj/h;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/m;

    invoke-interface {v4}, Lj/m;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lj/h;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lj/h;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 7
    iget-object v2, p0, Lj/h;->j:Lo/g;

    sget-object v3, Lo/g;->a:Lo/g;

    if-ne v2, v3, :cond_2

    .line 8
    invoke-direct {p0}, Lj/h;->j()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lj/h;->k()Landroid/graphics/RadialGradient;

    move-result-object v2

    .line 10
    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 11
    iget-object p2, p0, Lj/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    iget-object p2, p0, Lj/h;->o:Lk/a;

    if-eqz p2, :cond_3

    .line 13
    iget-object v2, p0, Lj/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    :cond_3
    iget-object p2, p0, Lj/h;->s:Lk/a;

    if-eqz p2, :cond_6

    .line 15
    invoke-virtual {p2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_4

    .line 16
    iget-object v2, p0, Lj/h;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    .line 17
    :cond_4
    iget v2, p0, Lj/h;->t:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_5

    .line 18
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, p2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 19
    iget-object v3, p0, Lj/h;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 20
    :cond_5
    :goto_2
    iput p2, p0, Lj/h;->t:F

    .line 21
    :cond_6
    iget-object p2, p0, Lj/h;->u:Lk/c;

    if-eqz p2, :cond_7

    .line 22
    iget-object v2, p0, Lj/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Lk/c;->b(Landroid/graphics/Paint;)V

    :cond_7
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 23
    iget-object v2, p0, Lj/h;->l:Lk/a;

    invoke-virtual {v2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 24
    iget-object p3, p0, Lj/h;->g:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lt/g;->c(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget-object p2, p0, Lj/h;->f:Landroid/graphics/Path;

    iget-object p0, p0, Lj/h;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 26
    invoke-static {v0}, Lh/c;->b(Ljava/lang/String;)F

    return-void
.end method
