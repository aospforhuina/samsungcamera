.class public Lcom/sec/android/app/camera/widget/Quadrangle;
.super Landroid/view/View;
.source "Quadrangle.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:[F

.field private c:F

.field private d:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->d:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->f:I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/Quadrangle;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 1
    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->Quadrangle:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->d:Z

    const/4 v2, -0x1

    .line 3
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->f:I

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 7
    iput v1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    .line 8
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-boolean p1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->d:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->f:I

    return p0
.end method

.method public getPoints()[F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    return-object p0
.end method

.method public getThickness()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    add-float v7, v2, v5

    const/4 v2, 0x1

    aget v8, v0, v2

    const/4 v5, 0x2

    aget v6, v0, v5

    div-float/2addr v3, v4

    sub-float v9, v6, v3

    const/4 v3, 0x3

    aget v10, v0, v3

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    aget v7, v0, v5

    aget v8, v0, v3

    const/4 v3, 0x4

    aget v9, v0, v3

    const/4 v5, 0x5

    aget v10, v0, v5

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    aget v3, v0, v3

    iget v6, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    div-float v7, v6, v4

    sub-float v9, v3, v7

    aget v10, v0, v5

    const/4 v3, 0x6

    aget v5, v0, v3

    div-float/2addr v6, v4

    add-float v11, v5, v6

    const/4 v4, 0x7

    aget v12, v0, v4

    iget-object v13, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    aget v6, v0, v3

    aget v7, v0, v4

    aget v8, v0, v1

    aget v9, v0, v2

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->f:I

    return-void
.end method

.method public setPoints([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->b:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 2
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 3
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 4
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 5
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 6
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 7
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 8
    aget p1, p1, v1

    aput p1, v0, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThickness(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/Quadrangle;->c:F

    return-void
.end method
