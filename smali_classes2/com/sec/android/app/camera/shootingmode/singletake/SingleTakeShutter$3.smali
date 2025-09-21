.class Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SingleTakeShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object p1

    iget-object p1, p1, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object p0

    iget-object p0, p0, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    sget-object p0, Ls5/d;->k:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->e(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->e(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;->onStopCaptureAnimationCompleted()V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setEnabled(Z)V

    .line 8
    sget-object p0, Ls5/d;->l:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object p1

    iget-object p1, p1, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object p1

    iget-object p1, p1, Lo5/k8;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object p1

    iget-object p1, p1, Lo5/k8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object v0

    iget-object v0, v0, Lo5/k8;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$3;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;->f(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter;)Lo5/k8;

    move-result-object p0

    iget-object p0, p0, Lo5/k8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method
