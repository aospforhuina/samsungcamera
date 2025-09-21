.class public Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PanoramaCenterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$CenterButtonAnimationListener;
    }
.end annotation


# instance fields
.field private mCenterButtonAnimationListener:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$CenterButtonAnimationListener;

.field private mViewBinding:Lo5/y5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->lambda$showCenterButton$2()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->lambda$hideCenterButton$0()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->lambda$hideStopButton$1()V

    return-void
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)Lo5/y5;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    return-object p0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p0, v0}, Lo5/y5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/y5;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    return-void
.end method

.method private synthetic lambda$hideCenterButton$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p0, p0, Lo5/y5;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$hideStopButton$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p0, p0, Lo5/y5;->b:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showCenterButton$2()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mCenterButtonAnimationListener:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$CenterButtonAnimationListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$CenterButtonAnimationListener;->onShowCenterButtonAnimationCompleted()V

    :cond_0
    return-void
.end method


# virtual methods
.method cancelCenterButtonAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object v0, v0, Lo5/y5;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p0, p0, Lo5/y5;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method cancelStopButtonAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object v0, v0, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p0, p0, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public hideCenterButton()V
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p0, p0, Lo5/y5;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideCenterButton(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p0, p0, Lo5/y5;->a:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/panorama/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/panorama/b;-><init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public hideStopButton(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/panorama/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/panorama/c;-><init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->hideCenterButton(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public setCenterButtonAnimationListener(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$CenterButtonAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mCenterButtonAnimationListener:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$CenterButtonAnimationListener;

    return-void
.end method

.method public showCenterButton(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton$1;-><init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/panorama/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/panorama/a;-><init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public showStopButton(Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaCenterButton;->mViewBinding:Lo5/y5;

    iget-object p1, p1, Lo5/y5;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f63d70a    # 0.89f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method
