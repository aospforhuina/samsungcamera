.class Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SingleTakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->showExtendRecordingDurationButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->lambda$onAnimationStart$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object v0

    iget-object v0, v0, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p0

    iget-object p0, p0, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p1

    iget-object p1, p1, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p1

    iget-object p1, p1, Lo5/c8;->k:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->n(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)Lo5/c8;

    move-result-object p1

    iget-object p1, p1, Lo5/c8;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/singletake/u;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/u;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView$5;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
