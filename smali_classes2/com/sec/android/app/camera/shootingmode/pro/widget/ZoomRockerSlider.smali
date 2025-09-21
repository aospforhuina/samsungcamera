.class public Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;
.super Landroid/widget/RelativeLayout;
.source "ZoomRockerSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_SEND_STEP:J = 0xaL

.field private static final SLIDER_STEP_NUM:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ZoomRockerSlider"


# instance fields
.field private final mCheckDragPositionRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCenterBased:Z

.field private mIsTouchDown:Z

.field private mNumberOfSteps:I

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmoothnessFactor:I

.field private mViewBinding:Lo5/q9;

.field private mZoomRockerEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsTouchDown:Z

    .line 4
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/widget/h;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/h;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mCheckDragPositionRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsTouchDown:Z

    .line 9
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/widget/h;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/h;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mCheckDragPositionRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->lambda$hide$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgress:I

    return p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    return p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgress:I

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->getSmoothProgress(I)I

    move-result p0

    return p0
.end method

.method private getSmoothProgress(I)I
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    div-int/lit8 v2, v1, 0x2

    mul-int/2addr v0, v2

    add-int/2addr p1, v0

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    mul-int/2addr p1, p0

    return p1
.end method

.method private initView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/q9;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/q9;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080897

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f12067c

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->initialize(IIZIZ)V

    return-void
.end method

.method private synthetic lambda$hide$1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mZoomRockerEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsTouchDown:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgress:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;->onTouchedPositionChanged(I)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->updateProgress()V

    :cond_0
    return-void
.end method

.method private updateProgress()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mCheckDragPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mCheckDragPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateSteps()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    div-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    .line 3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsCenterBased:Z

    if-eqz v1, :cond_2

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    div-int/lit8 v1, v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v2, v2, Lo5/q9;->c:Landroid/widget/SeekBar;

    mul-int/2addr v0, v1

    neg-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMin(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgress:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    mul-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p0, p0, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/widget/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/g;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public initialize(IIZIZ)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgress:I

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    .line 3
    iput-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsCenterBased:Z

    if-eqz p5, :cond_0

    const/high16 p2, 0x43870000    # 270.0f

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p2, p2, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsCenterBased:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p1, p1, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080896

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p1, p1, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080898

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p1, p1, Lo5/q9;->c:Landroid/widget/SeekBar;

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->updateSteps()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsCenterBased:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v1, v1, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v1, v1, Lo5/q9;->c:Landroid/widget/SeekBar;

    .line 4
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v2, v2, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v3, v3, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v3, v3, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v2, v2, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v3, v3, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v3, v3, Lo5/q9;->c:Landroid/widget/SeekBar;

    .line 6
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v4, v4, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v4, v4, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v4, v4, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v3, v3, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 8
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4, v5, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p2, p2, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mNumberOfSteps:I

    div-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->updateSteps()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsTouchDown:Z

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mCheckDragPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mZoomRockerEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;->onZoomRockerTouchUp()V

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->setProgress(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p0, p0, Lo5/q9;->c:Landroid/widget/SeekBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v0

    .line 8
    :cond_2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mIsTouchDown:Z

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mZoomRockerEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;->onZoomRockerTouchDown()V

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->updateProgress()V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object p1, p1, Lo5/q9;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080895

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return p2
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mProgress:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mViewBinding:Lo5/q9;

    iget-object v0, v0, Lo5/q9;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mSmoothnessFactor:I

    mul-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->getSmoothProgress(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setZoomRockerEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->mZoomRockerEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
