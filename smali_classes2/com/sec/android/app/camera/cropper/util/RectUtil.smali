.class public Lcom/sec/android/app/camera/cropper/util/RectUtil;
.super Ljava/lang/Object;
.source "RectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustPointInRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 2
    iput v1, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 4
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 5
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    .line 6
    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 7
    :cond_2
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p0

    if-ltz v0, :cond_3

    .line 8
    iput p0, p1, Landroid/graphics/PointF;->y:F

    :cond_3
    :goto_1
    return-void
.end method

.method public static contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 3
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 4
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float v4, v0, v3

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    add-float/2addr v0, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float v0, v1, p1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    add-float/2addr v1, p1

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertRectToArrayList(Landroid/graphics/Rect;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLimitedRect(Landroid/graphics/Rect;Ljava/util/ArrayList;)Landroid/graphics/RectF;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v0, -0x31000000

    const/high16 v1, 0x4f000000

    move v2, v1

    move v3, v2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 2
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, p0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 3
    iget v5, v4, Landroid/graphics/PointF;->y:F

    iget v6, p0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, p0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 5
    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public static getRotatedCropRectToCropView(ILandroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 p2, 0x10e

    if-eq p0, p2, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p3, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p1

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p2, p3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p3, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getRotatedCropRectToOriginal(ILandroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 p2, 0x10e

    if-eq p0, p2, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p3, p2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p2, v0, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    invoke-direct {p0, p3, v0, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getScaledCropRectToOriginal(Landroid/graphics/Rect;FII)Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 4
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 5
    iget p1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 6
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public static getScaledCropRectToScreenFit(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 6
    iget p0, v0, Landroid/graphics/Rect;->left:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 7
    iget p0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    return-object v0
.end method
