.class public Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;
.super Landroid/widget/RelativeLayout;
.source "QuickTakeLockButton.java"


# static fields
.field private static final DEFAULT_OPACITY_DARK:F = 0.13f

.field private static final DEFAULT_OPACITY_LIGHT:F = 0.15f

.field private static final MAX_OPACITY_DARK:F = 0.25f

.field private static final MAX_OPACITY_LIGHT:F = 0.3f


# instance fields
.field private mDarkMode:Z

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private mOrientation:I

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateY:F

.field private mViewBinding:Lo5/w8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mDarkMode:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateY:F

    .line 4
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 5
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 6
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mDarkMode:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateY:F

    .line 11
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 12
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 13
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 14
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->lambda$startLockAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->lambda$startLockAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->lambda$startLockAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)F
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->getBackgroundAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->startLottieAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V

    return-void
.end method

.method private getBackgroundAlpha()F
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mDarkMode:Z

    if-eqz p0, :cond_0

    const p0, 0x3e051eb8    # 0.13f

    goto :goto_0

    :cond_0
    const p0, 0x3e19999a    # 0.15f

    :goto_0
    return p0
.end method

.method private getMaxBackgroundAlpha()F
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mDarkMode:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    const p0, 0x3e99999a    # 0.3f

    :goto_0
    return p0
.end method

.method private initView(Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/w8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/w8;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    return-void
.end method

.method private synthetic lambda$startLockAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startLockAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startLockAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateY:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 2
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/16 v2, -0x5a

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mOrientation:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateY:F

    if-ne v1, v2, :cond_0

    neg-float p0, p0

    :cond_0
    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mOrientation:I

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    neg-float p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private startLottieAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f11003a

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method changeBackground(FF)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const v1, 0x7f07058d

    const v2, 0x7f07058b

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->getBackgroundAlpha()F

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->getMaxBackgroundAlpha()F

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->getBackgroundAlpha()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p1, p1, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p1, p1, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p1, p1, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method hide()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object v0, v0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method isRunningLockAnimation()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mOrientation:I

    return-void
.end method

.method show(IFZ)V
    .locals 2

    .line 1
    iput-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mDarkMode:Z

    if-eqz p3, :cond_0

    const p3, 0x7f080641

    goto :goto_0

    :cond_0
    const p3, 0x7f080642

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070591

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateY:F

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mOrientation:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p2, p2, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f080644

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 6
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p2, p2, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p2, p2, Lo5/w8;->a:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p2, p2, Lo5/w8;->a:Landroid/widget/ImageView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 9
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p2, p2, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 10
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p2, p2, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mViewBinding:Lo5/w8;

    iget-object p1, p1, Lo5/w8;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0092

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->getBackgroundAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method startLockAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->getBackgroundAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 2
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0090

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/video/c;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/shootingmode/video/c;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3f99999a    # 1.2f

    invoke-direct {v5, v7, v7, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/video/b;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/shootingmode/video/b;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$2;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v7, v7, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/video/a;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/video/a;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;-><init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    .line 17
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mHideAnimator:Landroid/animation/ValueAnimator;

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 18
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
