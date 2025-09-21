.class public Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "ProVideoView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;
.implements Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$View;",
        "Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;",
        "Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;"
    }
.end annotation


# static fields
.field private static final NO_ACTIVE_SLIDER_ID:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "ProVideoView"


# instance fields
.field private mActiveSliderId:I

.field private mAudioItemIdsPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseContractViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/BaseContract$View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAudioControlPanelSelected:Z

.field private mIsRecordingLayout:Z

.field private mPreviewRect:Landroid/graphics/Rect;

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

.field private mVideoItemGuideLinePosition:F

.field private mViewBinding:Lo5/u7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mAudioItemIdsPositionList:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    .line 6
    sget-object p1, Lu3/g;->k:Lu3/g;

    invoke-static {p1}, Lu3/d;->a(Lu3/g;)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mVideoItemGuideLinePosition:F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsAudioControlPanelSelected:Z

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    .line 9
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    return p0
.end method

.method private getTimeIndicatorLandscapePosY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr p0, v2

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->t:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v2

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->lambda$setHistogramListeners$2()V

    return-void
.end method

.method private hideSlider(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideAudioControlPanel()V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideAudioControlPanel()V

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideAudioControlPanel()V

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideAudioControlPanel()V

    .line 12
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/u7;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u7;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    .line 3
    iget-object v0, v0, Lo5/u7;->t:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->r:Landroidx/constraintlayout/widget/Guideline;

    sget-object v2, Lu3/g;->g:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->f:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 7
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->lambda$setHistogramListeners$1(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->lambda$startProControlPanelAnimation$4()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->lambda$startProControlPanelAnimation$3(F)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProTipsButtonEvent(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method

.method private synthetic lambda$setHistogramListeners$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onHistogramVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$setHistogramListeners$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->updateIndicatorPosition()V

    return-void
.end method

.method private synthetic lambda$startProControlPanelAnimation$3(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    float-to-int p1, p1

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onControlPanelAnimationStarted(I)V

    return-void
.end method

.method private synthetic lambda$startProControlPanelAnimation$4()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onControlPanelAnimationFinished()V

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->onSliderValueChanged(II)V

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    return p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)Lo5/u7;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    return-object p0
.end method

.method private onSliderValueChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onSliderValueChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemData(II)V

    return-void
.end method

.method private refreshAudioGuidePosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method private setActiveSliderId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onActiveSliderIdChanged(II)V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    return-void
.end method

.method private setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    return-void
.end method

.method private startProControlPanelAnimation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
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

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/x3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/x3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;F)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/w3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/w3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateAudioIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, p1, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    iget-object p1, p1, Lo5/u7;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v2, v2, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v3, v3, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704c5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/u7;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v2, v2, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v3, v3, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->getTimeIndicatorLandscapePosY()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    return-void
.end method

.method public getControlPanelPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public getTouchAeAfRestrictedLeftArea()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    const/high16 p1, -0x80000000

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_0
    return-void
.end method

.method public hideAudioControlPanel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lu3/b;->f3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->hide()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsAudioControlPanelSelected:Z

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v0, -0x80000000

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    :cond_1
    return-void
.end method

.method public hideAudioInputGuide()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->b:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideAudioInputIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideControlPanel()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->hide()V

    return-void
.end method

.method public hideFocusControlPanel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isFocusControlPanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->hide()V

    const/high16 v0, -0x80000000

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    return-void
.end method

.method public hideHistogram()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->hide()V

    return-void
.end method

.method public hideTipsButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->s:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->hide()V

    return-void
.end method

.method public hideZoomRocker()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isZoomRockerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;->hide()V

    const/high16 v0, -0x80000000

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSelected(Z)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviousViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    :cond_1
    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createProSliderContainerPresenter(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lu3/b;->n3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;->createZoomRockerPresenter(Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    sget-object v0, Lu3/b;->f3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;->createAudioControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$View;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mAudioItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->setAudioItemIdsPositionList(Ljava/util/List;)V

    .line 12
    :cond_1
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createHistogramPresenter(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->createFocusControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelContract$View;)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v1, v1, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mBaseContractViews:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/pro/y3;->a:Lcom/sec/android/app/camera/shootingmode/pro/y3;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/u3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/u3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setProSliderValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->setProSliderButtonClickedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setProItemIdsPositionList(Ljava/util/List;)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->s:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/v3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/v3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->setEventListener(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;)V

    .line 23
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isAudioControlPanelVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

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

.method public isFocusControlPanelVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->isHistogramIndicatorVisible()Z

    move-result p0

    return p0
.end method

.method public isSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p0

    return p0
.end method

.method public isZoomRockerVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

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

.method public onApertureButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onApertureButtonClicked()V

    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mProItemIdsPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onProControlPanelItemClicked(I)V

    .line 4
    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->sendSALogProItem(I)V

    .line 5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    if-ne v0, p2, :cond_1

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    .line 8
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->requestProControlPanelAnimation(Z)V

    return-void

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->startProControlPanelAnimation(F)V

    .line 11
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideSlider(I)V

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;->show()V

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    goto :goto_0

    .line 15
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideControlPanel()V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->show()V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsAudioControlPanelSelected:Z

    .line 18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->showAudioInputGuide()V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;->onAudioInputButtonClicked()V

    .line 20
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    goto :goto_0

    .line 21
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideControlPanel()V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->show()V

    .line 23
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    goto :goto_0

    .line 24
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onProControlPanelItemClicked(I)V

    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    .line 26
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    goto :goto_0

    .line 27
    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollToHideResetButton()V

    .line 28
    sget-object p1, Lu3/b;->f3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->hide()V

    .line 30
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->resetView()V

    .line 31
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1200e4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->resetView()V

    .line 33
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->resetProSetting()V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSliderAutoButtonClicked(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;->onSliderAutoButtonClicked(IZ)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mActiveSliderId:I

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->isSliderVisible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->requestProControlPanelAnimation(Z)V

    return v0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/high16 v1, -0x80000000

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->hide()V

    .line 8
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsAudioControlPanelSelected:Z

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->b:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    .line 11
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->requestProControlPanelAnimation(Z)V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    return v0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->hide()V

    .line 15
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->setActiveSliderId(I)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    .line 17
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->requestProControlPanelAnimation(Z)V

    return v0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 19
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->requestProControlPanelAnimation(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    return v0

    :cond_5
    :goto_0
    return p2
.end method

.method public refreshFocusMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->refreshButtonList()V

    return-void
.end method

.method public refreshIsoSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshIsoSliderRange()V

    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->refreshShutterSpeedSliderRange()V

    return-void
.end method

.method public requestProControlPanelAnimation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->startProControlPanelAnimation(F)V

    return-void
.end method

.method public resetProView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideControlPanel()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->hide()V

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsAudioControlPanelSelected:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->hide()V

    .line 9
    :cond_1
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramValueChangedListener;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramVisibilityChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramVisibilityChangeListener;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/t3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/t3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramVisibilityChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramVisibilityChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/s3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/s3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->setHistogramValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView$HistogramValueChangedListener;)V

    :cond_0
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setProButtonText(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    return-void
.end method

.method public setVideoItemGuideLine(F)V
    .locals 1

    .line 1
    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mVideoItemGuideLinePosition:F

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mVideoItemGuideLinePosition:F

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method public showAudioInputGuide()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->refreshAudioGuidePosition()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showAudioInputIndicator()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->show()V

    return-void
.end method

.method public showControlPanel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showControlPanelWithAnimation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method public showHistogram()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->show()V

    return-void
.end method

.method public showProControlPanel()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->show()V

    return-void
.end method

.method public showTipsButton()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->s:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->show()V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    return-void
.end method

.method public updateAudioGuideText(IZ)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12019d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/shootingmode/pro/util/ProUtil;->getAudioGuideString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateAudioInputLevelIndicator([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsAudioControlPanelSelected:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/AudioInputLevelIndicator;->updateAudioInputLevelIndicator([IZ)V

    return-void
.end method

.method public updateHistogram([II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->getHistogram()Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/Histogram;->updateHistogram([II)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->onOrientationChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->n:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerView;->onOrientationChanged(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->m:Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/focuscontrolpanel/FocusControlPanelView;->onOrientationChanged(I)V

    .line 4
    sget-object v0, Lu3/b;->n3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->v:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerView;->onOrientationChanged(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->s:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 7
    sget-object v0, Lu3/b;->f3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->k:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->onOrientationChanged(I)V

    .line 9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->updateAudioIndicatorOrientation(I)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->refreshAudioGuidePosition()V

    .line 11
    :cond_1
    sget-object v0, Lu3/b;->V1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->g:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramView;->onOrientationChanged(I)V

    :cond_2
    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideTipsButton()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    .line 3
    sget-object v0, Lu3/b;->b3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->disableButton(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isSliderVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isZoomRockerVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lu3/b;->f3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const v1, 0x7f0704d0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isAudioControlPanelVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->startProControlPanelAnimation(F)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->startProControlPanelAnimation(F)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->f3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isAudioControlPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideAudioControlPanel()V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->showProControlPanel()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->isFocusControlPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideFocusControlPanel()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->showProControlPanel()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object v0, v0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideActiveSlider(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->hideZoomRocker()V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p1, p1, Lo5/u7;->l:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;->updateResetButton()V

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->startProControlPanelAnimation(F)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mIsRecordingLayout:Z

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProVideoView;->mViewBinding:Lo5/u7;

    iget-object p0, p0, Lo5/u7;->p:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
