.class Lcom/sec/android/app/camera/widget/ExpandableSlider$b;
.super Landroid/graphics/drawable/Drawable;
.source "ExpandableSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/ExpandableSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:F

.field private final c:F

.field private final d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/animation/ValueAnimator;

.field final synthetic k:Lcom/sec/android/app/camera/widget/ExpandableSlider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/ExpandableSlider;FFLandroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->d:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->g:Z

    .line 5
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7
    iput-object p4, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->h:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->e:I

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iput p2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->b:F

    .line 12
    iput p3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->c:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    .line 13
    iput p2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->f:F

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/ExpandableSlider$b;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->f(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/widget/ExpandableSlider$b;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->e(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private c()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->b:F

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->c:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    .line 3
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    .line 4
    iget v6, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->d:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    sget-object v6, Landroidx/appcompat/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/sec/android/app/camera/widget/g;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/widget/g;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider$b;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [F

    aput v1, v2, v4

    aput v0, v2, v5

    .line 7
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    .line 8
    iget v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/f;-><init>(Lcom/sec/android/app/camera/widget/ExpandableSlider$b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->f:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic e(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->d(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic f(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->d(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->b:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->c:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->c:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->b:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private i(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->g:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->g()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->h()V

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->g:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->f:F

    sub-float v4, v0, v2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x3

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->h:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->e:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->e:I

    if-eq v2, v1, :cond_0

    .line 4
    iput v1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->e:I

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget v7, p1, v3

    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    move v5, v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v2, v6

    .line 8
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->i(Z)V

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->h:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->e:I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ExpandableSlider$b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
