.class Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartScanCaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startImageAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$2;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$2;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)Lo5/a9;

    move-result-object p1

    iget-object p1, p1, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->k(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$2;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->m(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)V

    return-void
.end method
