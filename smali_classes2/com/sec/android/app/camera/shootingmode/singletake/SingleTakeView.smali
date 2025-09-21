.class public Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "SingleTakeView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$View;"
    }
.end annotation


# static fields
.field private static final EXTEND_RECORDING_DURATION_BUTTON_LOTTIE_START_DELAY:I = 0xc8

.field private static final RECORDING_DURATION:I

.field private static final TAG:Ljava/lang/String; = "SingleTakeView"


# instance fields
.field private mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

.field private mExtendRecordingDurationButtonHideAnimator:Landroid/animation/Animator;

.field private final mExtendRecordingDurationButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mExtendRecordingDurationButtonShowAnimator:Landroid/animation/Animator;

.field private mExtendRecordingDurationButtonTranslationX:F

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

.field private mTimerAlphaAnimator:Landroid/animation/Animator;

.field private mViewBinding:Lo5/c8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lu3/h;->V:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->RECORDING_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonTranslationX:F

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method private applyCustomizationButtonConstraintTablet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 3
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->lambda$showCustomizedOptionMenu$2()V

    return-void
.end method

.method private hideCustomizedOptionButtonNewBadge()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_single_take_customized_option_badge_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120618

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->lambda$initView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/c8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/c8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    .line 2
    iget-object v0, v0, Lo5/c8;->x:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    sget-object v0, Lu3/b;->X3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    :cond_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lv5/a;->e(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;Z)Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/singletake/q;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/q;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->r:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->d:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v1, v1, Lo5/c8;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->updateShutterAreaGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method private initializeCustomizedOptionViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v1, v1, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;->createSingleTakeCustomizedOptionMenuPresenter(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->initialize()V

    .line 3
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/p;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/singletake/r;->a:Lcom/sec/android/app/camera/shootingmode/singletake/r;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initializeExtendRecordingDurationButtonViews()V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->X3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$7;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private isShutterVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

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

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->lambda$initializeCustomizedOptionViews$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initView$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->isShutterVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->isShutterVisible()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initialize$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;->onShutterAnimationEnd()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->updateOrientation()V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;->onSingleTakeShutterClicked()V

    return-void
.end method

.method private synthetic lambda$initializeCustomizedOptionViews$4(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->hideCustomizedOptionButtonNewBadge()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;->onSingleTakeOptionButtonClicked()V

    return-void
.end method

.method private static synthetic lambda$initializeCustomizedOptionViews$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showCustomizedOptionMenu$2()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->SHOW_CUSTOMIZED_OPTIONS_MENU:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->lambda$initializeCustomizedOptionViews$4(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->showCustomizedOptionButtonNewBadge()V

    return-void
.end method

.method static bridge synthetic p()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->RECORDING_DURATION:I

    return v0
.end method

.method private showCustomizedOptionButtonNewBadge()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_single_take_customized_option_badge_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120618

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120408

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateExtendRecordingDurationButtonTranslationX()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonTranslationX:F

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v1, v1, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, -0x40000000    # -2.0f

    div-float/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonTranslationX:F

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonShowAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mTimerAlphaAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mTimerAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->cancelAnimation()V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->cancelAnimation()V

    return-void
.end method

.method public disableShutter()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setEnabled(Z)V

    return-void
.end method

.method public enableRotateAction(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->enableRotateAction(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->enableRotateAction(Z)V

    return-void
.end method

.method public hideCustomizedOptionButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public hideCustomizedOptionMenu(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->isCustomizedOptionMenuVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->hide(Z)V

    return-void
.end method

.method public hideExtendRecordingDurationButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v2, v3, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonHideAnimator:Landroid/animation/Animator;

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public hideShutter()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->w:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/s;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setSingleTakeShutterAnimationListener(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/o;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->initializeCustomizedOptionViews()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->initializeExtendRecordingDurationButtonViews()V

    .line 5
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isCustomizedOptionMenuVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopCaptureAnimationRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->isStopCaptureAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonTranslationX:F

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->w:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->RECORDING_DURATION:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->reset()V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->reset()V

    return-void
.end method

.method public showCustomizedOptionButton()V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$4;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mCustomizedOptionButtonAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public showCustomizedOptionMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/singletake/t;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/t;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->show()V

    return-void
.end method

.method public showExtendRecordingDurationButton()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3
    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonShowAnimator:Landroid/animation/Animator;

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v4, v3}, Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;->setExtendRecordingDurationButtonShowAnimator(Landroid/animation/Animator;)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;->setDuration(I)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;->setDistance(F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;->setInterpolator(Landroid/view/animation/PathInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->SHOW_EXTEND_RECORDING_DURATION_BUTTON:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    goto :goto_0

    .line 11
    :cond_0
    move-object v4, v3

    check-cast v4, Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v4, v4, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonTranslationX:F

    sub-float v7, v6, v0

    .line 12
    invoke-static {v4, v7, v6, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslateXAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v4, v4, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    neg-float v0, v0

    .line 13
    invoke-static {v4, v0, v5, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslateXAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonShowAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mExtendRecordingDurationButtonShowAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public showLiveBlurForPreviewChange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->f:Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuView;->onShowRequested()V

    return-void
.end method

.method public showShutter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->w:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mTimerAlphaAnimator:Landroid/animation/Animator;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$6;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mTimerAlphaAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mTimerAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startShutterProgress()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->showStartCaptureAnimation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12061a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setContentDescriptionForTTS(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    sget v0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->RECORDING_DURATION:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->startShutterProgressWheel(I)V

    return-void
.end method

.method public stopShutterProgress()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120619

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setContentDescriptionForTTS(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->stopShutterProgressWheel()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->showStopCaptureAnimation()V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/SingleTakeLayoutUpdater;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateAllViews()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->isShutterVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->v:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->w:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->c:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object v0, v0, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->updateExtendRecordingDurationButtonTranslationX()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTimerText(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->mViewBinding:Lo5/c8;

    iget-object p0, p0, Lo5/c8;->w:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
