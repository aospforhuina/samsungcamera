.class public Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "ProLiteView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;
.implements Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;,
        Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$ContentsItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$View;",
        "Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;",
        "Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;"
    }
.end annotation


# instance fields
.field private mActiveSliderId:I

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

.field private mViewBinding:Lo5/g7;

.field private verticalContentsItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->onSliderValueChanged(II)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

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

    invoke-static {v0, p0, v1}, Lo5/g7;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/g7;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v1, v1, Lo5/g7;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->q:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

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

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->lambda$updateOrientation$2()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->lambda$initialize$1()V

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProTipsButtonEvent(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method private synthetic lambda$initialize$1()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->verticalContentsItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$ContentsItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;Lcom/sec/android/app/camera/shootingmode/pro/e0;)V

    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private synthetic lambda$updateOrientation$2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->UPDATE_ORIENTATION:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->verticalContentsItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;->setBottomMargin(I)V

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->updateLowPerformanceSavingToastOrientation(I)V

    return-void
.end method

.method private onSliderValueChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onSliderValueChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemData(II)V

    return-void
.end method

.method private setActiveSliderId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onActiveSliderIdChanged(II)V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    return-void
.end method

.method private setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    return-void
.end method

.method private updateLowPerformanceSavingToastOrientation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 p1, 0x0

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->LOW_PERFORMANCE_SAVING_TOAST:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v1, p0, p1

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->k:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v1, v1, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p1, p1, Lo5/g7;->k:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x5a

    const v3, 0x7f0705d6

    if-ne p1, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p1, p1, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, p1, Lo5/g7;->k:Landroid/widget/TextView;

    iget-object p1, p1, Lo5/g7;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v2, v2, Lo5/g7;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    goto :goto_0

    :cond_2
    const/16 v2, -0x5a

    if-ne p1, v2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p1, p1, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v4, v4, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, p1, Lo5/g7;->k:Landroid/widget/TextView;

    iget-object p1, p1, Lo5/g7;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v2, v2, Lo5/g7;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getControlPanelPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public getTouchAeAfRestrictedLeftArea()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->setActiveSliderId(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_0
    return-void
.end method

.method public hideControlPanel()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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

.method public hideLowPerformanceSavingToast()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideTipsButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->hide()V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v1, v1, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->initialize()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setProItemIdsPositionList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/b0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/b0;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->setEventListener(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/a0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/a0;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setProSliderValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setProSliderButtonClickedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;)V

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;Lcom/sec/android/app/camera/shootingmode/pro/f0;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->verticalContentsItemDecoration:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView$VerticalContentsItemDecoration;

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/d0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/d0;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v1, v1, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProSliderContainerPresenter(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->initialize()V

    .line 12
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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2
    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->sendSALogProItem(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProControlPanelItemClicked(I)V

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    if-ne v0, p2, :cond_0

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 p1, -0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->setActiveSliderId(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onProControlPanelItemClicked(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    .line 9
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->setActiveSliderId(I)V

    :goto_0
    return-void
.end method

.method public onSliderAutoButtonClicked(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteContract$Presenter;

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p1, p1, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p1, p1, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return p2

    :cond_2
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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->refreshIsoSliderRange()V

    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showControlPanelWithAnimation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showHistogram()V
    .locals 0

    return-void
.end method

.method public showLowPerformanceSavingToast()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->k:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showProControlPanel()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showTipsButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/c0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/c0;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->onOrientationChanged(I)V

    .line 5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->updateLowPerformanceSavingToastOrientation(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->m:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onOrientationChanged(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    :goto_0
    return-void
.end method

.method public updateProTipButtonBackground(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object v0, v0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const p1, 0x7f08074b

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->mViewBinding:Lo5/g7;

    iget-object p0, p0, Lo5/g7;->p:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const p1, 0x7f08074a

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
