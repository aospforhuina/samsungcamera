.class Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;
.super Ljava/lang/Object;
.source "DocumentScanActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/cropper/DocumentScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractTextCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    :cond_0
    return-void
.end method

.method public onExtractTextFailed()V
    .locals 0

    return-void
.end method

.method public onExtractTextStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_0
    return-void
.end method

.method public onUpdatePosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
