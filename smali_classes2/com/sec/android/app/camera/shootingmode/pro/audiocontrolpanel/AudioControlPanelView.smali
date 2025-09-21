.class public Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;
.super Landroid/widget/RelativeLayout;
.source "AudioControlPanelView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ItemClickListener;
.implements Lcom/sec/android/app/camera/widget/l0$a;
.implements Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;
.implements Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;,
        Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$ContentsItemDecoration;,
        Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;
    }
.end annotation


# static fields
.field private static final ALPHA_DIM:F = 0.4f

.field private static final AUDIO_LEVEL_MAX_STEP:I = 0x18

.field private static final AUDIO_LEVEL_OFFSET:I = 0xc


# instance fields
.field private mActiveAudioInputType:I

.field private mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

.field private mAudioItemIdsPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

.field private mBlackAreaBottomPosition:I

.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

.field private mSelectedViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

.field private mSliderStep:I

.field private mViewBinding:Lo5/y6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->lambda$initialize$3(I)V

    return-void
.end method

.method public static synthetic b(ZLcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->lambda$setSelected$4(ZLcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->lambda$unselectAllItem$5(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->lambda$initialize$0(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->lambda$initialize$2(I)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->lambda$initialize$1(I)V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    return-object p0
.end method

.method private getActiveSlider(I)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    return-object p0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    return-object p0

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    return-object p0

    .line 4
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBlackAreaBottomPosition:I

    return p0
.end method

.method private hideActiveSlider()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->getActiveSlider(I)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/y6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/y6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    .line 2
    iget-object v0, v0, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$ContentsItemDecoration;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/k;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v2, v2, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method private isSliderMovable(Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    const/16 p1, 0x18

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2
    :cond_1
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private synthetic lambda$initialize$0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->onSliderValueChanged(I)V

    return-void
.end method

.method private synthetic lambda$initialize$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->onSliderValueChanged(I)V

    return-void
.end method

.method private synthetic lambda$initialize$2(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->onSliderValueChanged(I)V

    return-void
.end method

.method private synthetic lambda$initialize$3(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->onSliderValueChanged(I)V

    return-void
.end method

.method private static synthetic lambda$setSelected$4(ZLcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;->setSelected(Z)V

    return-void
.end method

.method private static synthetic lambda$unselectAllItem$5(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;->setSelected(Z)V

    return-void
.end method

.method private onSliderValueChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->a:Landroid/widget/TextView;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onSliderValueChanged(I)V

    .line 5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    aget-object v2, v0, p1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->setSliderContentDescription(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    aget-object p1, v0, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsSkipPrevious(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private resetAudioSlider()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->resetSlider()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->resetSlider()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->resetSlider()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->resetSlider()V

    return-void
.end method

.method private scrollCenterFocusSlider(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->getActiveSlider(I)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->isSliderMovable(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    .line 5
    :goto_0
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f030000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 7
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setItemSelected(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSelectedViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;->setSelected(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;->setSelected(Z)V

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSelectedViewHolder:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

    return-void
.end method

.method private setSliderContentDescription(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1201a2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->getActiveSlider(I)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->getActiveSlider(I)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showSlider(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 5

    add-int/lit8 p2, p2, 0xc

    .line 5
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 12
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lu4/f;

    invoke-direct {v1}, Lu4/f;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lu4/f;

    invoke-direct {v3}, Lu4/f;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v3, v3, Lo5/y6;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lu4/f;

    invoke-direct {v3}, Lu4/f;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f030000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->a:Landroid/widget/TextView;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mSliderStep:I

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onSliderShow()V

    return-void
.end method

.method private unselectAllItem()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

    .line 3
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/j;->a:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/j;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    return-void
.end method

.method public enableButton(IZ)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lu3/b;->e3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->getPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;->setEnabled(Z)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->setEnabled(IZ)V

    return-void
.end method

.method public enableInternalMic(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->enableButton(IZ)V

    .line 2
    sget-object v0, Lu3/b;->w3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->enableButton(IZ)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->enableButton(IZ)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->hideActiveSlider()V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->setSelected(IZ)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onSliderHide()V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public initButtonBackground(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBlackAreaBottomPosition:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBlackAreaBottomPosition:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->updateButtonBackground(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/f;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollReachListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/h;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollReachListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/g;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollReachListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setKeyboardEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setKeyboardEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;)V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setKeyboardEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;)V

    .line 16
    sget-object v0, Lu3/b;->e3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/e;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$SliderScrollEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setKeyboardEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;)V

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onInitialize()V

    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onAudioControlPanelItemClicked(I)V

    return-void
.end method

.method public onKeyboardLeftKey()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->scrollCenterFocusSlider(Z)V

    return-void
.end method

.method public onKeyboardRightKey()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->scrollCenterFocusSlider(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->setOrientation(I)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v1, v1, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->onOrientationChanged(ILcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScrollBackward()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->scrollCenterFocusSlider(Z)V

    return-void
.end method

.method public onScrollForward()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->scrollCenterFocusSlider(Z)V

    return-void
.end method

.method public onScrollReached()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onSliderReached()V

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->resetAudioSlider()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->unselectAllItem()V

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->setItemClickListener(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ItemClickListener;)V

    return-void
.end method

.method public setAudioItemIdsPositionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAudioItemIdsPositionList:Ljava/util/List;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->setPresenter(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    return-void
.end method

.method public setSelected(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->unselectAllItem()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object v0, v0, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->getPosition(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter$ViewHolder;

    .line 3
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/i;

    invoke-direct {p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/i;-><init>(Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSliderEnabled(IZ)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->f:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->k:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p0, p0, Lo5/y6;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$Presenter;->onShow()V

    return-void
.end method

.method public showSlider(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->hideActiveSlider()V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->getActiveSlider(I)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->showSlider(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mActiveAudioInputType:I

    return-void
.end method

.method public updateButtonBackground(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBlackAreaBottomPosition:I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mViewBinding:Lo5/y6;

    iget-object p1, p1, Lo5/y6;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBlackAreaBottomPosition:I

    if-le p1, v0, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;->DARK:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;->LIGHT:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    if-eq v0, p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mBackgroundState:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;->DARK:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView$BackgroundState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelView;->mAdapter:Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelAdapter;->onUpdateBackground(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
