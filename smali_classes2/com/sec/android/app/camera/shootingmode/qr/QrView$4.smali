.class Lcom/sec/android/app/camera/shootingmode/qr/QrView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QrView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/qr/QrView;->getScanningAnimator()Landroid/animation/Animator;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrView;->w(Lcom/sec/android/app/camera/shootingmode/qr/QrView;)Lo5/y7;

    move-result-object p1

    iget-object p1, p1, Lo5/y7;->o:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/qr/QrView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrView;->w(Lcom/sec/android/app/camera/shootingmode/qr/QrView;)Lo5/y7;

    move-result-object p0

    iget-object p0, p0, Lo5/y7;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
