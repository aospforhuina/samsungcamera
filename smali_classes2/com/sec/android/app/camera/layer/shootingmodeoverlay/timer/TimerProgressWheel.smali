.class public Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;
.super Landroid/view/View;
.source "TimerProgressWheel.java"


# static fields
.field private static final START_ANGLE:I = -0x5a


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundStrokeWidth:F

.field private mProgress:F

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressStrokeWidth:F

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/R$styleable;->TimerProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070890

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressStrokeWidth:F

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060464

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressColor:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07088c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundStrokeWidth:F

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060456

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressPaint:Landroid/graphics/Paint;

    .line 9
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 14
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    throw p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float v2, v0, v6

    const/high16 v7, -0x3d4c0000    # -90.0f

    add-float/2addr v2, v7

    rem-float/2addr v2, v6

    mul-float/2addr v0, v6

    sub-float v3, v6, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 3
    iget-object v9, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    mul-float v1, v0, v6

    add-float/2addr v1, v7

    rem-float v10, v1, v6

    mul-float/2addr v0, v6

    sub-float v11, v6, v0

    iget-object v13, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mRectF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mBackgroundStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p0, v1

    div-float v3, p0, v1

    int-to-float p1, p1

    div-float v4, p0, v1

    sub-float/2addr p1, v4

    int-to-float p2, p2

    div-float/2addr p0, v1

    sub-float/2addr p2, p0

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->mProgress:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
