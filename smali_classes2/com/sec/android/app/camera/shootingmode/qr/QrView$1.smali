.class Lcom/sec/android/app/camera/shootingmode/qr/QrView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QrView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/qr/QrView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/qr/QrView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrView;->w(Lcom/sec/android/app/camera/shootingmode/qr/QrView;)Lo5/y7;

    move-result-object p1

    iget-object p1, p1, Lo5/y7;->s:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrView;->w(Lcom/sec/android/app/camera/shootingmode/qr/QrView;)Lo5/y7;

    move-result-object p1

    iget-object p1, p1, Lo5/y7;->p:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$1;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrView;->access$000(Lcom/sec/android/app/camera/shootingmode/qr/QrView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$Presenter;->onQrRoiAnimationFinished()V

    return-void
.end method
