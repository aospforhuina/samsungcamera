.class public Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;
.source "DualRecordingView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$View;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/widget/DualPipRect$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$View;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/sec/android/app/camera/widget/DualPipRect$a;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PIP_RECT_SCALE_FACTOR:F = 1.0f


# instance fields
.field private final PIP_RECT_SCALE_DOWN_ANIMATION_DURATION:I

.field private final PIP_RECT_SCALE_UP_ANIMATION_DURATION:I

.field private mPipRectScaleFactor:F

.field private mScaleDown:Landroid/animation/ValueAnimator;

.field private mScaleUp:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lo5/t4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->PIP_RECT_SCALE_UP_ANIMATION_DURATION:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0062

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->PIP_RECT_SCALE_DOWN_ANIMATION_DURATION:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    return-void
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

.method private getDefaultPipRect()Landroid/graphics/RectF;
    .locals 3

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

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
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

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
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v3, v3, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v2, p0

    int-to-float p0, v2

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->onDualPipRectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->lambda$onPipRectTouch$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initPipLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lu3/g;->c:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setTop(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v0, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    iget-object v0, v0, Lo5/t4;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBottom(I)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->getDefaultPipRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->loadPipRectPosition(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->checkPipRectBoundary(Landroid/graphics/RectF;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/DualPipRect;->g(II)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/DualPipRect;->j(II)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget-object v0, v0, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v3, v3, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->i(IIII)V

    :cond_1
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
    invoke-static {v0, p0, v1}, Lo5/t4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/t4;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    .line 3
    iget-object v0, v0, Lo5/t4;->l:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->a:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->b:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->k:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lu3/g;->g:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->lambda$onPipRectTouch$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$onPipRectTouch$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    return-void
.end method

.method private synthetic lambda$onPipRectTouch$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

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

.method private onDualPipRectTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4016"

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private savePipRectPosition()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

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
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v3, v3, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

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

.method private updateRecordingTimeIndicatorOrientation(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p1, p1, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object v0, v0, Lo5/t4;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v2, v2, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 5
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v3, v3, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 6
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeView;->getTimeIndicatorLandscapePosX(FFFI)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, p1, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    iget-object p1, p1, Lo5/t4;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v1, v1, Lo5/t4;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

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


# virtual methods
.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->j()V

    return-void
.end method

.method protected getMainLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getRecordingTimeIndicator()Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    return-object p0
.end method

.method public hidePipLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/dualrecording/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/d;-><init>(Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->setDualPipRectEventListener(Lcom/sec/android/app/camera/widget/DualPipRect$a;)V

    .line 3
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public onPipRectDoubleClick()V
    .locals 0

    return-void
.end method

.method public onPipRectSingleClick()V
    .locals 0

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

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleUp:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-array p1, v5, [F

    .line 5
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    aput v5, p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p1, v6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleDown:Landroid/animation/ValueAnimator;

    .line 6
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleDown:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->PIP_RECT_SCALE_DOWN_ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleDown:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/dualrecording/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/c;-><init>(Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->savePipRectPosition()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleDown:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    new-array p1, v5, [F

    .line 13
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mPipRectScaleFactor:F

    aput v5, p1, v4

    const v4, 0x3f8ccccd    # 1.1f

    aput v4, p1, v6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleUp:Landroid/animation/ValueAnimator;

    .line 14
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleUp:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->PIP_RECT_SCALE_UP_ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleUp:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/dualrecording/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/b;-><init>(Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mScaleUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showPipLayout()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->initPipLayout()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->getRectCoordinates()Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public startRecordingTime(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->updateRecordingTimeIndicatorOrientation(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->w(IF)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->n(I)V

    return-void
.end method

.method public updatePauseRecordingLayout(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object v0, v0, Lo5/t4;->b:Lcom/sec/android/app/camera/widget/DualPipRect;

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

.method public updateRecordingTime(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->C(JI)V

    return-void
.end method

.method public updateResumeRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->x()V

    return-void
.end method

.method public updateStartRecordingLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n()V

    return-void
.end method

.method public updateStopRecordingLayout(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->A(Z)V

    return-void
.end method

.method public updateTimeIndicatorBackground()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/dualrecording/DualRecordingView;->mViewBinding:Lo5/t4;

    iget-object p0, p0, Lo5/t4;->f:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->v()V

    return-void
.end method
