.class public Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingTimeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lo5/k9;

.field private c:Ljava/util/Timer;

.field private d:I

.field private f:I

.field private g:I

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/animation/ValueAnimator;

.field private m:Landroid/graphics/drawable/GradientDrawable;

.field private n:Landroid/content/Context;

.field private o:F

.field private p:F

.field private q:F

.field private r:Ljava/lang/Boolean;

.field private s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->a:Landroid/os/Handler;

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g:I

    .line 4
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    .line 5
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    const p2, 0x3f3851ec    # 0.72f

    .line 7
    iput p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->p:F

    const p2, 0x3ecccccd    # 0.4f

    .line 8
    iput p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->q:F

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n:Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o()V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->c:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->d:I

    return-void
.end method

.method private E()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->d:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->r(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->s(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->q(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->t(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->d:I

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)Lo5/k9;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->d:I

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->E()V

    return-void
.end method

.method private l(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07059e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07059f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    mul-float/2addr v0, v2

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v2, v2, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07059d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    mul-float/2addr v0, p1

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    .line 2
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/t;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/t;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$b;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/k9;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k9;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    return-void
.end method

.method private p()Z
    .locals 2

    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->n:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic q(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private synthetic r(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private synthetic s(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private setTimeBgWidth(Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->r:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07059c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const v2, 0x7f07059a

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v0, p1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setTimeDividerLayoutMargin(I)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v3, v3, Lo5/k9;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v0, p1

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setTimeDividerLayoutMargin(I)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    :goto_0
    add-int/2addr p1, v2

    add-int/2addr v0, p1

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->p()Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 20
    iget v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 21
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 24
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 25
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 26
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v3, v3, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 29
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 30
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v3, v3, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v3, -0x2

    .line 33
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 34
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v3, v3, Lo5/k9;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m:Landroid/graphics/drawable/GradientDrawable;

    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 37
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m:Landroid/graphics/drawable/GradientDrawable;

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 39
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 41
    iget p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->q:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 42
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->p:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 43
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->p:F

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_1

    .line 44
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    .line 45
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 46
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setTimeDividerLayoutMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private synthetic t(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private u(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private y()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->E()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->c:Ljava/util/Timer;

    .line 4
    new-instance v3, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$c;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$c;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->m()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->m:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->c:Ljava/util/Timer;

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->B()V

    :cond_1
    return-void
.end method

.method public C(JI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxRecordingTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingTimeIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 2
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    const/16 v0, 0xe10

    if-ge p3, v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p3}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    iget-object p3, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p3, p3, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public D(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingTimeWithSystemTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingTimeIndicator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->c:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->y()V

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 4
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p0, p0, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getRecordingSystemTime()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->d:I

    return p0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    return-void
.end method

.method public k(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->f:I

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0094

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance p2, Lcom/sec/android/app/camera/widget/v;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/widget/v;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->f:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0602c8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->r:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->r:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setTimeBgWidth(Z)V

    :cond_0
    return-void
.end method

.method public setSystemTimerEventListener(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$d;

    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/u;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/u;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator$a;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public w(IF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->g:I

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->o:F

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    invoke-static {p2}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0xe10

    if-ge p1, v1, :cond_1

    .line 6
    invoke-static {p2}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v2, v2, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07059f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07059d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->l(I)V

    .line 19
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setTimeBgWidth(Z)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object p1, p1, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->u(Landroid/view/View;)V

    return-void
.end method

.method public x()V
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602c8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/widget/w;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/w;-><init>(Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v2, v2, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07059d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07059f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v2, v2, Lo5/k9;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v2, v2, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    invoke-static {v0}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v2, v2, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v1, v1, Lo5/k9;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->setTimeBgWidth(Z)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->b:Lo5/k9;

    iget-object v0, v0, Lo5/k9;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;->u(Landroid/view/View;)V

    return-void
.end method
