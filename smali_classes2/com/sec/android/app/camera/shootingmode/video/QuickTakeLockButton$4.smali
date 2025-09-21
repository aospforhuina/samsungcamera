.class Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickTakeLockButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->startLottieAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

.field final synthetic val$listener:Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->val$listener:Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p0

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->val$listener:Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;->onAnimationEnd()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p1

    iget-object p1, p1, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p1

    iget-object p1, p1, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p1

    iget-object p1, p1, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p1

    iget-object p1, p1, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$4;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p0

    iget-object p0, p0, Lo5/w8;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
