.class Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartScanCaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->startShowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

.field final synthetic val$isImageAnimation:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->val$isImageAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)Lo5/a9;

    move-result-object v0

    iget-object v0, v0, Lo5/a9;->b:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->k(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/view/View;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)Lo5/a9;

    move-result-object p1

    iget-object p1, p1, Lo5/a9;->d:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->k(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->val$isImageAnimation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->l(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton$3;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;->j(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;)Lo5/a9;

    move-result-object p0

    iget-object p0, p0, Lo5/a9;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
