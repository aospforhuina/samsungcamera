.class public Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;
.super Landroid/widget/RelativeLayout;
.source "NightSelectTimeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NightSelectTimeIndicator"


# instance fields
.field private mDarkMode:Z

.field private mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsButtonExpanded:Z

.field private mIsLayoutChanging:Z

.field private mIsReduceAnimationDeferred:Z

.field private mPrevEstimatedTime:I

.field private mSelectTimeButtonEventListener:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

.field private mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

.field private mViewBinding:Lo5/s5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsLayoutChanging:Z

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsReduceAnimationDeferred:Z

    .line 5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mPrevEstimatedTime:I

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$startShowSelectTimeButtonAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$translateButton$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$startHideSelectTimeButtonAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$init$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$startHideSelectTimeButtonAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method private getFormattedTimeString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-lt p1, v2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f120412

    new-array v1, v1, [Ljava/lang/Object;

    div-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f120413

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$startShowSelectTimeButtonAnimation$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$init$2(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/s5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s5;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    .line 2
    iget-object v0, v0, Lo5/s5;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/n;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/n;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v2, v2, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1201f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/m;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/m;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/c;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$1;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$2;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/e;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/night/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/night/d;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isTextViewClickAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$translateButton$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$startHideSelectTimeButtonAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$init$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->showSelectTimeButton()V

    const-string p0, "1806"

    .line 3
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isTextViewClickAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsLayoutChanging:Z

    :cond_1
    const-string p1, "1807"

    const-string v1, "1"

    .line 4
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mSelectTimeButtonEventListener:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;->onTextViewClicked(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$init$2(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isTextViewClickAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsLayoutChanging:Z

    :cond_1
    const-string p1, "1807"

    const-string v0, "2"

    .line 4
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mSelectTimeButtonEventListener:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;->onTextViewClicked(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$init$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x3f147ae1    # 0.58f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$init$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x3f147ae1    # 0.58f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startHideSelectTimeButtonAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startHideSelectTimeButtonAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startHideSelectTimeButtonAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startShowSelectTimeButtonAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startShowSelectTimeButtonAnimation$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$translateButton$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method

.method private synthetic lambda$translateButton$11(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$translateButton$12(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->lambda$translateButton$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsReduceAnimationDeferred:Z

    return p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mSelectTimeButtonEventListener:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)Lo5/s5;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsLayoutChanging:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsReduceAnimationDeferred:Z

    return-void
.end method

.method private setSelectBgWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSelectTimeIndicatorLayoutWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private showSelectTimeButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v1, v1, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v1, v1, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v1, v1, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->startShowSelectTimeButtonAnimation()V

    return-void
.end method

.method private startHideSelectTimeButtonAnimation()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsLayoutChanging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsReduceAnimationDeferred:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/night/k;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/night/k;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 9
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/night/h;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/night/h;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 13
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const v5, 0x3fb33333    # 1.4f

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/night/g;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/night/g;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$3;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShowSelectTimeButtonAnimation()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v1, v1, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setSelectTimeIndicatorLayoutWidth(I)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/night/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/night/b;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/night/i;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/night/i;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$4;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static bridge synthetic t(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->startHideSelectTimeButtonAnimation()V

    return-void
.end method

.method private translateButton()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07084c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 3
    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getX()F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    .line 4
    :goto_0
    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v4, v4, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v4, v4, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    .line 5
    :goto_1
    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v5, v5, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->a:Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->b:Landroid/widget/TextView;

    :goto_2
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7
    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v3, v6, v2

    const/4 v3, 0x1

    aput v4, v6, v3

    .line 8
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v8, 0x3e800000    # 0.25f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v9, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    new-instance v6, Lcom/sec/android/app/camera/shootingmode/night/l;

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/shootingmode/night/l;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v11

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v11

    :goto_3
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v11

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v11

    :goto_4
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-array v6, v5, [I

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060285

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    aput v11, v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f060288

    invoke-virtual {v11, v14, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    aput v11, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v15, v4

    int-to-long v3, v11

    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v8, v9, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/night/f;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/night/f;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v5, [I

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    aput v4, v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v8, v9, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/night/j;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/night/j;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    .line 23
    new-instance v4, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$5;

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$5;-><init>(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;F)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    move-object v3, v15

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 25
    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method hideSelectTimeButton()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v2, v2, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1201f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->startHideSelectTimeButtonAnimation()V

    :cond_0
    return-void
.end method

.method hideSelectTimeIndicator()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mPrevEstimatedTime:I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->cancelAnimation()V

    .line 3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsLayoutChanging:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method isButtonExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    return p0
.end method

.method isDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mDarkMode:Z

    return p0
.end method

.method setBackgroundResource()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->isDarkMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08045a

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08070b

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080459

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08070c

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method setDarkMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mDarkMode:Z

    return-void
.end method

.method setSelectTimeButtonEventListener(Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mSelectTimeButtonEventListener:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator$SelectTimeButtonEventListener;

    return-void
.end method

.method setSelectedTextView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->b:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->k:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method updateTime(ZIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mShowSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mHideSelectTimeButtonAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mTranslateButtonAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 4
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mPrevEstimatedTime:I

    if-eq v0, p2, :cond_4

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->k:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->getFormattedTimeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v0, v0, Lo5/s5;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120415

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    :cond_4
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mPrevEstimatedTime:I

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    const p3, 0x7f12040c

    const-string v1, " "

    const v2, 0x7f12040f

    const v3, 0x7f060285

    const v4, 0x7f060288

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    .line 8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v4, v4, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->a:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->getFormattedTimeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p2, p2, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v6, v6, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v4, v4, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object v3, v3, Lo5/s5;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->getFormattedTimeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p2, p2, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p2, p2, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 21
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p2, p2, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 22
    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mIsButtonExpanded:Z

    if-eqz p2, :cond_a

    .line 23
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    if-eqz p1, :cond_6

    iget-object p2, p2, Lo5/s5;->a:Landroid/widget/TextView;

    goto :goto_1

    :cond_6
    iget-object p2, p2, Lo5/s5;->b:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setSelectBgWidth(I)V

    .line 24
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p2, p2, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p3, p3, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->setSelectTimeIndicatorLayoutWidth(I)V

    const/4 p2, 0x1

    if-eqz p1, :cond_8

    .line 25
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p3, p3, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->isSelected()Z

    move-result p3

    if-nez p3, :cond_8

    .line 26
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 27
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->semClearAccessibilityFocus()V

    .line 30
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->translateButton()V

    goto :goto_2

    :cond_8
    if-nez p1, :cond_c

    .line 31
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_c

    .line 32
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 33
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 35
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p1, p1, Lo5/s5;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->semClearAccessibilityFocus()V

    .line 36
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->translateButton()V

    goto :goto_2

    .line 37
    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_b
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;->mViewBinding:Lo5/s5;

    iget-object p0, p0, Lo5/s5;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_c
    :goto_2
    return-void
.end method
