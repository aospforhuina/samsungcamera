.class Lcom/sec/android/app/camera/engine/AgifCaptureController;
.super Ljava/lang/Object;
.source "AgifCaptureController.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/AgifEventCallback;
.implements Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;


# static fields
.field private static final MAX_AGIF_BURST_CAPTURE_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AgifCaptureController"


# instance fields
.field private final mAgifBurstCaptureEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsCapturing:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 5
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 7
    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;->setAgifEventCallback(Lcom/samsung/android/camera/core2/callback/AgifEventCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->lambda$onAgifBurstPictureCompleted$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->lambda$onAgifBurstPictureStarted$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->lambda$cancelAgifBurstPicture$3()V

    return-void
.end method

.method private cancelAgifBurstPicture()V
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "cancelAgifBurstPicture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/m1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/m1;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/engine/AgifCaptureController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->lambda$onProgress$2(I)V

    return-void
.end method

.method private synthetic lambda$cancelAgifBurstPicture$3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    .line 3
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onAgifBurstPictureCompleted$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    .line 3
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onAgifBurstPictureStarted$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    .line 3
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureStarted()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onProgress$2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    .line 3
    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureProgress(I)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method handleAgifBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    const-string v0, "AgifCaptureController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgifBurstShutterPressed : Return, wrong state for take picture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgifBurstShutterPressed : Return, wrong capture state for take picture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "handleAgifBurstShutterPressed : Return, it is already requested."

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p1, "handleAgifBurstShutterPressed"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v0, 0x2710

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->acquireDvfsLock(I)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->insertToDb(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method handleAgifBurstShutterReleased()Z
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "handleAgifBurstShutterReleased"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onAgifBurstPictureCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAgifBurstPictureCompleted : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgifCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const-string p0, "onAgifBurstPictureCompleted : returned because camera is not running!"

    .line 5
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/k1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/k1;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentLightCondition()V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_2
    return-void
.end method

.method public onAgifBurstPictureStarted(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAgifBurstPictureStarted : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgifCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "onAgifBurstPictureStarted : Returned because camera is not running."

    .line 3
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->requestGainTransientAudioFocus()V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->playSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;I)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/l1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/l1;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    :cond_1
    return-void
.end method

.method public onCaptureResult(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureResult - uri : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgifCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->processPicture(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    return-void
.end method

.method public onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    const-string p0, "AgifCaptureController"

    const-string p1, "onDraftThumbnailTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onError : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AgifCaptureController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgress : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AgifCaptureController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p2

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/n1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/n1;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;I)V

    invoke-virtual {p2, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    const-string p1, "onProgress : stop animated gif burst capture and returned because MAX_AGIF_BURST_CAPTURE_COUNT(30) is reached"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_1
    return-void
.end method

.method public onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p3, "AgifCaptureController"

    const-string v0, "onThumbnailTaken"

    .line 1
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V

    return-void
.end method

.method prepareDbUpdate(Landroid/content/ContentValues;)V
    .locals 1

    const-string p0, "AgifCaptureController"

    const-string v0, "prepareDbUpdate"

    .line 1
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x960

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "sef_file_type"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->removeRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->cancelAgifBurstPicture()V

    :cond_1
    return-void
.end method

.method unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
