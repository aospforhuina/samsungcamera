.class public Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "ProLiteVideoView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;
.implements Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;,
        Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$View;",
        "Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;",
        "Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;"
    }
.end annotation


# instance fields
.field private mActiveSliderId:I

.field private mIsRecordingLayout:Z

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

.field private mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

.field private final mProItemIdsPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lo5/i7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->lambda$initialize$1()V

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

    invoke-static {v0, p0, v1}, Lo5/i7;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/i7;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    .line 2
    iget-object v0, v0, Lo5/i7;->r:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v1, v1, Lo5/i7;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/v;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/v;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->lambda$startProControlPanelAnimation$5()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->lambda$startProControlPanelAnimation$4(F)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->lambda$initView$3()V

    return-void
.end method

.method private synthetic lambda$initView$3()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->APPLY_TABLET_KEY_SCREEN_CONSTRAINTS:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProTipsButtonEvent(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method private synthetic lambda$initialize$1()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;Lcom/sec/android/app/camera/shootingmode/pro/z;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;Lcom/sec/android/app/camera/shootingmode/pro/y;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private synthetic lambda$startProControlPanelAnimation$4(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    float-to-int p1, p1

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onControlPanelAnimationStarted(I)V

    return-void
.end method

.method private synthetic lambda$startProControlPanelAnimation$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onControlPanelAnimationFinished()V

    return-void
.end method

.method private synthetic lambda$updateOrientation$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->onSliderValueChanged(II)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->lambda$updateOrientation$2()V

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private onSliderValueChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onSliderValueChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemData(II)V

    return-void
.end method

.method private setActiveSliderId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onActiveSliderIdChanged(II)V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    return-void
.end method

.method private setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    return-void
.end method

.method private startProControlPanelAnimation(F)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/x;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/x;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;F)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/u;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/u;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p1, p1, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p1, p1, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v1, v1, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, p1, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object p1, p1, Lo5/i7;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v2, v2, Lo5/i7;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getControlPanelPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public getTouchAeAfRestrictedLeftArea()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->setActiveSliderId(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_0
    return-void
.end method

.method public hideControlPanel()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideFocusControlPanel()V
    .locals 0

    return-void
.end method

.method public hideHistogram()V
    .locals 0

    return-void
.end method

.method public hideTipsButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->hide()V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v1, v1, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->initialize()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setProItemIdsPositionList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/s;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->setEventListener(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/r;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setProSliderValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setProSliderButtonClickedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;)V

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/t;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/t;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v1, v1, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProSliderContainerPresenter(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->initialize()V

    .line 11
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isFocusControlPanelVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHistogramIndicatorVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->isSliderVisible(I)Z

    move-result p0

    return p0
.end method

.method public onApertureButtonClicked()V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2
    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->sendSALogProItem(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProControlPanelItemClicked(I)V

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    if-ne v0, p2, :cond_1

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 6
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->startProControlPanelAnimation(F)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->startProControlPanelAnimation(F)V

    :cond_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/4 p1, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->setActiveSliderId(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onProControlPanelItemClicked(I)V

    .line 12
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    .line 13
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->setActiveSliderId(I)V

    :goto_0
    return-void
.end method

.method public onSliderAutoButtonClicked(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onSliderAutoButtonClicked(IZ)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p1, p1, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p1, p1, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->startProControlPanelAnimation(F)V

    :cond_2
    return p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public refreshFocusMenu()V
    .locals 0

    return-void
.end method

.method public refreshIsoSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->refreshIsoSliderRange()V

    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->refreshShutterSpeedSliderRange()V

    return-void
.end method

.method public resetProView()V
    .locals 0

    return-void
.end method

.method public setHistogramListeners()V
    .locals 0

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setProButtonText(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showControlPanel()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showControlPanelWithAnimation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showHistogram()V
    .locals 0

    return-void
.end method

.method public showProControlPanel()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showTipsButton()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->show()V

    return-void
.end method

.method public updateHistogram([II)V
    .locals 0

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->onOrientationChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onOrientationChanged(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/w;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/w;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    :goto_0
    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updateProTipButtonBackground(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const p1, 0x7f08074b

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const p1, 0x7f08074a

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->hideTipsButton()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->startProControlPanelAnimation(F)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object v0, v0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->startProControlPanelAnimation(F)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mIsRecordingLayout:Z

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->mViewBinding:Lo5/i7;

    iget-object p0, p0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
