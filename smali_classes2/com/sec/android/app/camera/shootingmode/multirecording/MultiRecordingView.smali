.class public Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "MultiRecordingView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$View;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/widget/DualPipRect$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$View;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/sec/android/app/camera/widget/DualPipRect$a;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PIP_RECT_SCALE_FACTOR:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "MultiRecordingView"

.field private static final VELOCITY_THRESHOLD:F = 0.3f


# instance fields
.field private final DELAY_TIME_TO_HIDE_PIP_RECT_STAND_BY:I

.field private final MULTI_PREVIEW_LIST_ALPHA_FADE_OUT_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_LIST_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_LIST_CLOSE_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_LIST_CLOSE_START_DELAY:I

.field private final MULTI_PREVIEW_LIST_FLING_THRESHOLD:F

.field private final MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

.field private final MULTI_PREVIEW_PIP_ALPHA_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_PIP_ICON_SHOW_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_PIP_OFF_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_PIP_RECT_SCALE_DOWN_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_PIP_RECT_SCALE_UP_ANIMATION_DURATION:I

.field private final MULTI_PREVIEW_PIP_SCALE_ANIMATION_DURATION:I

.field private final SHORTCUT_HEIGHT:I

.field private mDownPoint:Landroid/graphics/Point;

.field private mDrawerMoveDistanceY:I

.field private final mHidePipRectStandByRunnable:Ljava/lang/Runnable;

.field private mIsMoveUp:Z

.field private mIsRecordingLayout:Z

.field private mIsStartedByHidePosition:Z

.field private mIsVelocityOverThreshold:Z

.field private mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMultiRecordingType:I

.field private mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

.field private mPipRectScaleFactor:F

.field private mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

.field private mPipScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPreviewListPositionY:F

.field private mScrollMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBinding:Lo5/m5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->DELAY_TIME_TO_HIDE_PIP_RECT_STAND_BY:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_FLING_THRESHOLD:F

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07078d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->SHORTCUT_HEIGHT:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b005d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ANIMATION_DURATION:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ALPHA_FADE_OUT_ANIMATION_DURATION:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_CLOSE_ANIMATION_DURATION:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_CLOSE_START_DELAY:I

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_RECT_SCALE_UP_ANIMATION_DURATION:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_RECT_SCALE_DOWN_ANIMATION_DURATION:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ALPHA_ANIMATION_DURATION:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_OFF_ANIMATION_DURATION:I

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_SCALE_ANIMATION_DURATION:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0061

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ICON_SHOW_ANIMATION_DURATION:I

    .line 16
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mScrollMode:I

    .line 19
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    .line 20
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 21
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    .line 22
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 23
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 24
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    .line 25
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/multirecording/s;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/s;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setMultiPreviewListDrawerButtonTouchListener$6(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setMultiThumbnailListTouchListener$7(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic E(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic G(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lo5/m5;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    return-object p0
.end method

.method static bridge synthetic H(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic I(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic J(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->savePipRectPosition()V

    return-void
.end method

.method static bridge synthetic K(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHidePipRectStandByTimer()V

    return-void
.end method

.method static bridge synthetic L(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideDownAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    return-void
.end method

.method static bridge synthetic M(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    return-void
.end method

.method static bridge synthetic N(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipStandByLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method private addPipRectLayoutChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$4;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private calculateScrollMode(III)I
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->i1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_FLING_THRESHOLD:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private calculateTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/16 v2, -0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    .line 4
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private checkBoundary(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result p0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private checkPipRectBoundary(Landroid/graphics/RectF;Landroid/view/View;)Z
    .locals 1

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearMultiPreviewListTouchEvent()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsVelocityOverThreshold:Z

    :cond_0
    return-void
.end method

.method private containsShutterArea(Landroid/graphics/Point;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 5
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-gt v0, v3, :cond_0

    if-gt v3, v2, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-gt v1, p1, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getBottomBackgroundPositionY(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getY()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method private getDefaultPipRect()Landroid/graphics/RectF;
    .locals 3

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private getRectCoordinates()Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lu3/g;->c:Lu3/g;

    invoke-static {v4}, Lu3/d;->a(Lu3/g;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v3, v1

    .line 4
    iput v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v3, v2

    .line 5
    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v2, p0

    int-to-float p0, v2

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private getRelativeTop(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRelativeTop(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$12()V

    return-void
.end method

.method private handleClickEvent(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideDownAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    goto :goto_1

    .line 5
    :cond_2
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    :goto_1
    return-void
.end method

.method private handleHorizontalScrollEvent(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_FLING_THRESHOLD:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    if-gez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->scrollToRightEnd()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->scrollToLeftEnd()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private handleMoveEvent(I)V
    .locals 4

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getBottomBackgroundPositionY(Z)F

    move-result p0

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private handleScaleAnimated(Landroid/graphics/RectF;F)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p2, v2, p2

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0, p1, v2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private handleScrollEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideDownAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    :goto_0
    return-void
.end method

.method private handleVelocityEvent()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsMoveUp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideDownAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    :goto_0
    return-void
.end method

.method private hidePipMenuAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private hideWithAlphaAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_OFF_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$5;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$8(Landroid/view/View;)V

    return-void
.end method

.method private initPipLayout()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lu3/g;->c:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setTop(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v0, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    iget-object v0, v0, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBottom(I)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->initPipRectPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/DualPipRect;->g(II)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/DualPipRect;->j(II)V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget-object v0, v0, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->i(IIII)V

    return-void
.end method

.method private initPipRectPosition()Landroid/graphics/RectF;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getDefaultPipRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->loadPipRectPosition(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->checkPipRectBoundary(Landroid/graphics/RectF;Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private initPipStandByLayout(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->setPipState(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->setPipType(I)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->d:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
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

    .line 2
    invoke-static {v0, p0, v1}, Lo5/m5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/m5;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    .line 3
    iget-object v0, v0, Lo5/m5;->v:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->b:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->b:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->r:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->d:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateAccessibilityNodeInfo()V

    return-void
.end method

.method private isPipAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPipRectInQuickSettingArea()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$makeOpenDrawerButtonAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$14(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makeCloseDrawerButtonAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$makeOpenDrawerButtonAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipStandByHide()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipStandByLayout(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/r;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ALPHA_ANIMATION_DURATION:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onPipRectTouch$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private synthetic lambda$onPipRectTouch$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private synthetic lambda$setMultiPreviewListDrawerButtonTouchListener$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "MultiRecordingView"

    const-string p1, "multiPreviewListDrawerButton onTouch return, animator is running."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onThumbnailListTouch(Landroid/view/MotionEvent;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->calculateTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v2, 0x0

    if-eqz p2, :cond_d

    if-eq p2, v1, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_7

    goto/16 :goto_3

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    .line 10
    :cond_3
    iget p2, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v2

    .line 11
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mScrollMode:I

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->calculateScrollMode(III)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mScrollMode:I

    .line 13
    :cond_4
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mScrollMode:I

    if-eq p1, v1, :cond_10

    .line 14
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateMoveEvent(I)V

    .line 15
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsStartedByHidePosition:Z

    if-eqz p1, :cond_5

    int-to-float p1, p2

    .line 16
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPreviewListPositionY:F

    add-float/2addr p1, p2

    float-to-int p2, p1

    goto :goto_0

    :cond_5
    int-to-float p1, p2

    .line 17
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHideAnimationMultiPreviewList()V

    .line 19
    :cond_6
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->checkBoundary(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleMoveEvent(I)V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result p2

    if-eqz p2, :cond_8

    return v1

    .line 21
    :cond_8
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mScrollMode:I

    if-ne p2, v1, :cond_9

    .line 22
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleHorizontalScrollEvent(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    .line 23
    :cond_9
    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsVelocityOverThreshold:Z

    if-eqz p2, :cond_a

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleVelocityEvent()V

    goto :goto_1

    .line 25
    :cond_a
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDrawerMoveDistanceY:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_SCROLL_THRESHOLD:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleScrollEvent()V

    goto :goto_1

    .line 27
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleClickEvent(I)V

    .line 28
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->clearMultiPreviewListTouchEvent()V

    goto :goto_3

    .line 29
    :cond_d
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->containsShutterArea(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v2

    .line 30
    :cond_e
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDrawerMoveDistanceY:I

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDownPoint:Landroid/graphics/Point;

    .line 32
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPreviewListPositionY:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_f

    move p1, v1

    goto :goto_2

    :cond_f
    move p1, v2

    .line 33
    :goto_2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsStartedByHidePosition:Z

    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsMoveUp:Z

    .line 35
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mScrollMode:I

    :cond_10
    :goto_3
    return v1
.end method

.method private synthetic lambda$setMultiThumbnailListTouchListener$7(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onThumbnailListTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->onDualPipRectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$11()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipStateToggleMenuClick()V

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$12()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipStandByLayout()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->showPipSizeOnMenu()V

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$13(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipStandByLayout(Z)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startPipRectScaleOffAnimation()V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/o;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/o;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_OFF_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/m;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ICON_SHOW_ANIMATION_DURATION:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$14(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipStandByLayout(Z)V

    return p1
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->onDualPipRectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$16()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipStateToggleMenuClick()V

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$17()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipStandByLayout()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->showPipSizeOffMenu(Z)V

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$18(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->d:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hideWithAlphaAnimation(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startPipRectScaleOnAnimation()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/q;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/q;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_OFF_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/n;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ICON_SHOW_ANIMATION_DURATION:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$8(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipSizeToggleMenuClick()V

    return-void
.end method

.method private synthetic lambda$setPipRectSizeMenuListeners$9(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipStandByLayout(Z)V

    return p1
.end method

.method private synthetic lambda$startPipRectScaleOffAnimation$19(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleScaleAnimated(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private synthetic lambda$startPipRectScaleOnAnimation$20(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->handleScaleAnimated(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private synthetic lambda$startPipResizeAnimation$21(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private loadPipRectPosition(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    div-float/2addr v2, v0

    const-string v3, "pref_key_directors_view_pip_rect_left"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v0

    const-string v4, "pref_key_directors_view_pip_rect_top"

    invoke-static {v2, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v0

    const-string v5, "pref_key_directors_view_pip_rect_right"

    invoke-static {v3, v5, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v0

    const-string v4, "pref_key_directors_view_pip_rect_bottom"

    invoke-static {p0, v4, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;F)F

    move-result p0

    mul-float/2addr v1, v0

    mul-float/2addr v2, v0

    mul-float/2addr v3, v0

    mul-float/2addr p0, v0

    .line 6
    invoke-static {v1, v2, v3, p0}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$startPipRectScaleOnAnimation$20(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private makeCloseDrawerButtonAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_CLOSE_ANIMATION_DURATION:I

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 5
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_CLOSE_ANIMATION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v6, v6, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12025f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v6, Lcom/sec/android/app/camera/shootingmode/multirecording/v;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/v;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p0, v1, [Landroid/animation/Animator;

    aput-object v2, p0, v4

    aput-object v3, p0, v5

    .line 10
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private makeMultiPreviewListSlideAnimatorSet(FZ)Landroid/animation/AnimatorSet;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v4, v4, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 9
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 10
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getBottomBackgroundPositionY(Z)F

    move-result v2

    add-float/2addr v2, p1

    .line 11
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsRecordingLayout:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->SHORTCUT_HEIGHT:I

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    int-to-float v5, v5

    add-float/2addr v5, p1

    .line 12
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v6, v6, Lo5/m5;->a:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v9, v8, [F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v10

    aput v10, v9, v4

    aput v2, v9, v3

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 13
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v6, v6, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v8, [F

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result v10

    aput v10, v9, v4

    aput p1, v9, v3

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 14
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v7, v7, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v8, [F

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v11

    aput v11, v10, v4

    aput p1, v10, v3

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 15
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v7, v7, Lo5/m5;->m:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v8, [F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v10

    aput v10, v8, v4

    aput v5, v8, v3

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b005e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 18
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e851eb8    # 0.26f

    invoke-direct {p0, p2, p1, v1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 19
    :cond_3
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ANIMATION_DURATION:I

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 20
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-direct {p0, p2, v1, v1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    return-object v0
.end method

.method private makeOpenDrawerButtonAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ANIMATION_DURATION:I

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_CLOSE_START_DELAY:I

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 6
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ANIMATION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_CLOSE_START_DELAY:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v6, v6, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12025b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance v6, Lcom/sec/android/app/camera/shootingmode/multirecording/e;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/e;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p0, v1, [Landroid/animation/Animator;

    aput-object v2, p0, v4

    aput-object v3, p0, v5

    .line 12
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method private makeUpdateRecordingLayoutSlideAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 10

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->SHORTCUT_HEIGHT:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->SHORTCUT_HEIGHT:I

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    add-float/2addr v1, p1

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->m:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v5, [F

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v6, v8

    add-float/2addr v2, p1

    aput v2, v6, v7

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->a:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v6

    aput v6, v5, v8

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getBottomBackgroundPositionY(Z)F

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v8, v8, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v8

    add-float/2addr v6, v8

    add-float/2addr v6, p1

    aput v6, v5, v7

    .line 9
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ANIMATION_DURATION:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$7;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$7;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$onPipRectTouch$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$18(Landroid/view/View;)V

    return-void
.end method

.method private onDualPipRectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$onPipRectTouch$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$9(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$makeCloseDrawerButtonAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$startPipRectScaleOffAnimation$19(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private savePipRectPosition()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v1

    .line 4
    iput v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v3, v2

    .line 5
    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    const-string v4, "pref_key_directors_view_pip_rect_left"

    invoke-static {v2, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;F)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v1

    const-string v4, "pref_key_directors_view_pip_rect_top"

    invoke-static {v2, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;F)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v1

    const-string v4, "pref_key_directors_view_pip_rect_right"

    invoke-static {v2, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;F)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v1

    const-string v1, "pref_key_directors_view_pip_rect_bottom"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;F)V

    return-void
.end method

.method private setMultiPreviewListDrawerButtonTouchListener()V
    .locals 2

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/k;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/k;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setMultiThumbnailListTouchListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/l;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->setItemTouchListener(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView$ItemTouchListener;)V

    return-void
.end method

.method private setPipRectSizeMenuListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/y;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/y;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/g;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/h;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/a0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/a0;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/f;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/i;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/i;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/z;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/z;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showWithAlphaAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ALPHA_ANIMATION_DURATION:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startHideAnimationMultiPreviewList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_LIST_ALPHA_FADE_OUT_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$8;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startHidePipRectStandByTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->DELAY_TIME_TO_HIDE_PIP_RECT_STAND_BY:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private startHidePipStandByAnimation()V
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->c:Landroid/widget/ImageButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ALPHA_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$9;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPipRectScaleOffAnimation()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_SCALE_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/w;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/w;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startPipRectScaleOnAnimation()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_SCALE_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const v5, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/p;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startPipResizeAnimation(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_SCALE_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const v5, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$10;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/x;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShowPipSizeOffAnimation()V
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->c:Landroid/widget/ImageButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_ALPHA_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipStandByAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSlideDownAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$11;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->makeMultiPreviewListSlideAnimatorSet(FZ)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$12;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$12;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHideAnimationMultiPreviewList()V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->makeCloseDrawerButtonAnimation()Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateBottomBackgroundVisibility(Z)V

    return-void
.end method

.method private startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$13;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->makeMultiPreviewListSlideAnimatorSet(FZ)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$14;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateBottomBackgroundVisibility(Z)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->makeOpenDrawerButtonAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onThumbnailListShow()V

    .line 14
    sget-object p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->USER:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    if-ne p2, p0, :cond_3

    const-string p0, "4006"

    const-string p1, "1"

    .line 15
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$17()V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$11()V

    return-void
.end method

.method private updateAccessibilityNodeInfo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$15;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private updateBottomBackgroundVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsRecordingLayout:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateMoveEvent(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDrawerMoveDistanceY:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsMoveUp:Z

    if-eq v3, v0, :cond_1

    .line 3
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsVelocityOverThreshold:Z

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsMoveUp:Z

    .line 5
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mDrawerMoveDistanceY:I

    .line 6
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsVelocityOverThreshold:Z

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsVelocityOverThreshold:Z

    :cond_3
    return-void
.end method

.method private updatePipSizeMenuResources(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipRectInQuickSettingArea()Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    const p1, 0x7f08064c

    goto :goto_0

    :cond_0
    const p1, 0x7f08064b

    :goto_0
    const v1, 0x7f12026e

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    const p1, 0x7f08064a

    goto :goto_1

    :cond_2
    const p1, 0x7f080649

    :goto_1
    const v1, 0x7f12026d

    .line 2
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    const p1, 0x7f0804cb

    goto :goto_3

    :cond_3
    const p1, 0x7f0804ca

    .line 4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updatePipStandByLayout()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isPipRectInQuickSettingArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipStandByLayoutInQuickSettingArea()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x30

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipSizeMenuResources(I)V

    return-void
.end method

.method private updatePipStandByLayoutInQuickSettingArea()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/m5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v2, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v3, v3, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, p1, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object p1, p1, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->v:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    :goto_0
    return-void
.end method

.method private updateThumbnailListLayout(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiRecordingType:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiRecordingType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0703be

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0703cc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->enableBottomBackground(Z)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->enableBottomBackground(Z)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onThumbnailLayoutUpdate()V

    :cond_1
    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$startPipResizeAnimation$21(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$setPipRectSizeMenuListeners$16()V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->onDualPipRectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    return-void
.end method

.method public enableBottomBackground(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v0, Lo5/m5;->a:Landroid/view/View;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsRecordingLayout:Z

    iget-object v0, v0, Lo5/m5;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->SHORTCUT_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0602a2

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060289

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public enableMultiPreviewListListeners(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->setMultiPreviewListDrawerButtonTouchListener()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->setMultiThumbnailListTouchListener()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->setPipRectSizeMenuListeners()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/j;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/j;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->setDualPipRectEventListener(Lcom/sec/android/app/camera/widget/DualPipRect$a;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->setItemTouchListener(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView$ItemTouchListener;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->setDualPipRectEventListener(Lcom/sec/android/app/camera/widget/DualPipRect$a;)V

    :goto_0
    return-void
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public getMultiPreviewListLayoutTop()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getMultiPreviewListLayoutTop(Z)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0703b9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public hideMultiPreviewList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->m:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onThumbnailListHide()V

    return-void
.end method

.method public hidePipLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipMenuAll()V

    :cond_0
    return-void
.end method

.method public hidePipStandByLayout(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHidePipStandByAnimation()V

    :cond_1
    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->createMultiPreviewListPresenter(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->initialize()V

    .line 3
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public isMultiPreviewListOpened()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getTranslationY()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPipRectDoubleClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectDoubleClick()V

    return-void
.end method

.method public onPipRectSingleClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectSingleClick()V

    return-void
.end method

.method public onPipRectTouch(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const v0, 0x3fcccccd    # 1.6f

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipState()I

    move-result p1

    if-ne p1, v6, :cond_5

    .line 4
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipStandByLayout(Z)V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-array p1, v5, [F

    .line 7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    aput v5, p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p1, v6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 8
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_RECT_SCALE_DOWN_ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/t;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/t;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->savePipRectPosition()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipStandByLayout()V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    new-array p1, v5, [F

    .line 17
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleFactor:F

    aput v5, p1, v4

    const v4, 0x3f8ccccd    # 1.1f

    aput v4, p1, v6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    .line 18
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->MULTI_PREVIEW_PIP_RECT_SCALE_UP_ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/multirecording/u;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/u;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mPipRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public refreshPipMenuLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipMenuAll()V

    :cond_0
    return-void
.end method

.method public resetMultiPreviewListLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mHidePipRectStandByRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipLayout()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v0, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v2, v0, Lo5/m5;->m:Landroid/view/View;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public showMultiPreviewList(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->m:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateBottomBackgroundVisibility(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onThumbnailListShow()V

    :cond_1
    return-void
.end method

.method public showPipLayout(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->initPipLayout()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->initPipStandByLayout(II)V

    return-void
.end method

.method public showPipSizeOffMenu(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startShowPipSizeOffAnimation()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->f:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHidePipRectStandByTimer()V

    return-void
.end method

.method public showPipSizeOnMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->d:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->showWithAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method public showPipSizeToggleMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->showWithAlphaAnimation(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHidePipRectStandByTimer()V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    return-void
.end method

.method public startSlideDownAnimationMultiPreviewList(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->SYSTEM:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideDownAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    return-void
.end method

.method public startSlideUpAnimationMultiPreviewList(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;->SYSTEM:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startSlideUpAnimationMultiPreviewList(ZLcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$InputType;)V

    return-void
.end method

.method public updateMultiRecordingLayout(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateThumbnailListLayout(I)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/DualPipRect;->n(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;->updateOrientation(I)V

    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k(IZ)V

    return-void
.end method

.method public updatePipContentDescription(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12025a

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12025e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12025c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePipState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipState()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->setPipState(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->o()V

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->hidePipMenuAll()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHidePipRectStandByTimer()V

    :cond_1
    return-void
.end method

.method public updatePipType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v0, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipType()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updatePipSizeMenuResources(I)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->setPipType(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->p()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->addPipRectLayoutChangeListener()V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p1, p1, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startPipResizeAnimation(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->startHidePipRectStandByTimer()V

    :cond_1
    return-void
.end method

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsRecordingLayout:Z

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->makeUpdateRecordingLayoutSlideAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateBottomBackgroundVisibility(Z)V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mIsRecordingLayout:Z

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->isMultiPreviewListOpened()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->updateBottomBackgroundVisibility(Z)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object v1, v1, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->makeUpdateRecordingLayoutSlideAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mMultiPreviewListSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->mViewBinding:Lo5/m5;

    iget-object p0, p0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
