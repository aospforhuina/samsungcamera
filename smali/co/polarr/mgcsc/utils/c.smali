.class public Lco/polarr/mgcsc/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/polarr/mgcsc/utils/c$b;
    }
.end annotation


# static fields
.field private static final DEG2RAD:D = 0.017453292519943295


# direct methods
.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xb5

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v6, v5

    add-int/lit8 v7, v5, -0x5a

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    rsub-int v7, v5, 0xb4

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    if-ge v6, v0, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move v2, v3

    move v4, v5

    move v0, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    if-gt v0, v3, :cond_9

    if-lt v0, v6, :cond_9

    const/16 v0, 0x5a

    if-le v4, v0, :cond_3

    add-int/lit16 v3, v4, -0xb4

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit8 v7, v4, -0x5a

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v5, v8, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v1

    move v3, v7

    :goto_2
    move v7, v1

    move v8, v7

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v4, :cond_5

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v0, :cond_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    if-nez v5, :cond_8

    if-gt v8, v6, :cond_8

    return v1

    :cond_8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-int p0, v3

    return p0

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v1
.end method

.method public static a(Landroid/graphics/Bitmap;)Lco/polarr/mgcsc/entities/a;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance p0, Lco/polarr/mgcsc/entities/a;

    invoke-direct {p0, v10, v8, v9}, Lco/polarr/mgcsc/entities/a;-><init>([III)V

    return-object p0
.end method

.method public static a(Lco/polarr/mgcsc/entities/a;)Lco/polarr/mgcsc/utils/LineDetectResult;
    .locals 7

    invoke-static {p0}, Lco/polarr/mgcsc/utils/c;->c(Lco/polarr/mgcsc/entities/a;)V

    invoke-static {p0}, Lco/polarr/mgcsc/utils/c;->d(Lco/polarr/mgcsc/entities/a;)Lco/polarr/mgcsc/entities/a;

    move-result-object v0

    new-instance v1, Lco/polarr/mgcsc/utils/LineDetectResult;

    invoke-direct {v1}, Lco/polarr/mgcsc/utils/LineDetectResult;-><init>()V

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lco/polarr/mgcsc/utils/c;->a(Lco/polarr/mgcsc/entities/a;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x82

    if-lt v5, v6, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, v1, Lco/polarr/mgcsc/utils/LineDetectResult;->lines:Ljava/util/List;

    iget v2, p0, Lco/polarr/mgcsc/entities/a;->b:I

    iget v4, p0, Lco/polarr/mgcsc/entities/a;->c:I

    invoke-static {v0, v2, v4}, Lco/polarr/mgcsc/utils/c;->a(Ljava/util/List;II)[Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, v1, Lco/polarr/mgcsc/utils/LineDetectResult;->vanishingPoints:[Landroid/graphics/PointF;

    iget v0, p0, Lco/polarr/mgcsc/entities/a;->b:I

    iput v0, v1, Lco/polarr/mgcsc/utils/LineDetectResult;->width:I

    iget v0, p0, Lco/polarr/mgcsc/entities/a;->c:I

    iput v0, v1, Lco/polarr/mgcsc/utils/LineDetectResult;->height:I

    invoke-static {p0}, Lco/polarr/mgcsc/utils/c;->b(Lco/polarr/mgcsc/entities/a;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, v1, Lco/polarr/mgcsc/utils/LineDetectResult;->saliencyCenter:Landroid/graphics/PointF;

    iget-object v0, v1, Lco/polarr/mgcsc/utils/LineDetectResult;->vanishingPoints:[Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    aget-object v4, v0, v3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lco/polarr/mgcsc/entities/a;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x43960000    # 300.0f

    mul-float/2addr v4, v5

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lco/polarr/mgcsc/entities/a;->c:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    mul-float/2addr v0, v5

    invoke-direct {v2, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object p0, Lco/polarr/mgcsc/c;->a:Lco/polarr/mgcsc/utils/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vanishing point: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lco/polarr/mgcsc/utils/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static a(Lco/polarr/mgcsc/entities/a;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/polarr/mgcsc/entities/a;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lco/polarr/mgcsc/entities/a;->c:I

    iget v3, v0, Lco/polarr/mgcsc/entities/a;->b:I

    iget-object v0, v0, Lco/polarr/mgcsc/entities/a;->a:[I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_6

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_5

    mul-int v7, v5, v3

    add-int/2addr v7, v6

    aget v8, v0, v7

    move/from16 v9, p1

    if-lt v8, v9, :cond_4

    aget v8, v0, v7

    const/4 v11, -0x4

    :goto_2
    const/4 v12, 0x4

    const/4 v13, 0x1

    if-gt v11, v12, :cond_2

    const/4 v14, -0x4

    :goto_3
    if-gt v14, v12, :cond_1

    add-int v15, v11, v5

    const/16 v16, 0x5

    if-ltz v15, :cond_0

    if-ge v15, v2, :cond_0

    add-int v10, v14, v6

    if-ltz v10, :cond_0

    if-ge v10, v3, :cond_0

    mul-int/2addr v15, v3

    add-int/2addr v15, v10

    aget v10, v0, v15

    if-le v10, v8, :cond_0

    aget v8, v0, v15

    move/from16 v11, v16

    move v14, v11

    :cond_0
    add-int/2addr v14, v13

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    aget v10, v0, v7

    if-le v8, v10, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Integer;

    div-int/lit8 v10, v2, 0x2

    sub-int v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v13

    aget v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v8, v10

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move/from16 v9, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    new-instance v0, Lco/polarr/mgcsc/utils/c$a;

    invoke-direct {v0}, Lco/polarr/mgcsc/utils/c$a;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    .locals 4

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/util/List;II)[Landroid/graphics/PointF;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Integer;",
            ">;II)[",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    neg-int v3, v0

    int-to-float v4, v3

    neg-int v5, v1

    new-instance v6, Landroid/graphics/PointF;

    int-to-float v7, v5

    invoke-direct {v6, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v4, v7, :cond_0

    return-object v6

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    aget-object v14, v9, v13

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v15, 0x2d

    const-wide v16, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-lt v9, v15, :cond_1

    const/16 v15, 0x87

    if-gt v9, v15, :cond_1

    div-int/lit8 v15, v3, 0x2

    int-to-float v15, v15

    int-to-double v6, v14

    float-to-double v13, v15

    int-to-double v10, v9

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v13, v13, v16

    sub-double v13, v6, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    div-double v13, v13, v16

    double-to-float v9, v13

    div-int/lit8 v13, v0, 0x2

    int-to-float v13, v13

    move-object/from16 v22, v8

    move v14, v9

    float-to-double v8, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v8, v8, v16

    sub-double/2addr v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v6, v6

    move v9, v14

    goto :goto_1

    :cond_1
    move-object/from16 v22, v8

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    int-to-double v7, v14

    float-to-double v10, v6

    int-to-double v13, v9

    mul-double v13, v13, v16

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v10, v15

    sub-double v9, v7, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    div-double/2addr v9, v15

    double-to-float v15, v9

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    float-to-double v10, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v10, v10, v16

    sub-double/2addr v7, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    div-double/2addr v7, v10

    double-to-float v13, v7

    move/from16 v27, v9

    move v9, v6

    move/from16 v6, v27

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x4

    if-lt v7, v8, :cond_2

    sub-float v7, v15, v13

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    mul-double v7, v7, v16

    move/from16 v23, v13

    int-to-double v12, v1

    div-double/2addr v7, v12

    cmpg-double v7, v7, v10

    if-gez v7, :cond_3

    :goto_2
    move-object/from16 v8, v22

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_2
    move/from16 v23, v13

    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_5

    sub-float v7, v9, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    mul-double v7, v7, v16

    int-to-double v12, v0

    div-double/2addr v7, v12

    cmpg-double v7, v7, v10

    if-gez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x4

    goto :goto_3

    :cond_5
    move v7, v8

    :goto_3
    new-array v7, v7, [Ljava/lang/Float;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v7, v8

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    move-object/from16 v8, v22

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    move v9, v7

    move v10, v12

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v10, [I

    aput v10, v5, v9

    const/4 v6, 0x0

    aput v3, v5, v6

    const-class v6, F

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    new-array v6, v3, [F

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Float;

    aget-object v9, v5, v7

    const/4 v10, 0x3

    aget-object v11, v8, v10

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/4 v12, 0x1

    aget-object v13, v8, v12

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sub-float/2addr v11, v13

    neg-float v11, v11

    const/4 v13, 0x0

    aput v11, v9, v13

    aget-object v9, v5, v7

    const/4 v11, 0x2

    aget-object v15, v8, v11

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aget-object v15, v8, v13

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v11, v15

    aput v11, v9, v12

    aget-object v9, v5, v7

    aget v9, v9, v13

    aget-object v11, v8, v13

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v9, v11

    aget-object v11, v5, v7

    aget v11, v11, v12

    aget-object v8, v8, v12

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const/16 v9, 0x9

    if-lt v3, v9, :cond_8

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    :cond_8
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    new-instance v11, Ljava/util/PriorityQueue;

    invoke-direct {v11}, Ljava/util/PriorityQueue;-><init>()V

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v3, :cond_e

    add-int/lit8 v13, v12, 0x1

    move v15, v13

    :goto_6
    move/from16 p0, v13

    if-ge v15, v3, :cond_d

    const/4 v14, 0x2

    new-array v13, v14, [I

    fill-array-data v13, :array_0

    invoke-static {v2, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[F

    move-object/from16 v16, v2

    new-array v2, v14, [F

    aget-object v17, v5, v12

    const/16 v19, 0x0

    aput-object v17, v13, v19

    aget-object v17, v5, v15

    const/16 v18, 0x1

    aput-object v17, v13, v18

    aget v17, v6, v12

    aput v17, v2, v19

    aget v17, v6, v15

    aput v17, v2, v18

    aget-object v17, v13, v19

    aget v17, v17, v19

    aget-object v20, v13, v18

    aget v20, v20, v18

    mul-float v17, v17, v20

    aget-object v20, v13, v19

    aget v20, v20, v18

    aget-object v22, v13, v18

    aget v22, v22, v19

    mul-float v20, v20, v22

    sub-float v17, v17, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move/from16 v22, v15

    float-to-double v14, v14

    const-wide v23, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v14, v14, v23

    if-gez v14, :cond_9

    move/from16 v25, v3

    move-object/from16 v17, v5

    move-object/from16 v21, v6

    goto/16 :goto_9

    :cond_9
    aget v14, v2, v19

    aget-object v15, v13, v18

    aget v15, v15, v18

    mul-float/2addr v14, v15

    aget-object v15, v13, v19

    aget v15, v15, v18

    aget v23, v2, v18

    mul-float v15, v15, v23

    sub-float/2addr v14, v15

    div-float v14, v14, v17

    aget-object v15, v13, v19

    aget v15, v15, v19

    aget v23, v2, v18

    mul-float v15, v15, v23

    aget v2, v2, v19

    aget-object v13, v13, v18

    aget v13, v13, v19

    mul-float/2addr v2, v13

    sub-float/2addr v15, v2

    div-float v15, v15, v17

    new-array v2, v3, [F

    move/from16 v13, v19

    :goto_7
    if-ge v13, v3, :cond_a

    aget-object v17, v5, v13

    aget v17, v17, v19

    mul-float v17, v17, v14

    aget-object v23, v5, v13

    const/16 v18, 0x1

    aget v23, v23, v18

    mul-float v23, v23, v15

    add-float v17, v17, v23

    aget v23, v6, v13

    sub-float v17, v17, v23

    aput v17, v2, v13

    aget v17, v2, v13

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v17, v17, v23

    aput v17, v2, v13

    aget v17, v2, v13

    aget v24, v2, v13

    mul-float v17, v17, v24

    div-float v17, v17, v23

    aput v17, v2, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v19, 0x0

    goto :goto_7

    :cond_a
    const-wide/16 v23, 0x0

    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    move-object/from16 v17, v5

    const/4 v13, 0x4

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v21, v14

    int-to-double v13, v3

    mul-double/2addr v13, v7

    double-to-int v13, v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v5, :cond_b

    aget v14, v2, v13

    move-object/from16 v26, v2

    move/from16 v25, v3

    float-to-double v2, v14

    add-double v23, v23, v2

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v25

    move-object/from16 v2, v26

    goto :goto_8

    :cond_b
    move/from16 v25, v3

    int-to-double v2, v5

    div-double v2, v23, v2

    cmpl-double v5, v9, v2

    if-lez v5, :cond_c

    new-instance v5, Landroid/graphics/PointF;

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    add-float v14, v21, v9

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v15

    invoke-direct {v5, v14, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move-wide v9, v2

    :cond_c
    new-instance v5, Lco/polarr/mgcsc/utils/c$b;

    new-instance v13, Landroid/graphics/PointF;

    div-int/lit8 v14, v0, 0x2

    int-to-float v14, v14

    add-float v14, v21, v14

    move-object/from16 v21, v6

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    add-float/2addr v15, v6

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x0

    invoke-direct {v5, v13, v2, v3, v6}, Lco/polarr/mgcsc/utils/c$b;-><init>(Landroid/graphics/PointF;DLco/polarr/mgcsc/utils/c$a;)V

    invoke-virtual {v11, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v15, v22, 0x1

    move/from16 v13, p0

    move-object/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v21

    move/from16 v3, v25

    goto/16 :goto_6

    :cond_d
    move/from16 v12, p0

    goto/16 :goto_5

    :cond_e
    sget-object v2, Lco/polarr/mgcsc/c;->a:Lco/polarr/mgcsc/utils/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vanishing lines: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lco/polarr/mgcsc/utils/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vanishing error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lco/polarr/mgcsc/utils/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    cmpl-double v4, v9, v2

    if-lez v4, :cond_f

    const/4 v4, 0x0

    return-object v4

    :cond_f
    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/polarr/mgcsc/utils/c$b;

    move-object v6, v4

    :cond_10
    :goto_a
    invoke-virtual {v11}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v11}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lco/polarr/mgcsc/utils/c$b;

    iget-wide v7, v6, Lco/polarr/mgcsc/utils/c$b;->a:D

    cmpl-double v4, v7, v2

    if-lez v4, :cond_11

    goto :goto_b

    :cond_11
    iget-object v4, v5, Lco/polarr/mgcsc/utils/c$b;->b:Landroid/graphics/PointF;

    iget-object v7, v6, Lco/polarr/mgcsc/utils/c$b;->b:Landroid/graphics/PointF;

    invoke-static {v4, v7}, Lco/polarr/mgcsc/utils/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v9, v4

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v9, v12

    cmpg-double v4, v7, v9

    if-gez v4, :cond_12

    goto :goto_a

    :cond_12
    iget-wide v7, v6, Lco/polarr/mgcsc/utils/c$b;->a:D

    iget-wide v9, v5, Lco/polarr/mgcsc/utils/c$b;->a:D

    div-double v12, v7, v9

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    cmpg-double v4, v12, v14

    if-ltz v4, :cond_13

    sub-double/2addr v7, v9

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v7, v9

    if-gez v4, :cond_10

    :cond_13
    sget-object v0, Lco/polarr/mgcsc/c;->a:Lco/polarr/mgcsc/utils/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vanishing error 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v6, Lco/polarr/mgcsc/utils/c$b;->a:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lco/polarr/mgcsc/utils/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x2

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v2, 0x0

    const/4 v9, 0x1

    :goto_c
    new-array v0, v9, [Landroid/graphics/PointF;

    iget-object v1, v5, Lco/polarr/mgcsc/utils/c$b;->b:Landroid/graphics/PointF;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-ne v9, v1, :cond_15

    iget-object v1, v6, Lco/polarr/mgcsc/utils/c$b;->b:Landroid/graphics/PointF;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    :cond_15
    return-object v0

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method public static b(Lco/polarr/mgcsc/entities/a;)Landroid/graphics/PointF;
    .locals 13

    iget-object v0, p0, Lco/polarr/mgcsc/entities/a;->a:[I

    iget v1, p0, Lco/polarr/mgcsc/entities/a;->b:I

    iget p0, p0, Lco/polarr/mgcsc/entities/a;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v6, v2

    move v7, v6

    move v4, v3

    move v5, v4

    :goto_0
    array-length v8, v0

    if-ge v4, v8, :cond_1

    aget v8, v0, v4

    if-eqz v8, :cond_0

    rem-int v8, v4, v1

    int-to-float v8, v8

    add-float/2addr v7, v8

    div-int v8, v4, v1

    int-to-float v8, v8

    add-float/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x3e8

    if-le v5, v4, :cond_5

    int-to-float v4, v5

    div-float/2addr v7, v4

    float-to-int v7, v7

    div-float/2addr v6, v4

    float-to-int v4, v6

    add-int/lit8 v6, v7, -0x3c

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v8, v4, -0x3c

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x3c

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v4, v4, 0x3c

    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v10, v3

    move v9, v6

    move v6, v2

    :goto_1
    if-ge v9, v7, :cond_4

    move v11, v8

    :goto_2
    if-ge v11, v4, :cond_3

    mul-int v12, v11, v1

    add-int/2addr v12, v9

    aget v12, v0, v12

    if-eqz v12, :cond_2

    int-to-float v12, v9

    add-float/2addr v6, v12

    int-to-float v12, v11

    add-float/2addr v2, v12

    add-int/lit8 v10, v10, 0x1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    int-to-double v7, v10

    int-to-double v4, v5

    div-double/2addr v7, v4

    sget-object v0, Lco/polarr/mgcsc/c;->a:Lco/polarr/mgcsc/utils/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saliency ratio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Lco/polarr/mgcsc/utils/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v7, v3

    if-lez v0, :cond_5

    new-instance v0, Landroid/graphics/PointF;

    mul-int/2addr v1, v10

    int-to-float v1, v1

    div-float/2addr v6, v1

    mul-int/2addr v10, p0

    int-to-float p0, v10

    div-float/2addr v2, p0

    invoke-direct {v0, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_5
    new-instance p0, Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static c(Lco/polarr/mgcsc/entities/a;)V
    .locals 3

    iget-object v0, p0, Lco/polarr/mgcsc/entities/a;->a:[I

    iget v1, p0, Lco/polarr/mgcsc/entities/a;->b:I

    iget v2, p0, Lco/polarr/mgcsc/entities/a;->c:I

    invoke-static {v0, v1, v2}, Lco/polarr/mgcsc/e/g;->a([III)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/polarr/mgcsc/entities/a;->a([I)V

    return-void
.end method

.method public static d(Lco/polarr/mgcsc/entities/a;)Lco/polarr/mgcsc/entities/a;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/polarr/mgcsc/entities/a;->a:[I

    iget v2, v0, Lco/polarr/mgcsc/entities/a;->b:I

    iget v0, v0, Lco/polarr/mgcsc/entities/a;->c:I

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    if-le v0, v2, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    int-to-float v7, v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v3

    double-to-float v3, v5

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit16 v6, v5, 0xb4

    new-array v6, v6, [I

    int-to-float v7, v2

    div-float/2addr v7, v4

    int-to-float v8, v0

    div-float/2addr v8, v4

    const/16 v4, 0xb4

    new-array v9, v4, [F

    new-array v10, v4, [F

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_1

    int-to-float v13, v12

    float-to-double v13, v13

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v13, v15

    move v15, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v9, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v10, v12

    add-int/lit8 v12, v12, 0x1

    move v5, v15

    const/16 v4, 0xb4

    goto :goto_1

    :cond_1
    move v15, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_3

    mul-int v12, v4, v2

    add-int/2addr v12, v5

    aget v12, v1, v12

    if-eqz v12, :cond_2

    int-to-float v12, v5

    int-to-float v13, v4

    const/16 v11, 0xb4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v11, :cond_2

    aget v11, v9, v14

    sub-float v17, v12, v7

    mul-float v11, v11, v17

    aget v17, v10, v14

    sub-float v18, v13, v8

    mul-float v17, v17, v18

    add-float v11, v11, v17

    add-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v11, v11, v17

    float-to-int v11, v11

    add-int/2addr v11, v14

    aget v17, v6, v11

    add-int/lit8 v17, v17, 0x1

    aput v17, v6, v11

    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0xb4

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lco/polarr/mgcsc/entities/a;

    move v1, v15

    const/16 v2, 0xb4

    invoke-direct {v0, v6, v2, v1}, Lco/polarr/mgcsc/entities/a;-><init>([III)V

    return-object v0
.end method
