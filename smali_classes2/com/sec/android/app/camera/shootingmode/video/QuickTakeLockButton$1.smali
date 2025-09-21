.class Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickTakeLockButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->startLockAnimation(Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p1

    iget-object p1, p1, Lo5/w8;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->e(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->d(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;)Lo5/w8;

    move-result-object p1

    iget-object p1, p1, Lo5/w8;->a:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    return-void
.end method
