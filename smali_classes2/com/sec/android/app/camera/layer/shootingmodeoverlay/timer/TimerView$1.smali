.class Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->showProgressPieTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$1;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$1;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->k(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)Lo5/k1;

    move-result-object p1

    iget-object p1, p1, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView$1;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;->k(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerView;)Lo5/k1;

    move-result-object p0

    iget-object p0, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method
