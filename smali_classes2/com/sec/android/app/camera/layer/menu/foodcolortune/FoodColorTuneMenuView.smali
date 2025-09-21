.class public Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;
.super Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
.source "FoodColorTuneMenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/o2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method private applyTabletConstraints(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v2, v2, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    const/4 v3, 0x6

    .line 6
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v4, 0x7

    .line 7
    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v5, 0x3

    .line 8
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v6, 0x4

    .line 9
    invoke-virtual {v1, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v7, 0x7f0707e3

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/16 v7, -0x5a

    if-eq p1, v7, :cond_1

    if-eqz p1, :cond_0

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_0

    const/16 v4, 0xb4

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v1, v2, v3, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    invoke-virtual {v1, v2, v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v1, v2, v4, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 14
    invoke-virtual {v1, v2, v4, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :goto_0
    const p0, 0x7f0a0415

    .line 15
    invoke-virtual {v1, v2, v5, p0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    invoke-virtual {v1, v2, v6, p0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 17
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->onFoodColorTuneValueChange(I)V

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
    invoke-static {v0, p0, v1}, Lo5/o2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/o2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v1, v1, Lo5/o2;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onFoodColorTuneValueChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuContract$Presenter;->onSliderValueChange(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v1, v1, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    const v2, 0x7f1200f0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/sec/android/app/camera/widget/Slider;->e(IIZI)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/Slider;->setLevelVisibility(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/Slider;->setSliderTitleVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    const v1, 0x7f08043a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setCustomBackground(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/foodcolortune/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/foodcolortune/a;-><init>(Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setProgressChangeListener(Lcom/sec/android/app/camera/widget/Slider$b;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setTrackingTouchListener(Lcom/sec/android/app/camera/widget/Slider$d;)V

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
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->applyTabletConstraints(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object p0, p0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/Slider;->g(I)V

    :cond_0
    return-void
.end method

.method public showSlider(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object v0, v0, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/Slider;->setProgress(I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object p1, p1, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object p1, p1, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/foodcolortune/FoodColorTuneMenuView;->mViewBinding:Lo5/o2;

    iget-object p1, p1, Lo5/o2;->b:Lcom/sec/android/app/camera/widget/Slider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120617

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120611

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsAllAtOnce(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
