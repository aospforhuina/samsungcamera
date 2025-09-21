.class public Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "HyperLapseView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$View;"
    }
.end annotation


# instance fields
.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

.field private mRecordingGuideLandscapeY:F

.field private mViewBinding:Lo5/d5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mRecordingGuideLandscapeY:F

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->lambda$startRecordingTime$2()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->applyTabletRecordingTimeIndicatorConstraint()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/d5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/d5;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    .line 2
    iget-object v0, v0, Lo5/d5;->m:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->a:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->b:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->l:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/u;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/u;-><init>(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->lambda$updateOrientation$3()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->lambda$initView$4()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->lambda$initialize$1(Z)V

    return-void
.end method

.method private synthetic lambda$initView$4()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->APPLY_TABLET_KEY_SCREEN_CONSTRAINTS:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;->onNightHyperLapseAutoButtonClick(Z)V

    return-void
.end method

.method private synthetic lambda$initialize$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;->onTrailsButtonClick(Z)V

    return-void
.end method

.method private synthetic lambda$startRecordingTime$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;->onMaxRecordingDurationReached()V

    return-void
.end method

.method private synthetic lambda$updateOrientation$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->lambda$initialize$0(Z)V

    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p1, p1, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v1, v0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/d5;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v2, v2, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v3, v3, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, p1, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object p1, p1, Lo5/d5;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v1, v1, Lo5/d5;->m:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    return-void
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public getRecordingSystemTime()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->getRecordingSystemTime()I

    move-result p0

    return p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public hideNightHyperLapseAutoButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->r(Z)V

    :cond_0
    return-void
.end method

.method public hideTrailsButton()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;->hideHyperLapseTrailsButton()V

    :cond_0
    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/d5;->f(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/hyperlapse/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/r;-><init>(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setClickListener(Lcom/sec/android/app/camera/widget/SceneDetectButton$g;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/hyperlapse/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/p;-><init>(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;->setClickListener(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton$ClickListener;)V

    .line 4
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isNightAutoButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

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

.method public setNightHyperLapseAutoSelect(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method

.method public setTrailsButtonSelect(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method

.method public showNightHyperLapseAutoButton(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->NIGHT_HYPER_LAPSE_AUTO_BUTTON:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->F(IZ)V

    :cond_1
    return-void
.end method

.method public showTrailsButton(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p1, p1, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p1, p1, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;->setButtonIcon()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;->showHyperLapseTrailsButton()V

    :cond_0
    return-void
.end method

.method public startNightHyperLapsAutoButtonClickAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->B(Z)V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p1, p1, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/q;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/q;-><init>(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setSystemTimerEventListener(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;)V

    .line 2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/hyperlapse/s;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/s;-><init>(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->z()V

    return-void
.end method

.method public startTrailsButtonClickAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;->startButtonClickAnimation(Z)V

    return-void
.end method

.method public updateNightSceneButtonBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->G(II)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/t;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/t;-><init>(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;->onOrientationChanged(I)V

    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->D(J)V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object v0, v0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setSystemTimerEventListener(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseView;->mViewBinding:Lo5/d5;

    iget-object p0, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
