.class Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;
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

.field final synthetic val$listener:Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;->val$listener:Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton$3;->val$listener:Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;->f(Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/VideoView$QuickTakeLockAnimationListener;)V

    return-void
.end method
