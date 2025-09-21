.class public Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;
.super Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
.source "SelfieToneMenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$View;"
    }
.end annotation


# instance fields
.field private final SLIDER_SMOOTHNESS_FACTOR:I

.field private mViewBinding:Lo5/s2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0178

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->SLIDER_SMOOTHNESS_FACTOR:I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method private applyTabletConstraint(I)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v1, v1, Lo5/s2;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v1, v1, Lo5/s2;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    int-to-float p1, p1

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0705dc

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object p1, p1, Lo5/s2;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x3f4353f8    # 0.763f

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0705dd

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object p1, p1, Lo5/s2;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x3f3d70a4    # 0.74f

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object p0, p0, Lo5/s2;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->lambda$onOrientationChanged$0(I)V

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->SLIDER_SMOOTHNESS_FACTOR:I

    return p0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/s2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    .line 2
    iget-object v0, v0, Lo5/s2;->p:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v1, v1, Lo5/s2;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object p0, p0, Lo5/s2;->k:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lu3/g;->d:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private synthetic lambda$onOrientationChanged$0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->applyTabletConstraint(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public getSliderProgress()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v0, v0, Lo5/s2;->m:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->SLIDER_SMOOTHNESS_FACTOR:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/s2;->f(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onInitialize()V

    .line 3
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->applyTabletConstraint(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v0, v0, Lo5/s2;->m:Landroid/widget/SeekBar;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onOrientationChanged(I)V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/selfietone/a;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/layer/menu/selfietone/a;-><init>(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setSliderProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v0, v0, Lo5/s2;->m:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->SLIDER_SMOOTHNESS_FACTOR:I

    mul-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setSliderRange(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v0, v0, Lo5/s2;->m:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->SLIDER_SMOOTHNESS_FACTOR:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object p1, p1, Lo5/s2;->m:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->SLIDER_SMOOTHNESS_FACTOR:I

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setWideResolutionSliderBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuView;->mViewBinding:Lo5/s2;

    iget-object v0, v0, Lo5/s2;->m:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0805eb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
