.class public Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;
.super Landroid/widget/RelativeLayout;
.source "NightCaptureCountDownTimer.java"


# instance fields
.field private a:Lo5/e9;

.field private b:I

.field private c:Ljava/util/Timer;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->d:I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->f()V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->h(IZ)V

    return-void
.end method

.method private d(I)I
    .locals 0

    const/16 p0, 0x3e8

    if-lt p1, p0, :cond_0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 3

    const/16 p0, 0x3c

    if-lt p1, p0, :cond_0

    .line 1
    div-int/lit8 v0, p1, 0x3c

    .line 2
    rem-int/2addr p1, p0

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%02d:%02d"

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    rem-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/e9;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e9;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->a:Lo5/e9;

    return-void
.end method

.method private h(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->a:Lo5/e9;

    iget-object v0, v0, Lo5/e9;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->a:Lo5/e9;

    iget-object p1, p1, Lo5/e9;->a:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->a:Lo5/e9;

    iget-object p1, p1, Lo5/e9;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b009d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->g()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->c:Ljava/util/Timer;

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->d:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->d(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSystemTimeTick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightCaptureCountDownTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->c:Ljava/util/Timer;

    new-instance v3, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer$a;-><init>(Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    const-string v0, "NightCaptureCountDownTimer"

    const-string v1, "resetTimerIndicator"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->c:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    return-void
.end method

.method public getCaptureRemainTime()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->b:I

    return p0
.end method

.method public j(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->d:I

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->d(I)I

    move-result p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->h(IZ)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->i()V

    return-void
.end method

.method public setEstimatedCaptureDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;->d:I

    return-void
.end method
