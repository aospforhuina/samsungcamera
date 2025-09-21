.class public Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;
.super Landroid/widget/ImageButton;
.source "ProTipsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;
    }
.end annotation


# instance fields
.field private mEventListener:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;

.field private final mHideAnimator:Landroid/animation/Animator;

.field private final mHideDelay:I

.field private final mHideDuration:I

.field private mOnClickAnimationSet:Landroid/animation/AnimatorSet;

.field private final mScaleDownDuration:I

.field private final mScaleUpDuration:I

.field private final mShowAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mScaleDownDuration:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mScaleUpDuration:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideDelay:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideDuration:I

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getShowAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mShowAnimator:Landroid/animation/Animator;

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getHideAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideAnimator:Landroid/animation/Animator;

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getOnClickAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    .line 9
    invoke-virtual {p0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f12060d

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b007d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mScaleDownDuration:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mScaleUpDuration:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b007c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideDelay:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b007b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideDuration:I

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getShowAnimator()Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mShowAnimator:Landroid/animation/Animator;

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getHideAnimator()Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideAnimator:Landroid/animation/Animator;

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getOnClickAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    .line 19
    invoke-virtual {p0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f12060d

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mEventListener:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;

    return-object p0
.end method

.method private getHideAnimator()Landroid/animation/Animator;
    .locals 5

    .line 1
    sget-object v0, Landroid/widget/ImageButton;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    .line 2
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getOnClickAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 9

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mScaleDownDuration:I

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    invoke-static {p0, v2, v4, v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mScaleUpDuration:I

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v6, 0x3ecccccd    # 0.4f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3fcccccd    # 1.6f

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-static {p0, v4, v2, v1, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getHideAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideDelay:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 5
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 7
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    .line 8
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method private getShowAnimator()Landroid/animation/Animator;
    .locals 5

    .line 1
    sget-object v0, Landroid/widget/ImageButton;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    .line 2
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$4;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getOnClickAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    .line 2
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const-string p0, "1336"

    .line 3
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public setEventListener(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mEventListener:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mOnClickAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
