.class public Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;
.super Landroid/os/AsyncTask;
.source "ExtractTextTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtractTextTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

.field private final mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

.field private final mIsObjectRemovalEnabled:Z

.field private final mOriginalImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mOriginalImagePath:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 5
    iput-object p4, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    .line 6
    iput-boolean p5, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mIsObjectRemovalEnabled:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getPolygonPointList()Ljava/util/ArrayList;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mIsObjectRemovalEnabled:Z

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Lcom/sec/android/app/camera/cropper/controller/SmartScanRectifyWrapper;->execute(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ExtractTextTask"

    if-nez p1, :cond_0

    const-string p1, "doInBackground : bitmap is null, return."

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mOriginalImagePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->deleteImage(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->writeImageToFilesDirectory(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "doInBackground : Failed to save crop image."

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "ExtractTextTask"

    const-string v0, "onPostExecute in ExtractTextTask"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/ExtractTextTask;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;->onExtractTextPrepared()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
