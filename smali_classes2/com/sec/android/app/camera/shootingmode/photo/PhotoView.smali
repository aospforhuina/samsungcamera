.class public Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$View;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoView"


# instance fields
.field private mDarkMode:Z

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

.field private mViewBinding:Lo5/c6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mDarkMode:Z

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->lambda$updateOrientation$1(Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->lambda$initialize$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

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

    .line 2
    invoke-static {v0, p0, v1}, Lo5/c6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/c6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v1, Lo5/c6;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->l:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

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

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;->onQrResetRequested()V

    return p2
.end method

.method private synthetic lambda$updateOrientation$1(Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    return-void
.end method

.method private updateLowPerformanceSavingToastOrientation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->f:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v1, Lo5/c6;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p1, p1, Lo5/c6;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x5a

    const v3, 0x7f0705d6

    if-ne p1, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p1, p1, Lo5/c6;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, p1, Lo5/c6;->f:Landroid/widget/TextView;

    iget-object p1, p1, Lo5/c6;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v2, v2, Lo5/c6;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->f:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p1, p1, Lo5/c6;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v4, v4, Lo5/c6;->f:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, p1, Lo5/c6;->f:Landroid/widget/TextView;

    iget-object p1, p1, Lo5/c6;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v2, v2, Lo5/c6;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr p1, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->f:Landroid/widget/TextView;

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
.method public cancelAnimation()V
    .locals 0

    return-void
.end method

.method public hideBeautyOffView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideFocusEnhancerView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideIntelligentView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideLowPerformanceSavingToast()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->f:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideSmartScan()V
    .locals 2

    const-string v0, "PhotoView"

    const-string v1, "hideSmartScan"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->isSmartScanVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->hideSmartScan()V

    :cond_0
    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/c6;->f(Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v1, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;->createIntelligentPresenter(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$View;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->initialize()V

    .line 4
    sget-object v0, Lu3/b;->a5:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v1, Lo5/c6;->m:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;->createZoomMapPresenter(Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapContract$View;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->m:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;->initialize()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v1, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;->createFocusEnhancerPresenter(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$View;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->initialize()V

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/x;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/photo/x;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public showBeautyOffView(FF)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p1, p1, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRotation()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, -0x5a

    const v2, 0x7f070584

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p1, p1, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v0, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p2, p2, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 10
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, p2, Lo5/c6;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->a:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showFocusEnhancerView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showIntelligentView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showLowPerformanceSavingToast(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p0, p0, Lo5/c6;->f:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateButtonBackground(I)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mDarkMode:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mDarkMode:Z

    if-eqz v1, :cond_1

    if-ge v0, p1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mDarkMode:Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v1, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_2

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mDarkMode:Z

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object p1, p1, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mDarkMode:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->updateFocusEnhancerButtonBackground(Z)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/y;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/y;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->updateLowPerformanceSavingToastOrientation(I)V

    .line 3
    sget-object v0, Lu3/b;->a5:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->m:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;->onOrientationChanged(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;->onOrientationChanged(I)V

    .line 6
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v0, v0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->onOrientationChanged(I)V

    return-void
.end method

.method public updatePreviewGuideLine(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoView;->mViewBinding:Lo5/c6;

    iget-object v1, v0, Lo5/c6;->g:Landroidx/constraintlayout/widget/Guideline;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v0, v0, Lo5/c6;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method
