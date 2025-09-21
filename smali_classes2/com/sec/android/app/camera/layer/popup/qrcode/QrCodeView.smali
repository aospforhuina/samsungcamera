.class public Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;
.super Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;
.source "QrCodeView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$View;"
    }
.end annotation


# static fields
.field private static final FULL_VISIBLE_ITEM_COUNT_FOR_LANDSCAPE:I = 0x2

.field private static final HIDE_QR_POPUP_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "QrCodeView"


# instance fields
.field private final mActionButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mBodyText:Ljava/lang/String;

.field private mBodyTextForTts:Ljava/lang/String;

.field private final mHideQrPopupRunnable:Ljava/lang/Runnable;

.field private mIsFullRatioLayoutEnabled:Z

.field private mIsListViewExpandableEnabled:Z

.field private mIsPopupTtsConsumed:Z

.field private mIsSwipeToDismissBehaviorEnabled:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewExpandAnimation:Landroid/animation/ValueAnimator;

.field private mPopupShowingAnimation:Landroid/animation/AnimatorSet;

.field private mPopupTtsType:I

.field private mTitleText:Ljava/lang/String;

.field private mViewBinding:Lo5/y3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/layer/popup/qrcode/e;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/e;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mHideQrPopupRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsFullRatioLayoutEnabled:Z

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsListViewExpandableEnabled:Z

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsPopupTtsConsumed:Z

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsSwipeToDismissBehaviorEnabled:Z

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupTtsType:I

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$1;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mActionButtonOnClickListener:Landroid/view/View$OnClickListener;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopup()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupShowingAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/popup/qrcode/f;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/f;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mListViewExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/popup/qrcode/g;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/g;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->hideQrCodePopup()V

    return-void
.end method

.method public static synthetic e(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->lambda$cancelAnimation$0(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->lambda$initQrPopupBehavior$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->lambda$cancelAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getListViewExpandedSize()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07056b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07056d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070556

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private getPopupAlphaAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0084

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    new-instance v1, Lu4/h;

    invoke-direct {v1}, Lu4/h;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, p0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private getPopupTranslationAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070561

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v2, v2, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0085

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    new-instance v3, Lu4/h;

    invoke-direct {v3}, Lu4/h;-><init>()V

    invoke-static {v2, v1, v0, p0, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslateYAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private getPopupTts()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupTtsType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12048a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120612

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->lambda$startListViewExpandAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private hideQrCodePopup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mHideQrPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupHideRequested()V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->lambda$initView$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private inflateLayout()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/y3;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/y3;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    return-void
.end method

.method private initGuidelineLocation()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/16 v1, -0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsFullRatioLayoutEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lu3/g;->b:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    sub-float v1, v2, v1

    goto :goto_1

    :cond_2
    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    sub-float/2addr v2, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lu3/g;->b:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    move v2, v0

    :goto_2
    move v0, v1

    .line 5
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v1, v1, Lo5/y3;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->o:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lu3/g;->g:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private initQrPopupAccessibility()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$2;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private initQrPopupBehavior()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/b;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsSwipeToDismissBehaviorEnabled:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/layer/popup/qrcode/SwipeToDismissBehavior;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/SwipeToDismissBehavior;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v1, v1, Lo5/y3;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 5
    new-instance v2, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$3;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/layer/popup/qrcode/SwipeToDismissBehavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$c;)V

    .line 6
    invoke-virtual {v1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->initQrPopupBehavior()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->initQrPopupAccessibility()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->initGuidelineLocation()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mActionButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/c;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mBodyTextForTts:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsPopupTtsConsumed:Z

    return p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$cancelAnimation$0(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$cancelAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initQrPopupBehavior$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;->onQrPopupClick()V

    return-void
.end method

.method private synthetic lambda$initView$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;

    invoke-interface {p0, p3}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeContract$Presenter;->onQrPopupItemClick(I)V

    return-void
.end method

.method private synthetic lambda$startListViewExpandAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->g:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Lo5/y3;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsPopupTtsConsumed:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->getPopupTts()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->hideQrCodePopup()V

    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->showScrollEnabled()V

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->startListViewExpandAnimation()V

    return-void
.end method

.method private showScrollEnabled()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07056b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v1, v1, Lo5/y3;->g:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->scrollTo(II)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->g:Landroid/widget/ListView;

    invoke-virtual {p0, v2, v2}, Landroid/widget/ListView;->scrollTo(II)V

    return-void
.end method

.method private startListViewExpandAnimation()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->getListViewExpandedSize()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mListViewExpandAnimation:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mListViewExpandAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mListViewExpandAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/a;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mListViewExpandAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$4;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mListViewExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startPopupShowingAnimation()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupShowingAnimation:Landroid/animation/AnimatorSet;

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->getPopupAlphaAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->getPopupTranslationAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupShowingAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$5;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupShowingAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateActionButtonContents()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsListViewExpandableEnabled:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    const v1, 0x7f120203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    sget-object v0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;->CANCEL:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->setType(Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    const v1, 0x7f120486

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    sget-object v0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;->EXPAND:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->setType(Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    sget-object v0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;->ACTION:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;->setType(Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton$Type;)V

    :goto_0
    return-void
.end method

.method private updateQrPopup()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupLocation()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupContents()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupSize()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->startPopupShowingAnimation()V

    return-void
.end method

.method private updateQrPopupBottomLocation(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 3
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateQrPopupBottomLocationForPortrait()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsFullRatioLayoutEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07056a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupBottomLocation(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07055d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupBottomLocation(II)V

    :goto_0
    return-void
.end method

.method private updateQrPopupContents()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mBodyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$6;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mItemList:Ljava/util/List;

    const v4, 0x7f0d009e

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView$6;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mBodyTextForTts:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateActionButtonContents()V

    return-void
.end method

.method private updateQrPopupLocation()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupBottomLocationForPortrait()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07055d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->updateQrPopupBottomLocation(II)V

    :goto_0
    return-void
.end method

.method private updateQrPopupSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsListViewExpandableEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v1, v1, Lo5/y3;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v0, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsListViewExpandableEnabled:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070556

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070557

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object p0, p0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mHideQrPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->hideView()V

    return-void
.end method

.method public initialize()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->inflateLayout()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->initView()V

    .line 4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsPopupTtsConsumed:Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mViewBinding:Lo5/y3;

    iget-object v1, v1, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->hideQrCodePopup()V

    :cond_1
    return v0
.end method

.method public setFullRatioLayoutEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsFullRatioLayoutEnabled:Z

    return-void
.end method

.method public setListViewExpandableEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsListViewExpandableEnabled:Z

    return-void
.end method

.method public setPopupTtsType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mPopupTtsType:I

    return-void
.end method

.method public setQrPopupData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mTitleText:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mBodyText:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mBodyTextForTts:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mItemList:Ljava/util/List;

    return-void
.end method

.method public setSwipeToDismissBehaviorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mIsSwipeToDismissBehaviorEnabled:Z

    return-void
.end method

.method public showQrCodePopup()V
    .locals 2

    const-string v0, "QrCodeView"

    const-string/jumbo v1, "showQrCodePopup"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->cancelAnimation()V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->initialize()V

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/layer/popup/qrcode/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/popup/qrcode/d;-><init>(Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startQrPopupHideTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mHideQrPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/qrcode/QrCodeView;->mHideQrPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
