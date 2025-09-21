.class Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;
.super Ljava/lang/Object;
.source "ManualColorTuneMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTuneSlider"
.end annotation


# instance fields
.field private final mId:I

.field private final mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field private final mTitle:I

.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;Lcom/sec/android/app/camera/widget/ExpandableSlider;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->this$0:Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 3
    iput p3, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mId:I

    .line 4
    iput p4, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mTitle:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->lambda$initialize$0(II)V

    return-void
.end method

.method private synthetic lambda$initialize$0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->this$0:Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;->access$000(Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mId:I

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuContract$Presenter;->onSliderChanged(II)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->this$0:Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;->k(Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;)Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTunePanelAdapter;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mId:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/Slider;->getProgress()I

    move-result p0

    return p0
.end method

.method public getSlider()Lcom/sec/android/app/camera/widget/ExpandableSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mTitle:I

    return p0
.end method

.method public initialize(ILcom/sec/android/app/camera/widget/Slider$d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mTitle:I

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->this$0:Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->this$0:Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;

    invoke-static {v3}, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;->j(Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->e(IIZI)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/Slider;->setLevelVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/Slider;->setTrackingTouchListener(Lcom/sec/android/app/camera/widget/Slider$d;)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/d;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/layer/menu/manualcolortune/d;-><init>(Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;I)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/widget/Slider;->setProgressChangeListener(Lcom/sec/android/app/camera/widget/Slider$b;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->g(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/Slider;->setProgress(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuView$ColorTuneSlider;->mSlider:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
