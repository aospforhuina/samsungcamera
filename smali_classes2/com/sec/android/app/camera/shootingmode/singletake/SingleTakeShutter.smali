.class public Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;
.super Landroid/widget/RelativeLayout;
.source "SingleTakeShutter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleTakeShutter"


# instance fields
.field private mColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private final mLottieValueCallback:Lu/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/e<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressRewindAnimator:Landroid/animation/ValueAnimator;

.field private mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSingleTakeShutterAnimationListener:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;

.field private mViewBinding:Lo5/k8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$1;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mLottieValueCallback:Lu/e;

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 7
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$1;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mLottieValueCallback:Lu/e;

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->lambda$getProgressAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->lambda$getRewindProgressAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->lambda$getProgressColorAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Landroid/graphics/BlendModeColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mSingleTakeShutterAnimationListener:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    return-object p0
.end method

.method private getProgressAnimator(F)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/singletake/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/d;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getProgressColorAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 7

    const v0, 0x7f060433

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-array p1, v1, [I

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v1}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v1

    aput v1, p1, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    aput v0, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060431

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    aput v5, p1, v3

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060432

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    aput v3, p1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    aput v0, p1, v1

    .line 5
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 6
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/singletake/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/f;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getRewindProgressAnimator(FF)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00aa

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/singletake/e;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/e;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/k8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    .line 2
    iget-object v0, v0, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lm/e;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/e;-><init>([Ljava/lang/String;)V

    sget-object v2, Lh/u;->K:Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mLottieValueCallback:Lu/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->i(Lm/e;Ljava/lang/Object;Lu/e;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$getProgressAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$getProgressColorAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    return-void
.end method

.method private synthetic lambda$getRewindProgressAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressRewindAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressRewindAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    :cond_3
    return-void
.end method

.method public getShutterProgress()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result p0

    return p0
.end method

.method public isStopCaptureAnimationRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setEnabled(Z)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v1, v1, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v1, v1, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v1, v1, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v1, v1, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    return-void
.end method

.method public setContentDescriptionForTTS(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1201f8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setSingleTakeShutterAnimationListener(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mSingleTakeShutterAnimationListener:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;

    return-void
.end method

.method public showStartCaptureAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method public showStopCaptureAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mViewBinding:Lo5/k8;

    iget-object p0, p0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method public startShutterProgressWheel(FI)V
    .locals 3

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    .line 3
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->getProgressAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->getProgressColorAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startShutterProgressWheel(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->startShutterProgressWheel(FI)V

    return-void
.end method

.method public stopShutterProgressWheel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressWheelAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressRewindAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressRewindAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method public updateShutterProgressWheel(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->getShutterProgress()F

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->stopShutterProgressWheel()V

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 5
    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->getRewindProgressAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressRewindAnimator:Landroid/animation/ValueAnimator;

    .line 6
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$2;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$2;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;FIF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->mProgressRewindAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
