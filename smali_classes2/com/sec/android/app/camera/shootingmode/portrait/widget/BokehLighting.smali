.class public Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;
.super Landroid/widget/FrameLayout;
.source "BokehLighting.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;
.implements Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;
    }
.end annotation


# static fields
.field private static final SEEK_BAR_SHOW_TIMEOUT:I = 0xbb8

.field private static final SEEK_BAR_SMOOTHNESS_FACTOR:I = 0x32


# instance fields
.field private mBokehLightingEventListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;

.field private final mHideSeekBarRunnable:Ljava/lang/Runnable;

.field private mScaleDownAnimator:Landroid/animation/ValueAnimator;

.field private mScaleUpAnimator:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lo5/s6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/q;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/q;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/q;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/q;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/q;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/q;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->lambda$initializeMinArea$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->lambda$startScaleDownAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->lambda$onProgressChanged$0(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->lambda$initializeMaxArea$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->lambda$startScaleUpAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private initialize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/s6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->initializeSeekBar()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->initializeMinArea()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->initializeMaxArea()V

    return-void
.end method

.method private initializeMaxArea()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->a:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/p;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initializeMinArea()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->b:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/o;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initializeSeekBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->setSeekBarExpandListener(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarExpandListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->setSeekBarAnimationProgressChangeListener(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar$SeekBarAnimationProgressChangeListener;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->setSeekBarAccessibilityDelegate()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->setSeekBarContentDescription()V

    return-void
.end method

.method private synthetic lambda$initializeMaxArea$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->onSideAreaTouchUpEvent()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->onSideAreaClick(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->onSideAreaTouchDownEvent()V

    :goto_0
    return p2
.end method

.method private synthetic lambda$initializeMinArea$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->onSideAreaTouchUpEvent()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->onSideAreaClick(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->onSideAreaTouchDownEvent()V

    :goto_0
    return p2
.end method

.method private synthetic lambda$onProgressChanged$0(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->getSeekBarProgress()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;->onSeekBarProgressChanged(I)V

    return-void
.end method

.method private synthetic lambda$startScaleDownAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startScaleUpAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private onSideAreaTouchDownEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startScaleUpAnimation()V

    return-void
.end method

.method private onSideAreaTouchUpEvent()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startScaleDownAnimation()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startSeekBarHideTimer()V

    return-void
.end method

.method private setSeekBarAccessibilityDelegate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$1;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setSeekBarContentDescription()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startScaleDownAnimation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    int-to-long v2, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 5
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 6
    new-instance v3, Lu4/d;

    invoke-direct {v3}, Lu4/d;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/m;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/m;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$2;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f88f5c3    # 1.07f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startScaleUpAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/h;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v1, v1, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x3f88f5c3    # 1.07f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lu4/d;

    invoke-direct {v1}, Lu4/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/portrait/widget/n;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/n;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateLottieResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->isExtend()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p1, p1, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p1, p1, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p1, p1, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    .line 3
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method


# virtual methods
.method getSeekBarProgress()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public hideSeekBar()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->isExtend()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->startSeekBarShrinkAnimation()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mBokehLightingEventListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/camera/shootingmode/portrait/widget/r;

    invoke-direct {p3, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/r;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->updateLottieResource(I)V

    return-void
.end method

.method public onSeekBarAnimationProgressChanged(I)V
    .locals 2

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method

.method public onSeekBarExpand()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startSeekBarHideTimer()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mBokehLightingEventListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/s;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/s;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSeekBarShrink()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object p0, p0, Lo5/s6;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startScaleUpAnimation()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startScaleDownAnimation()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mBokehLightingEventListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/t;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/t;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startSeekBarHideTimer()V

    return-void
.end method

.method public setBokehLightingEventListener(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mBokehLightingEventListener:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting$BokehLightingEventListener;

    return-void
.end method

.method public setSeekBarProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    mul-int/lit8 p1, p1, 0x32

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;->setInitialProgress(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->updateLottieResource(I)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->startSeekBarHideTimer()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 2
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public startSeekBarHideTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mViewBinding:Lo5/s6;

    iget-object v0, v0, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;->mHideSeekBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
