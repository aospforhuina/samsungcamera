.class public Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;
.super Ljava/lang/Object;
.source "PolygonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->lambda$sortPointsClockwise$0(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p0

    return p0
.end method

.method public static adjustDeltaToLimitedRect(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_1

    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_1
    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private static adjustLimitRectangleDelta(Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;Landroid/graphics/RectF;Landroid/graphics/PointF;I)V
    .locals 2

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper$1;->$SwitchMap$com$sec$android$app$camera$cropper$util$CropConstants$RectHandleKey:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    int-to-float p1, p3

    add-float/2addr v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 5
    :pswitch_1
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    int-to-float p1, p3

    add-float/2addr v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    .line 6
    :pswitch_2
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    int-to-float p1, p3

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 7
    :pswitch_3
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    int-to-float p1, p3

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_0

    .line 8
    :pswitch_4
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    int-to-float p3, p3

    sub-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 9
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    add-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 10
    :pswitch_5
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    int-to-float p3, p3

    add-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 11
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    add-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 12
    :pswitch_6
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    int-to-float p3, p3

    add-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 13
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    sub-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 14
    :pswitch_7
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    int-to-float p3, p3

    sub-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 15
    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    sub-float/2addr v0, p3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static adjustLimitRectangleDelta(Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;Lcom/sec/android/app/camera/cropper/polygon/Polygon;Landroid/graphics/PointF;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->getRectFromPointList(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getMinCropSize()I

    move-result p1

    invoke-static {p0, v0, p2, p1}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->adjustLimitRectangleDelta(Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;Landroid/graphics/RectF;Landroid/graphics/PointF;I)V

    return-void
.end method

.method public static adjustPolygonBoundary(Landroid/util/Size;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x3f600000    # -5.0f

    cmpg-float v3, v2, v1

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1

    .line 3
    iput v5, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 6
    :cond_2
    :goto_1
    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_3

    .line 7
    iput v5, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static adjustRatioDelta(Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;Lcom/sec/android/app/camera/cropper/polygon/Polygon;Landroid/graphics/PointF;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getWidth()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getHeight()F

    move-result p1

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper$1;->$SwitchMap$com$sec$android$app$camera$cropper$util$CropConstants$RectHandleKey:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_0

    move v3, p1

    move v2, v0

    goto :goto_2

    .line 4
    :pswitch_0
    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    .line 5
    iget v3, p2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 6
    :pswitch_1
    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v0

    .line 7
    iget v3, p2, Landroid/graphics/PointF;->y:F

    :goto_0
    add-float/2addr v3, p1

    goto :goto_2

    .line 8
    :pswitch_2
    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v0

    .line 9
    iget v3, p2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 10
    :pswitch_3
    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    .line 11
    iget v3, p2, Landroid/graphics/PointF;->y:F

    :goto_1
    sub-float v3, p1, v3

    :goto_2
    div-float v4, v2, v3

    const v5, 0x40155555

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 12
    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    div-float v3, v2, v5

    goto :goto_3

    :cond_0
    mul-float v2, v3, v5

    goto :goto_3

    :cond_1
    div-float v4, v3, v2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 13
    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    div-float v2, v3, v5

    goto :goto_3

    :cond_2
    mul-float v3, v2, v5

    .line 14
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_1

    goto :goto_4

    :pswitch_4
    sub-float/2addr v0, v2

    sub-float/2addr v3, p1

    .line 15
    invoke-virtual {p2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :pswitch_5
    sub-float/2addr v2, v0

    sub-float/2addr v3, p1

    .line 16
    invoke-virtual {p2, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :pswitch_6
    sub-float/2addr v2, v0

    sub-float/2addr p1, v3

    .line 17
    invoke-virtual {p2, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :pswitch_7
    sub-float/2addr v0, v2

    sub-float/2addr p1, v3

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static contains(Ljava/util/ArrayList;FF)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;FF)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v0, -0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 4
    iget v5, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v5, p2

    if-gez v6, :cond_1

    iget v6, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, p2

    if-gez v6, :cond_2

    :cond_1
    iget v6, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, p2

    if-gez v6, :cond_3

    cmpl-float v6, v5, p2

    if-ltz v6, :cond_3

    .line 5
    :cond_2
    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v6, p2, v5

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v5

    div-float/2addr v6, v7

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    cmpg-float v3, v4, p1

    if-gez v3, :cond_3

    xor-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_4
    return v2
.end method

.method private static getRectFromPointList(Ljava/util/ArrayList;)Landroid/graphics/RectF;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;->LEFT_TOP:Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 3
    sget-object v2, Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 4
    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 5
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public static getRectFromPolygon(Ljava/util/ArrayList;)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    move v2, v1

    move v3, v2

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    int-to-float v2, v2

    .line 2
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v3

    .line 3
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v0, v0

    .line 4
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v1

    .line 5
    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static isConvex(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/util/PathUtil;->getPath(Ljava/util/ArrayList;)Landroid/graphics/Path;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Path;->isConvex()Z

    move-result p0

    return p0
.end method

.method public static isPointMakePolygon(ILcom/sec/android/app/camera/cropper/polygon/Polygon;Ljava/util/ArrayList;Landroid/graphics/Rect;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/camera/cropper/polygon/Polygon;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->isLargerThanMinimumArea(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->isOutOfMinSize(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->isOutOfView(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->isOutOfRatio(ILjava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-static {p2}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->isConvex(Ljava/util/ArrayList;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$sortPointsClockwise$0(FFLandroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 4

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p0

    float-to-double v0, v0

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 2
    iget p2, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p0

    float-to-double v2, p2

    iget p0, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    cmpg-double p2, v0, p0

    if-gez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-double p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static movePolygonPoint(ILjava/util/ArrayList;Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    return-void
.end method

.method public static reorderPolygonPoint(Lcom/sec/android/app/camera/cropper/polygon/Polygon;I)I
    .locals 6

    const/4 v0, -0x1

    if-ltz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/util/ArrayUtil;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/util/ArrayUtil;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->sortPointsClockwise(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getVertexCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_1
    if-eq v3, v0, :cond_4

    if-ne v3, p1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {p0, v2}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->setPolygonPoint(Lcom/sec/android/app/camera/cropper/polygon/Polygon;Ljava/util/ArrayList;)V

    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method public static scale(Ljava/util/ArrayList;F)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/util/ArrayUtil;->deepCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static setPolygonPoint(Lcom/sec/android/app/camera/cropper/polygon/Polygon;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/cropper/polygon/Polygon;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->setPointList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static sortPointsClockwise(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 2
    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v4

    .line 3
    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/cropper/polygon/a;

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/camera/cropper/polygon/a;-><init>(FF)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
