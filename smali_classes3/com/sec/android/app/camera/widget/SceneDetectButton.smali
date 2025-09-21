.class public Lcom/sec/android/app/camera/widget/SceneDetectButton;
.super Landroid/widget/RelativeLayout;
.source "SceneDetectButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/SceneDetectButton$h;,
        Lcom/sec/android/app/camera/widget/SceneDetectButton$g;,
        Lcom/sec/android/app/camera/widget/SceneDetectButton$f;
    }
.end annotation


# static fields
.field private static final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/widget/SceneDetectButton$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lo5/i6;

.field private b:I

.field private c:Landroid/animation/AnimatorSet;

.field private d:Landroid/animation/AnimatorSet;

.field private f:Landroid/animation/AnimatorSet;

.field private g:Z

.field private k:Z

.field private l:Lcom/sec/android/app/camera/widget/SceneDetectButton$g;

.field private m:Lcom/sec/android/app/camera/widget/SceneDetectButton$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    const/high16 v0, -0x80000000

    const v1, 0x7f080485

    const v2, 0x7f120426

    .line 2
    invoke-static {v0, v1, v1, v2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->o(IIII)V

    const/16 v0, 0x2b

    const v1, 0x7f0805e5

    const v2, 0x7f0805e6

    const v3, 0x7f120414

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->o(IIII)V

    const/16 v0, 0x2c

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->o(IIII)V

    const/16 v0, 0x2d

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->o(IIII)V

    const/16 v0, 0x2f

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->o(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g:Z

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->s()V

    return-void
.end method

.method private A(IZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;

    if-nez p1, :cond_0

    const-string p0, "SceneDetectButton"

    const-string p1, "setSceneId return, sceneResource is null"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setContentDescription(Z)V

    if-eqz p2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private C(Z)V
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

    const v3, 0x7f0b009a

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
    new-instance v2, Lcom/sec/android/app/camera/widget/e0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/widget/e0;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;)V

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

    const v3, 0x7f0b009b

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
    new-instance v2, Lcom/sec/android/app/camera/widget/c0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/widget/c0;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v2, Lcom/sec/android/app/camera/widget/SceneDetectButton$a;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton$a;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

    .line 11
    new-instance v3, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton$b;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

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

.method private D()V
    .locals 8

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

    const v3, 0x7f0b009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/widget/b0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/widget/b0;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;)V

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

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v2, Lcom/sec/android/app/camera/widget/d0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/widget/d0;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f:Landroid/animation/AnimatorSet;

    .line 9
    new-instance v3, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton$c;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

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

.method private E(IZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g:Z

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->A(IZ)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v3, v3, Lo5/i6;->a:Landroid/widget/Button;

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    const-string v8, "scaleY"

    invoke-static {v3, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 10
    iget-object v7, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v7, v7, Lo5/i6;->b:Landroid/widget/ImageView;

    new-array v9, v2, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 11
    iget-object v7, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v7, v7, Lo5/i6;->b:Landroid/widget/ImageView;

    new-array v9, v2, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 12
    new-instance v6, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;

    invoke-direct {v6, p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$d;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v6, v6, Lo5/i6;->b:Landroid/widget/ImageView;

    new-array v7, v2, [F

    fill-array-data v7, :array_4

    const-string v8, "alpha"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 14
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    .line 15
    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v8}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object v7, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;

    invoke-direct {v8, p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$e;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    const/4 p2, 0x5

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v4, p2, v7

    aput-object v5, p2, v1

    aput-object v0, p2, v2

    const/4 v0, 0x3

    aput-object v3, p2, v0

    const/4 v0, 0x4

    aput-object v6, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->x(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/widget/SceneDetectButton;ZLcom/sec/android/app/camera/widget/SceneDetectButton$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->u(ZLcom/sec/android/app/camera/widget/SceneDetectButton$h;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->w(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->y(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->v(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lcom/sec/android/app/camera/widget/SceneDetectButton$f;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->m:Lcom/sec/android/app/camera/widget/SceneDetectButton$f;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/widget/SceneDetectButton;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    return p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/widget/SceneDetectButton;)Lo5/i6;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/widget/SceneDetectButton;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->z(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->A(IZ)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/widget/SceneDetectButton;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->E(IZ)V

    return-void
.end method

.method static bridge synthetic n()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static o(IIII)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;-><init>(IIILcom/sec/android/app/camera/widget/i0;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private q(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->b()I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->a()I

    move-result p0

    return p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported scene id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/i6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/i6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    .line 2
    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setContentDescription(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;

    if-nez v0, :cond_0

    const-string p0, "SceneDetectButton"

    const-string p1, "setSceneId return, sceneResource is null"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v1, v1, Lo5/i6;->a:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v1, v1, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v1, v1, Lo5/i6;->a:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f12060f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f12060e

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p1, p1, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic u(ZLcom/sec/android/app/camera/widget/SceneDetectButton$h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->c()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f12060f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;->c()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f12060e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic v(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic w(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic x(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setScaleY(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic y(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private z(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->t(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->n:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/SceneDetectButton$h;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/widget/f0;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/widget/f0;-><init>(Lcom/sec/android/app/camera/widget/SceneDetectButton;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->C(Z)V

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->setContentDescription(Z)V

    return-void
.end method

.method public F(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->t(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->q(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->q(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update : sceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDetectButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->E(IZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->g:Z

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->r(Z)V

    :goto_0
    return-void
.end method

.method public G(II)V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p2, p2, Lo5/i6;->a:Landroid/widget/Button;

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->k:Z

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->k:Z

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p1, p1, Lo5/i6;->a:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->k:Z

    if-eqz p0, :cond_2

    const p0, 0x7f0805df

    goto :goto_2

    :cond_2
    const p0, 0x7f0805e0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDetectButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object v0, v0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->l:Lcom/sec/android/app/camera/widget/SceneDetectButton$g;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p1, p1, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->l:Lcom/sec/android/app/camera/widget/SceneDetectButton$g;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->isSelected()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton$g;->onSceneDetectButtonClicked(Z)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "SceneDetectButton"

    const-string v1, "cancelAnimation"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->c:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->d:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/cropper/view/o;->a:Lcom/sec/android/app/camera/cropper/view/o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->f:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->b:I

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/SceneDetectButton;->D()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setAnimationListener(Lcom/sec/android/app/camera/widget/SceneDetectButton$f;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->m:Lcom/sec/android/app/camera/widget/SceneDetectButton$f;

    return-void
.end method

.method public setBackgroundButtonSelected(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method public setBackgroundResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->a:Lo5/i6;

    iget-object p0, p0, Lo5/i6;->a:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setClickListener(Lcom/sec/android/app/camera/widget/SceneDetectButton$g;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->l:Lcom/sec/android/app/camera/widget/SceneDetectButton$g;

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/SceneDetectButton;->k:Z

    return-void
.end method

.method public t(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
