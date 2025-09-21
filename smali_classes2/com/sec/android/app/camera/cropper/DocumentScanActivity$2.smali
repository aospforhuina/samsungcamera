.class Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;
.super Ljava/lang/Object;
.source "DocumentScanActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelCompleted(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DocumentScanActivity"

    const-string v1, "onCancelCompleted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "7053"

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onExtractTextPrepared()V
    .locals 4

    const-string v0, "DocumentScanActivity"

    const-string v1, "onExtractTextPrepared"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bixby_vision_temp_image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "onExtractTextPrepared : No cropped file was created for text extraction, return."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    const-string v0, "7051"

    .line 7
    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->access$000(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Ljava/io/File;)V

    return-void
.end method

.method public onSaveCompleted(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DocumentScanActivity"

    const-string v1, "onSaveCompleted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->hideLoadingAnimation()V

    const-string v0, "7054"

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onSaveFailed(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "DocumentScanActivity"

    const-string v0, "onSaveFailed"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->hideLoadingAnimation()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onSaveStarted()V
    .locals 2

    const-string v0, "DocumentScanActivity"

    const-string v1, "onSaveStarted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;->this$0:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->showLoadingAnimation()V

    return-void
.end method
