.class public Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "IntelligentView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$View;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mViewBinding:Lo5/e6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->init()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$initialize$0(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$initialize$2()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$initialize$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$showDetailEnhancerButton$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$startDetailEnhancerButtonClickAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$init$7()V

    return-void
.end method

.method private getEndScreenFlashRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getGuidePositionX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    const v2, 0x7f070844

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v3, v3, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr p0, v0

    return p0
.end method

.method private getGuidePositionY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v2, v2, Lo5/e6;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v2, v2, Lo5/e6;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateTabletSmartScanCaptureButtonOrientation()V

    return-void
.end method

.method private hideCountDownTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->g()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$startDetailEnhancerButtonClickAnimation$5(Landroid/animation/ValueAnimator;)V

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

    .line 2
    invoke-static {v0, p0, v1}, Lo5/e6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->n:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateShutterAreaGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/p0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/p0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/NightShutter;->setFillMoonAnimationListener(Lcom/sec/android/app/camera/widget/NightShutter$h;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/o0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/o0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/NightShutter;->setFastFillMoonAnimationListener(Lcom/sec/android/app/camera/widget/NightShutter$g;)V

    .line 7
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isSceneButtonShowing(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->t(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/16 p0, 0x27

    if-ne p1, p0, :cond_0

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

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$initialize$1()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->lambda$init$8()V

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)Lo5/e6;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    return-object p0
.end method

.method private synthetic lambda$init$7()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onFillMoonAnimationCompleted()V

    return-void
.end method

.method private synthetic lambda$init$8()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onFillMoonAnimationCompleted()V

    return-void
.end method

.method private synthetic lambda$initialize$0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onSceneDetectButtonClicked(Z)V

    return-void
.end method

.method private synthetic lambda$initialize$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$initialize$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onSmartScanCaptureButtonClicked()V

    return-void
.end method

.method private synthetic lambda$initialize$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onDetailEnhancerButtonClick(Z)V

    return-void
.end method

.method private synthetic lambda$showDetailEnhancerButton$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startDetailEnhancerButtonClickAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startDetailEnhancerButtonClickAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->startDetailEnhancerButtonLottieAnimation(Z)V

    return-void
.end method

.method private setDetailEnhancerContentsDescription(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f12060f

    goto :goto_0

    :cond_0
    const p1, 0x7f12060e

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startDetailEnhancerButtonLottieAnimation(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110011

    goto :goto_0

    :cond_0
    const v0, 0x7f110010

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f11000f

    goto :goto_1

    :cond_1
    const p1, 0x7f11000e

    :goto_1
    move v0, p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method private startDetailEnhancerButtonTranslateAnimation(ZF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b002b

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3e6147ae    # 0.22f

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private updateCountTimerOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    return-void
.end method

.method private updateGuideBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    if-nez v1, :cond_0

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateGuidePosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->getGuidePositionX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->getGuidePositionY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setY(F)V

    :goto_0
    return-void
.end method

.method private updateSceneOptimizerToastOrientation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->l:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->l:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v3, v3, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, p1, Lo5/e6;->l:Landroid/widget/TextView;

    iget-object p1, p1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v2, v2, Lo5/e6;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    :goto_0
    return-void
.end method

.method private updateTabletSceneDetectButtonOrientation()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x6

    .line 3
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v2, 0x7

    .line 4
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v2, 0x3

    .line 5
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/16 v2, -0x5a

    const v3, 0x7f090004

    const v4, 0x7f0705d4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_3

    const v2, 0x7f0705d3

    if-eqz v1, :cond_2

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_1

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    sget-object v3, Lu3/g;->b:Lu3/g;

    invoke-static {v3}, Lu3/d;->a(Lu3/g;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 7
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 11
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 14
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    sget-object v3, Lu3/g;->b:Lu3/g;

    invoke-static {v3}, Lu3/d;->a(Lu3/g;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 16
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 21
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 23
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v1, v1, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 24
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTabletSmartScanCaptureButtonOrientation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x6

    .line 3
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v2, 0x7

    .line 4
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/16 v2, -0x5a

    const v3, 0x7f070051

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 7
    :cond_1
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancelRunningAnimation()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideCountDownTimer()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->l()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->w()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public endNightShutterAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/NightShutter;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/NightShutter;->l()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->y()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->D()V

    :goto_0
    return-void
.end method

.method public hideCompositionGuide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->clearAnimatorListeners()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateCompositionText(ZZ)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideDetailEnhancerButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public hideNightScreenFlash(ZFI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->f:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->e(ZF)V

    return-void
.end method

.method public hideNightShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideCountDownTimer()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onNightShutterAnimationEnd()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->w()V

    return-void
.end method

.method public hideSceneDetectButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->r(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideSceneOptimizerToast()V

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public hideSceneOptimizerToast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->l:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onSceneOptimizerToastVisibilityChanged(Z)V

    return-void
.end method

.method public hideSmartScan()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->hide()V

    return-void
.end method

.method public hideSmartScanCaptureButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->hide(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->startDetailEnhancerButtonTranslateAnimation(ZF)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public hideSuperNightGuide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->q:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/r0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/r0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setClickListener(Lcom/sec/android/app/camera/widget/SceneDetectButton$g;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/q0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/q0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setAnimationListener(Lcom/sec/android/app/camera/widget/SceneDetectButton$f;)V

    .line 3
    sget-object v0, Lu3/b;->S:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/n0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/n0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->setScanCaptureButtonEventListener(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/m0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/m0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public initializeSceneDetectionButtonBackground(I)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setDarkMode(Z)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_2

    const p1, 0x7f0805df

    goto :goto_1

    :cond_2
    const p1, 0x7f0805e0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isSmartScanCaptureButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSmartScanVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->updateOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateOrientation(I)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateTabletSceneDetectButtonOrientation()V

    .line 6
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/s0;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/s0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateSceneOptimizerToastOrientation(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateCountTimerOrientation(I)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->p()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/NightShutter;->F(I)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->updateOrientation(I)V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateGuidePosition()V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 16
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateGuideBackground(I)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideSceneOptimizerToast()V

    return v0

    :cond_1
    :goto_0
    return p2

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    move p2, v0

    :cond_3
    return p2
.end method

.method public setDetailEnhancerButtonSelect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->setDetailEnhancerContentsDescription(Z)V

    return-void
.end method

.method public setEstimatedCaptureDurationTime(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->setEstimatedCaptureDuration(I)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->setPresenter(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    return-void
.end method

.method public setSceneButtonSelected(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setBackgroundButtonSelected(Z)V

    return-void
.end method

.method public showCountDownTimer(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->j(IZ)V

    return-void
.end method

.method public showDetailEnhancerButton(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->setDetailEnhancerContentsDescription(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3fb33333    # 1.4f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/j0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/j0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showNightScreenFlash(FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p2, p2, Lo5/e6;->f:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object p0

    const v0, 0x7f0602d1

    invoke-virtual {p2, p0, v0, p1}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->k(Landroid/graphics/Rect;IF)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->f:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->j(Landroid/graphics/Rect;FF)V

    :goto_0
    return-void
.end method

.method public showNightShutter()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showSceneOptimizerToast(ZLjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->l:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;->onSceneOptimizerToastVisibilityChanged(Z)V

    return-void
.end method

.method public showSmartScanCaptureButton(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->show(ZZ)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0705d5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->startDetailEnhancerButtonTranslateAnimation(ZF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    neg-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public showSuperNightGuide(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->q:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->q:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startDetailEnhancerButtonClickAnimation()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/l0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/l0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b002d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/k0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/k0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 12
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startNightShutterAnimation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->l()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/NightShutter;->A(ILandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public startNightShutterProcessingAnimation()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideCountDownTimer()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->B()V

    return-void
.end method

.method public startSceneDetectButtonClickAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->B(Z)V

    return-void
.end method

.method public stopNightShutterProcessingAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->E()V

    return-void
.end method

.method public updateCompositionGuide(Landroid/graphics/PointF;FI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->initializeAnimations()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->update(Landroid/graphics/PointF;FI)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updateTranslateMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p2, p2, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;->updatePreviewRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p1, p1, Lo5/e6;->o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->updatePreviewRect()V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mPreviewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->updateGuideBackground(I)V

    return-void
.end method

.method public updateSceneDetectionButtonBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mOrientation:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->G(II)V

    return-void
.end method

.method public updateSceneDetectionView(IZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object v0, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->F(IZ)V

    const p2, 0x7f07010e

    const v0, 0x7f0705d5

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->isSceneButtonShowing(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->startDetailEnhancerButtonTranslateAnimation(ZF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->startDetailEnhancerButtonTranslateAnimation(ZF)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->isSceneButtonShowing(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_0
    return-void
.end method

.method public updateSmartScan([FLandroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->mViewBinding:Lo5/e6;

    iget-object p0, p0, Lo5/e6;->o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->update([FLandroid/graphics/Matrix;Z)V

    return-void
.end method
