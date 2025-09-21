.class public Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;
.super Landroid/widget/RelativeLayout;
.source "AutoFramingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ICON_START_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "AutoFramingButton"


# instance fields
.field private mAutoFramingButtonClickListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;

.field private mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

.field private mButtonSelected:Z

.field private mViewBinding:Lo5/s8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonSelected:Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonSelected:Z

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->lambda$startClickAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->lambda$startClickAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)Lo5/s8;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/s8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    .line 2
    iget-object v0, v0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setAutoFramingButtonStateDescription(Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    const v0, 0x7f0806a9

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private synthetic lambda$startClickAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$startClickAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private setAutoFramingButtonStateDescription(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f12060f

    goto :goto_0

    :cond_0
    const p1, 0x7f12060e

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startClickAnimation(Z)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/a;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/a;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3fcccccd    # 1.6f

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/b;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object v0, v0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mAutoFramingButtonClickListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonSelected:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;->onClicked(Z)V

    :cond_0
    return-void
.end method

.method setAutoFramingButtonClickListener(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mAutoFramingButtonClickListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;

    return-void
.end method

.method setAutoFramingButtonClickable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setBackgroundButtonSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonSelected:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setAutoFramingButtonStateDescription(Z)V

    return-void
.end method

.method public setBackgroundResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->a:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonIcon(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0806aa

    goto :goto_0

    :cond_0
    const p1, 0x7f0806a9

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public startButtonClickAnimation(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mButtonClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->startClickAnimation(Z)V

    return-void
.end method

.method public updateButtonBackground(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->mViewBinding:Lo5/s8;

    iget-object p0, p0, Lo5/s8;->a:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const p1, 0x7f0805df

    goto :goto_0

    :cond_0
    const p1, 0x7f0805e0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
