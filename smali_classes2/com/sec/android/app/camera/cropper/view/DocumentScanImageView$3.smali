.class Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DocumentScanImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->showPointImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;

.field final synthetic val$pointImage:Landroid/widget/FrameLayout;

.field final synthetic val$posX:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;Landroid/widget/FrameLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->this$0:Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->val$pointImage:Landroid/widget/FrameLayout;

    iput p3, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->val$posX:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->this$0:Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->access$200(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->val$pointImage:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->val$pointImage:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->this$0:Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;

    iget v0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->val$posX:I

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView$3;->val$pointImage:Landroid/widget/FrameLayout;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->access$300(Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;ILandroid/widget/FrameLayout;)V

    return-void
.end method
