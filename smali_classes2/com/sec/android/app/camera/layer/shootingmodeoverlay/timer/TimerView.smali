.class public Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$View;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAnimationDurationScale:F

.field private mIsResizableMode:Z

.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

.field private mProgressWheelGuideLinePosition:F

.field private mTimerCountInAnimation:Landroid/view/animation/Animation;

.field private mTimerCountInAnimationLastCount:Landroid/view/animation/Animation;

.field private final mTimerNumberArray:[Ljava/lang/Integer;

.field private mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

.field private mViewBinding:Lo5/k1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f030015

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->typedArrayToIntegerArray(I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mIsResizableMode:Z

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f030015

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->typedArrayToIntegerArray(I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mIsResizableMode:Z

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f030015

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->typedArrayToIntegerArray(I)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mIsResizableMode:Z

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->init()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private cancelAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$0()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$3()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$1()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$2()V

    return-void
.end method

.method private getProgressDotWidth(I)F
    .locals 3

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070884

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07087f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070883

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressWheelTimer$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private hideTimerProgressAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setProgress(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressWheelTimer$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/k1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k1;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    .line 2
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->lambda$showProgressPieTimer$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)Lo5/k1;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateIntervalProgressDotPositionInternal(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$2()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$3()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$showProgressPieTimer$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$showProgressWheelTimer$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$showProgressWheelTimer$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setProgress(F)V

    return-void
.end method

.method private typedArrayToIntegerArray(I)[Ljava/lang/Integer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 3
    new-array v0, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, -0x1

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private updateIntervalProgressDotLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mPresenter:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;->onUpdateIntervalProgressDotLayout()V

    return-void
.end method

.method private updateIntervalProgressDotPositionInternal(ILandroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->getProgressDotWidth(I)F

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070880

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 3
    iget v3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mOrientation:I

    if-nez v3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setTranslationX(F)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    const/16 v4, 0x5a

    const v5, 0x7f070883

    if-ne v3, v4, :cond_1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v3, v3, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v4, p1

    add-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout;->setX(F)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/widget/GridLayout;->setX(F)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p0, v2

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setY(F)V

    :goto_1
    return-void
.end method

.method private updateTimerNumberLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mIsResizableMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateTimerNumberLayoutForTablet()V

    return-void

    .line 4
    :cond_1
    sget-object v0, Lu3/b;->m1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/SystemSettingsUtil;->isOneHandMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->getAnimationInfoList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;

    iget-object v0, v0, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v1, v1, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v2, v2, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/high16 v3, 0x42f00000    # 120.0f

    cmpg-float v3, v0, v3

    const v4, 0x7f07088e

    if-gez v3, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v0, 0x0

    .line 9
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 11
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto :goto_0

    :cond_3
    const/high16 v3, 0x43700000    # 240.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 16
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateTimerNumberLayoutForTablet()V
    .locals 8

    .line 1
    sget-object v0, Lu3/h;->u:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v2, v2, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v3, v3, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 4
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070544

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 7
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/high16 v5, 0x3f000000    # 0.5f

    .line 9
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 10
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070889

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 13
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 14
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 15
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    goto :goto_1

    .line 16
    :cond_1
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 17
    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070891

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 20
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07088b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public hideTimer(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;->hideProgressDot()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->hideTimerNumber()V

    return-void
.end method

.method public hideTimerNumber()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->hideTimerProgressAnimation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimation:Landroid/view/animation/Animation;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimationLastCount:Landroid/view/animation/Animation;

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateTimerNumberLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mPresenter:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    invoke-interface {p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;->onLayoutRequested()V

    .line 3
    sget-object p2, Lu3/b;->b:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mIsResizableMode:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p2, p2, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    iget-object p3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p3, p3, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iget-object p5, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p5, p5, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07088f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07088a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070888

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v1, v1, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1, p4}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0, v0}, Landroid/widget/ImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->setRotation(F)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateIntervalProgressDotLayout()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mPresenter:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;->onTouchEventRequested(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->setPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mPresenter:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerContract$Presenter;

    return-void
.end method

.method public setProgressWheelGuideLine(F)V
    .locals 1

    .line 1
    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mProgressWheelGuideLinePosition:F

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method public setResizableMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mIsResizableMode:Z

    return-void
.end method

.method public showIntervalProgressDot(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateIntervalProgressDotLayout()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;->showProgressDot(I)V

    return-void
.end method

.method public showProgressPieTimer(I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAnimatorDurationScale(Landroid/content/Context;)F

    move-result v2

    iput v2, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 4
    iget v4, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    if-gtz v4, :cond_0

    .line 5
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v4, v4, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    new-instance v4, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/h;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/h;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    int-to-long v8, v1

    mul-long/2addr v2, v6

    sub-long/2addr v8, v2

    const-wide/16 v1, 0x4

    div-long/2addr v8, v1

    invoke-virtual {p0, v4, v8, v9}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    new-instance v3, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/j;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/j;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    mul-long/2addr v6, v8

    invoke-virtual {p0, v3, v6, v7}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    new-instance v3, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/k;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/k;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    const-wide/16 v4, 0x3

    mul-long/2addr v4, v8

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    new-instance v3, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/i;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/i;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    mul-long/2addr v8, v1

    invoke-virtual {p0, v3, v8, v9}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v4, 0x2

    new-array v8, v4, [F

    .line 10
    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    long-to-float v9, v2

    .line 11
    iget v10, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float v10, v9, v10

    float-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e2e147b    # 0.17f

    const v12, 0x3f0ccccd    # 0.55f

    const v13, 0x3ea3d70a    # 0.32f

    const v14, 0x3f866666    # 1.05f

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance v10, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/g;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/g;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v10, v4, [F

    .line 14
    fill-array-data v10, :array_1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    int-to-long v11, v1

    mul-long/2addr v2, v6

    sub-long/2addr v11, v2

    long-to-float v1, v11

    .line 15
    iget v2, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    new-instance v1, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/c;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v4, [F

    .line 17
    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 18
    iget v2, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr v9, v2

    float-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f0ccccd    # 0.55f

    const v6, 0x3e2e147b    # 0.17f

    invoke-direct {v2, v6, v3, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance v2, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/d;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/d;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    new-instance v2, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$1;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v8, v3, v5

    const/4 v6, 0x1

    aput-object v10, v3, v6

    aput-object v1, v3, v4

    .line 23
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 24
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v1, v1, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

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
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showProgressWheelTimer(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->cancelAnimatorSet(Landroid/animation/AnimatorSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAnimatorDurationScale(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v2, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/e;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/e;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 7
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-float p1, p1

    .line 8
    iget v3, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mAnimationDurationScale:F

    div-float/2addr p1, v3

    float-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    new-instance p1, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/f;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/f;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 11
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p1, p1, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerProgressAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startIntervalProgressDotBlinkAnimation(III)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;->startBlinkAnimation(III)V

    return-void
.end method

.method public updateIntervalProgressDot(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object p0, p0, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;->updateProgressDot(II)V

    return-void
.end method

.method public updateIntervalProgressDotPosition(ILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->updateIntervalProgressDotPositionInternal(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$2;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public updateTimerNumber(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v0, v0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v1, v1, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerCountInAnimationLastCount:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mViewBinding:Lo5/k1;

    iget-object v1, v1, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->mTimerNumberArray:[Ljava/lang/Integer;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    return-void
.end method
