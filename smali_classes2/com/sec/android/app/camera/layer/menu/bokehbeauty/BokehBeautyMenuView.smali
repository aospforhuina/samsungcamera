.class public Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;
.super Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
.source "BokehBeautyMenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/s1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method private applyTabletConstraint()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v2, v2, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v3, v3, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    const/4 v4, 0x6

    .line 6
    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v5, 0x7

    .line 7
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v6, 0x3

    .line 8
    invoke-virtual {v1, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v1, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 10
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 11
    invoke-virtual {v1, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 12
    invoke-virtual {v1, v3, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 13
    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v8

    const/16 v9, -0x5a

    const v10, 0x7f07047e

    const v11, 0x7f07047b

    const v12, 0x7f07047d

    const v13, 0x7f0707da

    if-eq v8, v9, :cond_3

    if-eqz v8, :cond_2

    const/16 v5, 0x5a

    if-eq v8, v5, :cond_0

    const/16 v5, 0xb4

    if-eq v8, v5, :cond_2

    goto/16 :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v5, v8

    .line 17
    invoke-virtual {v1, v2, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 19
    sget-object v5, Lu3/b;->m2:Lu3/b;

    invoke-static {v5}, Lu3/d;->e(Lu3/b;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v3, v4, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto/16 :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v5, p0

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f07047a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v3, v4, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v4, v8

    .line 28
    invoke-virtual {v1, v2, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 30
    sget-object v4, Lu3/b;->m2:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v3, v5, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v4, p0

    invoke-virtual {v1, v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :goto_0
    const p0, 0x7f0a0415

    .line 33
    invoke-virtual {v1, v2, v6, p0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 34
    invoke-virtual {v1, v2, v7, p0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 35
    invoke-virtual {v1, v3, v6, p0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 36
    invoke-virtual {v1, v3, v7, p0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 37
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private applyTabletShutterButtonGuideline()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    sget-object v1, Lu3/b;->o:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b00ed

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0171

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v1, v1, Lo5/s1;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p0, p0, Lo5/s1;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->lambda$initialize$1(I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->lambda$onOrientationChanged$2()V

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
    invoke-static {v0, p0, v1}, Lo5/s1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s1;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p0, p0, Lo5/s1;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->lambda$initialize$0(I)V

    return-void
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)Lo5/s1;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    return-object p0
.end method

.method private synthetic lambda$initialize$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;->onSkinSmoothnessSliderValueChanged(I)V

    return-void
.end method

.method private synthetic lambda$initialize$1(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuContract$Presenter;->onSkinColorSliderValueChanged(I)V

    return-void
.end method

.method private synthetic lambda$onOrientationChanged$2()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->applyTabletShutterButtonGuideline()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->applyTabletConstraint()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/b;-><init>(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setProgressChangeListener(Lcom/sec/android/app/camera/widget/Slider$b;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/a;-><init>(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setProgressChangeListener(Lcom/sec/android/app/camera/widget/Slider$b;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setTrackingTouchListener(Lcom/sec/android/app/camera/widget/Slider$d;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView$2;-><init>(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setTrackingTouchListener(Lcom/sec/android/app/camera/widget/Slider$d;)V

    return-void
.end method

.method public initializeSkinColorSlider(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->e(IIZI)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p0, p0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public initializeSkinSmoothnessSlider(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->e(IIZI)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p1, p1, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p1, p1, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p0, p0, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/c;-><init>(Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object v0, v0, Lo5/s1;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->g(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/bokehbeauty/BokehBeautyMenuView;->mViewBinding:Lo5/s1;

    iget-object p0, p0, Lo5/s1;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->g(I)V

    return-void
.end method
