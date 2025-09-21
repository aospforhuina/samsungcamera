.class public Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;
.super Landroid/widget/RelativeLayout;
.source "AudioInputLevelIndicator.java"


# static fields
.field private static final AUDIO_VALID_DB_RANGE:F = 51.0f

.field private static final MAX_GAUGE_SIZE:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "AudioInputLevelIndicator"

.field private static final WEIGHT_FACTOR:F = 0.4f


# instance fields
.field private final AUDIO_BAR_BOTTOM:I

.field private final AUDIO_BAR_HEIGHT:I

.field private final AUDIO_BAR_TOP:I

.field private final LEFT_AUDIO_BAR_LEFT:I

.field private final LEFT_AUDIO_BAR_RIGHT:I

.field private final RIGHT_AUDIO_BAR_LEFT:I

.field private final RIGHT_AUDIO_BAR_RIGHT:I

.field private mAudioLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mAudioRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftAudioBarTop:I

.field private mRightAudioBarTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->LEFT_AUDIO_BAR_LEFT:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->LEFT_AUDIO_BAR_RIGHT:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->RIGHT_AUDIO_BAR_LEFT:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->RIGHT_AUDIO_BAR_RIGHT:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_HEIGHT:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_BOTTOM:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_TOP:I

    .line 9
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mLeftAudioBarTop:I

    .line 10
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mRightAudioBarTop:I

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->LEFT_AUDIO_BAR_LEFT:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->LEFT_AUDIO_BAR_RIGHT:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->RIGHT_AUDIO_BAR_LEFT:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->RIGHT_AUDIO_BAR_RIGHT:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_HEIGHT:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_BOTTOM:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_TOP:I

    .line 20
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mLeftAudioBarTop:I

    .line 21
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mRightAudioBarTop:I

    .line 22
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getDisplayBarSize(I)F
    .locals 4

    rsub-int/lit8 p0, p1, 0x1

    int-to-float p0, p0

    const/high16 v0, 0x424c0000    # 51.0f

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide v2, 0x4049800000000000L    # 51.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double/2addr v0, v2

    int-to-float p0, p1

    const p1, 0x3ecccccd    # 0.4f

    mul-float/2addr p0, p1

    const/high16 p1, 0x41a00000    # 20.0f

    add-float/2addr p0, p1

    const p1, 0x3f19999a    # 0.6f

    mul-float/2addr p0, p1

    float-to-double p0, p0

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/R$styleable;->AudioInputLevelIndicator:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mLeftAudioBarTop:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_TOP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mLeftAudioBarTop:I

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mRightAudioBarTop:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_TOP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mRightAudioBarTop:I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->LEFT_AUDIO_BAR_LEFT:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mLeftAudioBarTop:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->LEFT_AUDIO_BAR_RIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_BOTTOM:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioRightDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->RIGHT_AUDIO_BAR_LEFT:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mRightAudioBarTop:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->RIGHT_AUDIO_BAR_RIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_BOTTOM:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public updateAudioInputLevelIndicator([IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_HEIGHT:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->getDisplayBarSize(I)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mLeftAudioBarTop:I

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->AUDIO_BAR_HEIGHT:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->getDisplayBarSize(I)F

    move-result p1

    div-float/2addr p1, v2

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mRightAudioBarTop:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08051c

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08051b

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060012

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 7
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->mAudioRightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
