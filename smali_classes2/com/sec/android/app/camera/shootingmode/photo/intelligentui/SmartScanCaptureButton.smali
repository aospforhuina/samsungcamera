.class public Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;
.super Landroid/widget/RelativeLayout;
.source "SmartScanCaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;
    }
.end annotation


# instance fields
.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mImageAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsReduceAnimationStarted:Z

.field private mScanCaptureButtonEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;

.field private mShowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mShrinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSyncAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lo5/a9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mIsReduceAnimationStarted:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$initializeHideAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$initializeImageAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$startShrinkAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$startShrinkAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$startShrinkAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$initializeImageAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$startShowAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$initializeHideAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/a9;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a9;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    .line 2
    iget-object p1, p1, Lo5/a9;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/f1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/f1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p1, p1, Lo5/a9;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p1, p1, Lo5/a9;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->clearAnimatorListeners()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->initializeAnimations()V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mSyncAnimatorList:Ljava/util/ArrayList;

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p1, p1, Lo5/a9;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120505

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f120608

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeAnimations()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->initializeHideAnimation()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->initializeImageAnimation()V

    return-void
.end method

.method private initializeHideAnimation()V
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

    const v3, 0x7f0b009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/x0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/x0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/e1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/e1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 9
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

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

.method private initializeImageAnimation()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    new-instance v2, Lu4/c;

    invoke-direct {v2}, Lu4/c;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/y0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/y0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6
    new-instance v2, Lu4/e;

    invoke-direct {v2}, Lu4/e;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/c1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/c1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    nop

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

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)Lo5/a9;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->resetViewScaleAndAlpha(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startImageAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mScanCaptureButtonEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;->onClicked()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeHideAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$initializeHideAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initializeImageAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$initializeImageAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startShowAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startShrinkAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startShrinkAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->setScanCaptureButtonBackgroundWidth(I)V

    return-void
.end method

.method private synthetic lambda$startShrinkAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startShrinkAnimation()V

    return-void
.end method

.method private makeImageButton()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->setScanCaptureButtonBackgroundWidth(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v2, v2, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->d:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private makeImageTextButton()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v1, v1, Lo5/a9;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->setScanCaptureButtonBackgroundWidth(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method private resetViewScaleAndAlpha(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setScanCaptureButtonBackgroundWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v0, v0, Lo5/a9;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p1, p1, Lo5/a9;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private startAnimation(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startImageAnimation(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startAnimation(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$2;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :goto_0
    return-void
.end method

.method private startShowAnimation(Z)V
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/d1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/d1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShrinkAnimation()V
    .locals 14

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

    const v3, 0x7f0b00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/b1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/b1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$4;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    mul-int/2addr v2, v0

    sub-int/2addr v5, v2

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b00ac

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-array v6, v0, [I

    const/4 v7, 0x0

    aput v5, v6, v7

    const/4 v5, 0x1

    aput v3, v6, v5

    .line 10
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v8, v2

    .line 11
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/a1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/a1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object v4, v4, Lo5/a9;->b:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0707ed

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v2, v4

    new-array v0, v0, [F

    aput v11, v0, v7

    aput v2, v0, v5

    .line 17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v6, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 22
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 23
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method clearAnimatorListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mSyncAnimatorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method hide(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g1;->a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g1;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g1;->a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g1;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g1;->a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/g1;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mIsReduceAnimationStarted:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->makeImageButton()V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startAnimation(Landroid/animation/AnimatorSet;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public isReduceAnimationCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mIsReduceAnimationStarted:Z

    return p0
.end method

.method setScanCaptureButtonEventListener(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mScanCaptureButtonEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$ScanCaptureButtonEventListener;

    return-void
.end method

.method show(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mIsReduceAnimationStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startImageAnimation(Z)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startShowAnimation(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mIsReduceAnimationStarted:Z

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->makeImageTextButton()V

    .line 10
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startShowAnimation(Z)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->makeImageButton()V

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startImageAnimation(Z)V

    :goto_0
    return-void
.end method

.method updateOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->mViewBinding:Lo5/a9;

    iget-object p0, p0, Lo5/a9;->b:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    return-void
.end method
