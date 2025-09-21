.class Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DisplayCutoutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->showSwitchCameraAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->b(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)Lo5/g1;

    move-result-object p1

    iget-object p1, p1, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;->this$0:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->b(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)Lo5/g1;

    move-result-object p0

    iget-object p0, p0, Lo5/g1;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
