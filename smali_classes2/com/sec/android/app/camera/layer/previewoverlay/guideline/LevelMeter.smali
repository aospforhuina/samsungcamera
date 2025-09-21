.class public Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;
.super Landroid/widget/RelativeLayout;
.source "LevelMeter.java"


# static fields
.field private static final DISPLAY_AREA:F = 0.8f

.field private static final DISPLAY_HIDE_ACCELERATION:F = 3.3f

.field private static final DISPLAY_HIDE_ANGLE:F = 30.0f

.field private static final DISPLAY_SHOW_ACCELERATION:F = 2.75f

.field private static final DISPLAY_SHOW_ANGLE:F = 25.0f

.field private static final DISTANCE_THRESHOLD:F = 0.16f

.field private static final MOVEMENT_THRESHOLD:F = 0.05f

.field private static final SCALE_DEFAULT:F = 0.9f

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x2

.field private static final STATE_TRACKING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LevelMeter"


# instance fields
.field private final CIRCLE_SIZE:F

.field private mIsAnimationRunning:Z

.field private mIsFirstSensorInputUpdated:Z

.field private mIsLayoutUpdated:Z

.field private mIsLevelMeterVisible:Z

.field private mPreAccelerationX:F

.field private mPreAccelerationY:F

.field private mState:I

.field private mViewBinding:Lo5/n4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->CIRCLE_SIZE:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationX:F

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationY:F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsFirstSensorInputUpdated:Z

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLayoutUpdated:Z

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    .line 9
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLevelMeterVisible:Z

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->CIRCLE_SIZE:F

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationX:F

    .line 14
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationY:F

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    .line 16
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsFirstSensorInputUpdated:Z

    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLayoutUpdated:Z

    .line 18
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    .line 19
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLevelMeterVisible:Z

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->CIRCLE_SIZE:F

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationX:F

    .line 24
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationY:F

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    .line 26
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsFirstSensorInputUpdated:Z

    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLayoutUpdated:Z

    .line 28
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    .line 29
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLevelMeterVisible:Z

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startSuccessItemHideAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startSuccessItemShowAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startSuccessItemHideAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculatePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->CIRCLE_SIZE:F

    sub-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    mul-float/2addr v2, v3

    const/high16 v4, 0x40300000    # 2.75f

    div-float/2addr v2, v4

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->CIRCLE_SIZE:F

    sub-float/2addr p3, p0

    div-float/2addr p3, v3

    mul-float/2addr p0, v3

    div-float/2addr p0, v4

    mul-float/2addr p0, p2

    add-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    .line 3
    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private calculateRadius(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private changeState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startSuccessItemShowAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startGuideItemShowAnimation$1()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startGuideItemShowAnimation$0()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->lambda$startSuccessItemShowAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)Lo5/n4;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/n4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/n4;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    return-void
.end method

.method private isLevelMeterVisibleCondition(FF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->calculateRadius(FF)F

    move-result p1

    const/high16 p2, 0x40300000    # 2.75f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLevelMeterVisible:Z

    goto :goto_0

    :cond_0
    const p2, 0x40533333    # 3.3f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLevelMeterVisible:Z

    .line 4
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLevelMeterVisible:Z

    return p0
.end method

.method private synthetic lambda$startGuideItemShowAnimation$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    return-void
.end method

.method private synthetic lambda$startGuideItemShowAnimation$1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    return-void
.end method

.method private synthetic lambda$startSuccessItemHideAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startSuccessItemHideAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startSuccessItemShowAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startSuccessItemShowAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startSuccessItemShowAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private startGuideItemShowAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lu4/d;

    invoke-direct {v1}, Lu4/d;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/g;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/f;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startSuccessItemHideAnimation()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Lu4/d;

    invoke-direct {v2}, Lu4/d;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/a;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/a;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v2, v2, Lo5/n4;->b:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b004b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v2, Lu4/d;

    invoke-direct {v2}, Lu4/d;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v2, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/c;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/c;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v2, v2, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    new-instance v3, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$1;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 14
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startSuccessItemShowAnimation()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Lu4/d;

    invoke-direct {v2}, Lu4/d;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/d;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/d;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v2, v2, Lo5/n4;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v2, v0, [F

    .line 6
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v4, Lu4/d;

    invoke-direct {v4}, Lu4/d;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v4, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/b;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/b;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v4, Lu4/f;

    invoke-direct {v4}, Lu4/f;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance v4, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/e;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/e;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v4, v4, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 16
    new-instance v4, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter$2;-><init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 18
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateGuidePosition(FLandroid/graphics/PointF;)V
    .locals 7

    const v0, 0x3e23d70a    # 0.16f

    cmpg-float v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-gez v0, :cond_3

    const v0, -0x41dc28f6    # -0.16f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->startSuccessItemShowAnimation()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->changeState(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->a:Landroid/widget/ImageView;

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v6

    const/high16 v6, 0x40300000    # 2.75f

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    .line 17
    iget p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mState:I

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->startSuccessItemHideAnimation()V

    goto :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p1, p1, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->startGuideItemShowAnimation()V

    .line 26
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->changeState(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public hideLevelMeter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object v0, v0, Lo5/n4;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mViewBinding:Lo5/n4;

    iget-object p0, p0, Lo5/n4;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isOverMovementThreshold(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationX:F

    sub-float/2addr v0, p1

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationY:F

    sub-float/2addr p0, p2

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public reset()V
    .locals 2

    const-string v0, "LevelMeter"

    const-string v1, "reset"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->hideLevelMeter()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsFirstSensorInputUpdated:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLayoutUpdated:Z

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->changeState(I)V

    return-void
.end method

.method public updateAccelerationValue(FFLandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsLayoutUpdated:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->isLevelMeterVisibleCondition(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->hideLevelMeter()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsAnimationRunning:Z

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsFirstSensorInputUpdated:Z

    if-nez v0, :cond_3

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->calculateRadius(FF)F

    move-result v0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->calculatePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p3

    .line 8
    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->updateGuidePosition(FLandroid/graphics/PointF;)V

    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mIsFirstSensorInputUpdated:Z

    goto :goto_0

    .line 10
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationX:F

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 11
    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationY:F

    add-float/2addr v2, p2

    div-float/2addr v2, v1

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->isOverMovementThreshold(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->calculateRadius(FF)F

    move-result v1

    .line 14
    invoke-direct {p0, v0, v2, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->calculatePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object p3

    .line 15
    invoke-direct {p0, v1, p3}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->updateGuidePosition(FLandroid/graphics/PointF;)V

    .line 16
    :cond_4
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationX:F

    .line 17
    iput p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->mPreAccelerationY:F

    return-void
.end method
