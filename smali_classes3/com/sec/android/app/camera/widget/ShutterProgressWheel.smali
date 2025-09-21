.class public Lcom/sec/android/app/camera/widget/ShutterProgressWheel;
.super Landroid/view/View;
.source "ShutterProgressWheel.java"


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:F

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/animation/ValueAnimator;

.field private m:F

.field private n:I

.field private o:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->b:I

    const/16 v1, 0x168

    .line 3
    iput v1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->d:F

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    .line 6
    iput v1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->m:F

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->n:I

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/ShutterProgressWheel;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->h(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/widget/ShutterProgressWheel;)Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->o:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/widget/ShutterProgressWheel;F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->m:F

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/widget/ShutterProgressWheel;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setShutterProgress(F)V

    return-void
.end method

.method private synthetic h(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setShutterProgress(F)V

    return-void
.end method

.method private setShutterProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->d:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setShutterProgressWithAnimation(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->m:F

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setShutterProgress(F)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->e()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->m:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    .line 6
    iget v1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/m0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/m0;-><init>(Lcom/sec/android/app/camera/widget/ShutterProgressWheel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/ShutterProgressWheel$a;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel$a;-><init>(Lcom/sec/android/app/camera/widget/ShutterProgressWheel;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method f(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->f:Landroid/graphics/RectF;

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/R$styleable;->ShutterProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070545

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->a:F

    const/4 p2, 0x2

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->d:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->d:F

    .line 5
    iget p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->b:I

    .line 6
    iget p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->c:I

    const/4 p2, 0x5

    const v2, 0x7f0602b8

    .line 7
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v2, 0x4

    const v3, 0x7f0602b7

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x6

    .line 9
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g:Landroid/graphics/Paint;

    .line 12
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->a:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->k:Landroid/graphics/Paint;

    .line 17
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->a:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    throw p0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->l:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->d:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->f:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->d:F

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->f:Landroid/graphics/RectF;

    iget p0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p0, v0

    div-float v2, p0, v0

    int-to-float p1, p1

    div-float v3, p0, v0

    sub-float v3, p1, v3

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->n:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->n:I

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setShutterProgressWithAnimation(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setShutterProgress(F)V

    :goto_0
    return-void
.end method

.method public setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->o:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

    return-void
.end method
