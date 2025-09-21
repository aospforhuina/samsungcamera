.class public Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;
.super Landroid/widget/SeekBar;
.source "BokehLightingSeekBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$BokehLightingGestureListener;,
        Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;,
        Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;
    }
.end annotation


# instance fields
.field private mExpand:Z

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandProgress:I

.field private mGestureListener:Landroid/view/GestureDetector;

.field private mOnSlideSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPreviousPosX:F

.field private mSeekBarAnimationProgressChangeListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;

.field private mSeekBarExpandListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;

.field private mShrinkAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->lambda$startSeekBarShrinkAnimation$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;IIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->lambda$startSeekBarExpandAnimation$4(IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->lambda$startSeekBarExpandAnimation$3(ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->lambda$setSeekBarExpand$2(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;)V

    return-void
.end method

.method public static synthetic e(ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->lambda$startSeekBarShrinkAnimation$0(ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mOnSlideSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandProgress:I

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->setSeekBarExpand(Z)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$BokehLightingGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$BokehLightingGestureListener;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;Lcom/sec/android/app/camera/shootingmode/portrait/widget/z;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mGestureListener:Landroid/view/GestureDetector;

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->startSeekBarExpandAnimation()V

    return-void
.end method

.method private synthetic lambda$setSeekBarExpand$2(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;->onSeekBarExpand()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;->onSeekBarShrink()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$startSeekBarExpandAnimation$3(ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;->onSeekBarAnimationProgressChanged(I)V

    return-void
.end method

.method private synthetic lambda$startSeekBarExpandAnimation$4(IIILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr v0, p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p2, p3

    mul-float/2addr v0, p2

    float-to-int p2, v0

    sub-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mSeekBarAnimationProgressChangeListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/camera/shootingmode/portrait/widget/w;

    invoke-direct {p3, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/w;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/SeekBar;->requestLayout()V

    return-void
.end method

.method private static synthetic lambda$startSeekBarShrinkAnimation$0(ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;->onSeekBarAnimationProgressChanged(I)V

    return-void
.end method

.method private synthetic lambda$startSeekBarShrinkAnimation$1(IILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mSeekBarAnimationProgressChangeListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/x;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/x;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/SeekBar;->requestLayout()V

    return-void
.end method

.method private setSeekBarExpand(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mSeekBarExpandListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/y;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/y;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startSeekBarExpandAnimation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/SeekBar;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandProgress:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    .line 7
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lu4/f;

    invoke-direct {v4}, Lu4/f;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/portrait/widget/v;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/v;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;III)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$2;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public isExtend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    return p0
.end method

.method public onSideAreaClick(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandProgress:I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    if-nez p1, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mPreviousPosX:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr p1, v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ne p1, v1, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mOnSlideSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {p1, p0, v1, v0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mPreviousPosX:F

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mOnSlideSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mPreviousPosX:F

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mOnSlideSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public setInitialProgress(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpand:Z

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandProgress:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mOnSlideSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$1;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setSeekBarAnimationProgressChangeListener(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mSeekBarAnimationProgressChangeListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;

    return-void
.end method

.method public setSeekBarExpandListener(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mSeekBarExpandListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;

    return-void
.end method

.method public startSeekBarShrinkAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->setSeekBarExpand(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    .line 5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lu4/f;

    invoke-direct {v3}, Lu4/f;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/portrait/widget/u;

    invoke-direct {v3, p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/u;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->mShrinkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
