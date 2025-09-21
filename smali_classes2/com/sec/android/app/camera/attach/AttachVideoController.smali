.class Lcom/sec/android/app/camera/attach/AttachVideoController;
.super Lcom/sec/android/app/camera/attach/AbstractAttachController;
.source "AttachVideoController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachVideoController"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/attach/AttachViewModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/attach/AbstractAttachController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/attach/AttachViewModel;)V

    return-void
.end method

.method private getVideoThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "rw"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p0, :cond_3

    .line 7
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-object p0, v0

    goto :goto_4

    :cond_3
    :goto_3
    move-object p0, v0

    goto :goto_5

    :catch_1
    move-object p0, v1

    :goto_4
    const-string v0, "AttachVideoController"

    const-string v1, "getVideoThumbnailBitmap : IOException"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object p0
.end method


# virtual methods
.method getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/attach/AttachVideoController;->getVideoThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AttachVideoController"

    const-string v0, "returning because tempBitmap is null"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/attach/AbstractAttachController;->getOptionalMatrix(II)Landroid/graphics/Matrix;

    move-result-object p0

    const/4 v7, 0x1

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, p0

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method handleBackKey()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->setVideoSavedOnRequestedUri(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->retryAttachVideoRecording()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogScreenId;->REAR_SHOOTINGMODE_ATTACH_VIDEO:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogScreenId;->FRONT_SHOOTINGMODE_ATTACH_VIDEO:Lcom/sec/android/app/camera/logging/SaLogScreenId;

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSaScreenId(Lcom/sec/android/app/camera/logging/SaLogScreenId;)V

    return-void
.end method

.method setActivityResult()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/IntentFactory;->create()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "inline-data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mAttachViewModel:Lcom/sec/android/app/camera/attach/AttachViewModel;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/attach/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/attach/AbstractAttachController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method
