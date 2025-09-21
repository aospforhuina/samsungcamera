.class public Lcom/sec/android/app/camera/shootingmode/night/NightView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "NightView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/night/NightContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/night/NightContract$View;"
    }
.end annotation


# static fields
.field private static final KEEP_SHOWING_TIME_INDICATOR_MIN_TIME:I = 0xbb8


# instance fields
.field private isShowGuide:Z

.field private final mHideSelectTimeButtonRunnable:Ljava/lang/Runnable;

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mViewBinding:Lo5/o5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isShowGuide:Z

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/night/s;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/night/s;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mHideSelectTimeButtonRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method private getEndScreenFlashRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getGuidePositionX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v1, v1, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const v2, 0x7f070844

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v3, v3, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr p0, v0

    return p0
.end method

.method private getGuidePositionY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v2, v2, Lo5/o5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v2, v2, Lo5/o5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->lambda$initView$4()V

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

    invoke-static {v0, p0, v1}, Lo5/o5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/o5;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    .line 2
    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/r;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/NightShutter;->setFillMoonAnimationListener(Lcom/sec/android/app/camera/widget/NightShutter$h;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/q;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/q;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/NightShutter;->setFastFillMoonAnimationListener(Lcom/sec/android/app/camera/widget/NightShutter$g;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->u:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v1, v1, Lo5/o5;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v1, v1, Lo5/o5;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateShutterAreaGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 7
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    :cond_0
    return-void
.end method

.method private isInBlackArea(Landroid/view/View;IZ)Z
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    if-le p0, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->lambda$initView$5()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->lambda$showSuperNightGuide$3()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/night/NightView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initView$4()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;->onFillMoonAnimationCompleted()V

    return-void
.end method

.method private synthetic lambda$initView$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;->onFillMoonAnimationCompleted()V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;->onCaptureStopButtonClick()V

    return-void
.end method

.method private static synthetic lambda$initialize$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isButtonExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->hideSelectTimeButton()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSuperNightGuide$3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isShowGuide:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateGuidePosition()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateGuideBackground(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->t:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic m(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->lambda$initialize$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mHideSelectTimeButtonRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/night/NightView;)Lo5/o5;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    return-object p0
.end method

.method private updateCountTimerOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    return-void
.end method

.method private updateGuideBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08071e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateGuidePosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->getGuidePositionX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->getGuidePositionY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelShutterAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->l()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->w()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public fillRemainedNightShutterMoonAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->l()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->y()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->D()V

    :goto_0
    return-void
.end method

.method public getCaptureRemainTime()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->getCaptureRemainTime()I

    move-result p0

    return p0
.end method

.method public hideCaptureTimeIndicator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->hide()V

    return-void
.end method

.method public hideCountDownTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->g()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideNightShutter()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideScreenFlash(ZFI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->k:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->e(ZF)V

    return-void
.end method

.method public hideSelectCaptureTimeIndicator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mHideSelectTimeButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->hideSelectTimeIndicator()V

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->s:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->s:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/StabilityIndicator;->i()V

    :cond_0
    return-void
.end method

.method public hideSuperNightGuide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isShowGuide:Z

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->t:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 4

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/night/NightView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/NightView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setSelectTimeButtonEventListener(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    .line 4
    sget-object v3, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->ON_TOUCH_LISTENER:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/o5;->f(Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;)V

    .line 6
    sget-object v0, Lu3/b;->B2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/o;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->k:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/night/p;->a:Lcom/sec/android/app/camera/shootingmode/night/p;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public initializeNightSelectTimeIndicatorBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setDarkMode(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setDarkMode(Z)V

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setBackgroundResource()V

    return-void
.end method

.method public initializeNightTimeIndicatorBackground(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isInBlackArea(Landroid/view/View;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->setDarkMode(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->setDarkMode(Z)V

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->setBackgroundResource()V

    return-void
.end method

.method public isSelectTimeIndicatorButtonExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isButtonExpanded()Z

    move-result p0

    return p0
.end method

.method public isSelectTimeIndicatorVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

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

.method public resizeNightShutter(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07058f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f07003d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr v2, p0

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    return-void
.end method

.method public setEstimatedCaptureDurationTime(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->setEstimatedCaptureDuration(I)V

    return-void
.end method

.method public setNightShutterAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public setNightShutterClickable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method public setNightShutterEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    .line 2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateGuidePosition()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateGuideBackground(I)V

    :cond_0
    return-void
.end method

.method public setSelectedTimeIndicator(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setSelectedTextView(Z)V

    return-void
.end method

.method public showCountDownTimer(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->j(IZ)V

    return-void
.end method

.method public showNightScreenFlash(FF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->k:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object v0

    const v1, 0x7f0602d1

    invoke-virtual {p2, v0, v1, p1}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->k(Landroid/graphics/Rect;IF)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->setPreviewRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->k:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->j(Landroid/graphics/Rect;FF)V

    :goto_0
    return-void
.end method

.method public showNightShutter()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->s:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/StabilityIndicator;->g(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->s:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showSuperNightGuide(IZ)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isShowGuide:Z

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    new-array p1, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 p2, 0x0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->SHOW_SUPER_NIGHT_GUIDE:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v0, p1, p2

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 7
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_0

    .line 8
    :cond_1
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 9
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/night/t;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/night/t;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public startNightShutterMoonAnimation(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->l()V

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/NightShutter;->z(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightShutter;->A(ILandroid/animation/TimeInterpolator;)V

    :goto_0
    return-void
.end method

.method public startNightShutterProcessingAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->B()V

    return-void
.end method

.method public stopNightShutterMoonAndStopAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightShutter;->C()V

    return-void
.end method

.method public stopNightShutterProcessingAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/NightShutter;->E()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public updateCaptureTimeIndicator(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->updateTime(I)V

    return-void
.end method

.method public updateNightSelectTimeIndicatorBackground(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v1, v1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setDarkMode(Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setBackgroundResource()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isDarkMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p2, p2, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    if-le v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setDarkMode(Z)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setBackgroundResource()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNightTimeIndicatorBackground(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isInBlackArea(Landroid/view/View;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->setDarkMode(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->setDarkMode(Z)V

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->setBackgroundResource()V

    return-void
.end method

.method public updateNightToastBackground(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->isInBlackArea(Landroid/view/View;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f08071f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f08071e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateGuidePosition()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateGuideBackground(I)V

    .line 6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->updateCountTimerOrientation(I)V

    .line 7
    :goto_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->updateOrientation(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/NightShutter;->F(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v0, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->updateOrientation(I)V

    return-void
.end method

.method public updateSelectCaptureTimeIndicator(Lcom/sec/android/app/camera/shootingmode/night/NightContract$IndicatorButtonState;II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object v1, v1, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/night/NightContract$IndicatorButtonState;->AUTO:Lcom/sec/android/app/camera/shootingmode/night/NightContract$IndicatorButtonState;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p3, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->updateTime(ZIZ)V

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p1, p1, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightView;->mViewBinding:Lo5/o5;

    iget-object p0, p0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;->updateTime(I)V

    :goto_1
    return-void
.end method
