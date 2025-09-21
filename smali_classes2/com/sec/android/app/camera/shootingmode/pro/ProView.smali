.class public Lcom/sec/android/app/camera/shootingmode/pro/ProView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "ProView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/ProContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;
.implements Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProContract$View;",
        "Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;",
        "Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;"
    }
.end annotation


# static fields
.field private static final NO_ACTIVE_SLIDER_ID:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "ProView"


# instance fields
.field private mActiveSliderId:I

.field protected mBaseContractViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/BaseContract$View;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoItemGuideLinePosition:F

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mProItemIdsPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lo5/a7;

.field private previousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/ProView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    .line 5
    sget-object p1, Lu3/g;->k:Lu3/g;

    invoke-static {p1}, Lu3/d;->a(Lu3/g;)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPhotoItemGuideLinePosition:F

    .line 6
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getGuidePositionX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    sub-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0

    :cond_0
    sub-float/2addr v1, v0

    return v1
.end method

.method private getGuidePositionY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, v1

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v2, v2, Lo5/a7;->v:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/ProView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->onSliderValueChanged(II)V

    return-void
.end method

.method private hideSlider(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/ProView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->lambda$setHistogramListeners$1(Z)V

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

    .line 2
    invoke-static {v0, p0, v1}, Lo5/a7;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a7;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->q:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/ProView;Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->lambda$setHistogramListeners$2()V

    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProTipsButtonEvent(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method private synthetic lambda$setHistogramListeners$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onHistogramVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$setHistogramListeners$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->updateIndicatorPosition()V

    return-void
.end method

.method private onSliderValueChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onSliderValueChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemData(II)V

    return-void
.end method

.method private setActiveSliderId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onActiveSliderIdChanged(II)V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    return-void
.end method

.method private setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->previousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->previousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    return-void
.end method

.method private updateGuideBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-nez v1, :cond_0

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateStabilityIndicatorLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->t:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v2, v2, Lo5/a7;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->c:Landroidx/constraintlayout/widget/Guideline;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->q:Landroidx/constraintlayout/widget/Guideline;

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->t:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public endShutterProgressWheel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->s:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getControlPanelPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public getLongExposureHelpTextBottom()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    const/high16 p1, -0x80000000

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setActiveSliderId(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->previousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->previousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->previousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_0
    return-void
.end method

.method public hideControlPanel()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->hide()V

    return-void
.end method

.method public hideCountDownTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->d:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->g()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->d:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideFocusControlPanel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->isFocusControlPanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->hide()V

    const/high16 v0, -0x80000000

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setActiveSliderId(I)V

    return-void
.end method

.method public hideHistogram()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->hide()V

    return-void
.end method

.method public hideLongExposureHelpText()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideStabilityIndicator()V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->c3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->t:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->t:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/StabilityIndicator;->i()V

    :cond_0
    return-void
.end method

.method public hideTipsButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->u:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->hide()V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProSliderContainerPresenter(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createHistogramPresenter(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createFocusControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelContract$View;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v1, v1, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mBaseContractViews:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/pro/y3;->a:Lcom/sec/android/app/camera/shootingmode/pro/y3;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/b4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/b4;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setProSliderValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setProSliderButtonClickedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setProItemIdsPositionList(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->u:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/c4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/c4;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->setEventListener(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;)V

    .line 16
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isFocusControlPanelVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

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

.method public isHistogramIndicatorVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->isHistogramIndicatorVisible()Z

    move-result p0

    return p0
.end method

.method public isSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p0

    return p0
.end method

.method public onApertureButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onApertureButtonClicked()V

    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProControlPanelItemClicked(I)V

    .line 4
    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->sendSALogProItem(I)V

    .line 5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    if-ne v0, p2, :cond_1

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideSlider(I)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/high16 p1, -0x80000000

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setActiveSliderId(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideControlPanel()V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->show()V

    .line 11
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setActiveSliderId(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onProControlPanelItemClicked(I)V

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setActiveSliderId(I)V

    goto :goto_0

    .line 15
    :cond_4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollToHideResetButton()V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->resetView()V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->resetProSetting()V

    :goto_0
    return-void
.end method

.method public onSliderAutoButtonClicked(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProContract$Presenter;

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mActiveSliderId:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return p2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p1, p1, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->hide()V

    const/high16 p1, -0x80000000

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->setActiveSliderId(I)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    return p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public refreshFocusMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->refreshButtonList()V

    return-void
.end method

.method public refreshIsoSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshIsoSliderRange()V

    return-void
.end method

.method public refreshLongExposureHelpTextPosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->getGuidePositionX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->getGuidePositionY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setY(F)V

    :goto_0
    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshShutterSpeedSliderRange()V

    return-void
.end method

.method public resetProView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideControlPanel()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->hide()V

    .line 6
    :cond_0
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramValueChangedListener;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramVisibilityChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramVisibilityChangeListener;)V

    :cond_1
    return-void
.end method

.method public setHistogramListeners()V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/a4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/a4;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramVisibilityChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramVisibilityChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/z3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/z3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramValueChangedListener;)V

    :cond_0
    return-void
.end method

.method public setPhotoItemGuideLine(F)V
    .locals 1

    .line 1
    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPhotoItemGuideLinePosition:F

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPhotoItemGuideLinePosition:F

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    .line 2
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->updateGuideBackground(I)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->updateStabilityIndicatorLayout()V

    return-void
.end method

.method public setProButtonText(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    return-void
.end method

.method public setShutterWheelProgress(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setProgress(F)V

    return-void
.end method

.method public showControlPanel()I
    .locals 2

    const-string v0, "ProView"

    const-string/jumbo v1, "showControlPanel"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showControlPanelWithAnimation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showCountDownTimer(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->d:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->d:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->j(IZ)V

    return-void
.end method

.method public showHistogram()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->show()V

    return-void
.end method

.method public showLongExposureHelpText()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showProControlPanel()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    return-void
.end method

.method public showStabilityIndicator()V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->c3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->t:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/StabilityIndicator;->g(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->t:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showTipsButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->u:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->show()V

    return-void
.end method

.method public startShutterProgressWheel(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setAnimationDuration(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/ShutterProgressWheel;->setProgress(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->r:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->s:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateHistogram([II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object p0, p0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->getHistogram()Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;->updateHistogram([II)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->onOrientationChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onOrientationChanged(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->onOrientationChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->d:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->u:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 6
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mViewBinding:Lo5/a7;

    iget-object v0, v0, Lo5/a7;->f:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->onOrientationChanged(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->refreshLongExposureHelpTextPosition()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->updateGuideBackground(I)V

    return-void
.end method
