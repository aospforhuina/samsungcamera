.class public Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;
.super Landroid/widget/FrameLayout;
.source "DisplayCutoutView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayCutoutView"

.field private static final mSwitchEffectResIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTimerProgressResIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTimerProgressAnimator:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lo5/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mSwitchEffectResIdMap:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressResIdMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->lambda$showTimerProgressAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)Lo5/g1;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    return-object p0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/g1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    return-void
.end method

.method private isCameraCutoutSettingEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/SemActivityTaskManager;->getInstance()Landroid/app/SemActivityTaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/app/SemActivityTaskManager;->getCameraCutoutSetting(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showTimerProgressAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object p0, p0, Lo5/g1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object v0, v0, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public hideTimerProgressAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->getAnimationInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->getAnimationInfoList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object v3, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 7
    iget-object v3, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget-object v3, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    iget-object v3, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object v0, v0, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v2, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mSwitchEffectResIdMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f110005

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object p0, p0, Lo5/g1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressResIdMap:Ljava/util/HashMap;

    iget v1, v1, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f110050

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->setPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$Presenter;)V
    .locals 0

    return-void
.end method

.method public showSwitchCameraAnimation()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->isCameraCutoutSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object v0, v0, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object v0, v0, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object p0, p0, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method public showTimerProgressAnimation(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->isCameraCutoutSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/a;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/a;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$4;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$4;-><init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mViewBinding:Lo5/g1;

    iget-object p1, p1, Lo5/g1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->mTimerProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
