.class public Lj/q;
.super Ljava/lang/Object;
.source "RoundedCornersContent.java"

# interfaces
.implements Lj/s;
.implements Lk/a$b;


# instance fields
.field private final a:Lcom/airbnb/lottie/n;

.field private final b:Ljava/lang/String;

.field private final c:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/n;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/q;->a:Lcom/airbnb/lottie/n;

    .line 3
    invoke-virtual {p3}, Lo/m;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj/q;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Lo/m;->b()Ln/m;

    move-result-object p1

    invoke-interface {p1}, Ln/m;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/q;->c:Lk/a;

    .line 5
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 6
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    return-void
.end method

.method private static d(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int/2addr p1, v0

    if-eq p1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private static f(II)I
    .locals 1

    invoke-static {p0, p1}, Lj/q;->d(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method private i(Lo/n;)Lo/n;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lo/n;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lo/n;->d()Z

    move-result v1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ltz v2, :cond_4

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm/a;

    add-int/lit8 v7, v2, -0x1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Lj/q;->f(II)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm/a;

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lo/n;->b()Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v8

    :goto_1
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    move-object v7, v8

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v7}, Lm/a;->b()Landroid/graphics/PointF;

    move-result-object v7

    .line 8
    :goto_2
    invoke-virtual {v6}, Lm/a;->a()Landroid/graphics/PointF;

    move-result-object v6

    .line 9
    invoke-virtual {p1}, Lo/n;->d()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    if-ne v2, v9, :cond_2

    move v9, v3

    goto :goto_3

    :cond_2
    move v9, v4

    .line 10
    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v9, :cond_3

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lj/q;->d:Lo/n;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/n;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v5, :cond_7

    .line 12
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v4

    :goto_5
    if-ge v0, v5, :cond_6

    .line 13
    new-instance v2, Lm/a;

    invoke-direct {v2}, Lm/a;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 14
    :cond_6
    new-instance v0, Lo/n;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v2, v4, p1}, Lo/n;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    iput-object v0, p0, Lj/q;->d:Lo/n;

    .line 15
    :cond_7
    iget-object p1, p0, Lj/q;->d:Lo/n;

    invoke-virtual {p1, v1}, Lo/n;->e(Z)V

    .line 16
    iget-object p0, p0, Lj/q;->d:Lo/n;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lj/q;->a:Lcom/airbnb/lottie/n;

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public c(Lo/n;)Lo/n;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Lo/n;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    return-object p1

    :cond_0
    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Lj/q;->c:Lk/a;

    invoke-virtual {v2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    return-object p1

    .line 4
    :cond_1
    invoke-direct/range {p0 .. p1}, Lj/q;->i(Lo/n;)Lo/n;

    move-result-object v1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lo/n;->b()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Lo/n;->b()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Lo/n;->f(FF)V

    .line 6
    invoke-virtual {v1}, Lo/n;->a()Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lo/n;->d()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm/a;

    add-int/lit8 v9, v6, -0x1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Lj/q;->f(II)I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm/a;

    add-int/lit8 v10, v6, -0x2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Lj/q;->f(II)I

    move-result v10

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm/a;

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lo/n;->b()Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v11

    :goto_1
    if-nez v6, :cond_3

    if-nez v4, :cond_3

    move-object v12, v11

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v9}, Lm/a;->b()Landroid/graphics/PointF;

    move-result-object v12

    .line 14
    :goto_2
    invoke-virtual {v8}, Lm/a;->a()Landroid/graphics/PointF;

    move-result-object v13

    .line 15
    invoke-virtual {v10}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v10

    .line 16
    invoke-virtual {v8}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v14

    .line 17
    invoke-virtual/range {p1 .. p1}, Lo/n;->d()Z

    move-result v15

    const/16 v16, 0x1

    if-nez v15, :cond_4

    if-nez v6, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_4

    move/from16 v15, v16

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 18
    :goto_3
    invoke-virtual {v12, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v13, v11}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v15, :cond_6

    .line 19
    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v9, v10, Landroid/graphics/PointF;->x:F

    sub-float v9, v8, v9

    .line 20
    iget v12, v11, Landroid/graphics/PointF;->y:F

    iget v13, v10, Landroid/graphics/PointF;->y:F

    sub-float v13, v12, v13

    .line 21
    iget v15, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v15, v8

    .line 22
    iget v8, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v12

    move v12, v6

    float-to-double v5, v9

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    float-to-double v0, v13

    .line 23
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v5, v15

    float-to-double v8, v8

    .line 24
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v1, v5

    div-float v0, v2, v0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 25
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v1, v2, v1

    .line 26
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 27
    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    .line 28
    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v8

    mul-float/2addr v9, v0

    add-float/2addr v9, v8

    .line 29
    iget v0, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    .line 30
    iget v10, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v10, v8

    sub-float v1, v6, v5

    const v11, 0x3f0d4952    # 0.5519f

    mul-float/2addr v1, v11

    sub-float v1, v6, v1

    sub-float v13, v9, v8

    mul-float/2addr v13, v11

    sub-float v13, v9, v13

    sub-float v5, v0, v5

    mul-float/2addr v5, v11

    sub-float v5, v0, v5

    sub-float v8, v10, v8

    mul-float/2addr v8, v11

    sub-float v8, v10, v8

    add-int/lit8 v11, v7, -0x1

    .line 31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v11, v14}, Lj/q;->f(II)I

    move-result v11

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm/a;

    .line 32
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lm/a;

    .line 33
    invoke-virtual {v11, v6, v9}, Lm/a;->e(FF)V

    .line 34
    invoke-virtual {v11, v6, v9}, Lm/a;->f(FF)V

    move-object/from16 v11, v18

    if-nez v12, :cond_5

    .line 35
    invoke-virtual {v11, v6, v9}, Lo/n;->f(FF)V

    .line 36
    :cond_5
    invoke-virtual {v14, v1, v13}, Lm/a;->d(FF)V

    add-int/lit8 v7, v7, 0x1

    .line 37
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/a;

    .line 38
    invoke-virtual {v14, v5, v8}, Lm/a;->e(FF)V

    .line 39
    invoke-virtual {v14, v0, v10}, Lm/a;->f(FF)V

    .line 40
    invoke-virtual {v1, v0, v10}, Lm/a;->d(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v0

    move-object v11, v1

    move v12, v6

    add-int/lit8 v0, v7, -0x1

    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lj/q;->f(II)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/a;

    .line 42
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/a;

    .line 43
    invoke-virtual {v9}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v6}, Lm/a;->e(FF)V

    .line 44
    invoke-virtual {v9}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v6}, Lm/a;->f(FF)V

    .line 45
    invoke-virtual {v8}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v8}, Lm/a;->c()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v5}, Lm/a;->d(FF)V

    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v6, v12, 0x1

    move-object v1, v11

    move-object/from16 v0, v17

    goto/16 :goto_0

    :cond_7
    move-object v11, v1

    return-object v11
.end method

.method public g()Lk/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lj/q;->c:Lk/a;

    return-object p0
.end method
