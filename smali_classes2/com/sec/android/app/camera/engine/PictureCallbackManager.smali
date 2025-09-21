.class Lcom/sec/android/app/camera/engine/PictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/PictureCallback;
.implements Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$EffectPictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;,
        Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;
    }
.end annotation


# static fields
.field private static final PICTURE_LATCH_WAIT_TIMEOUT:I = 0x1f4

.field private static final SHUTTER_LATCH_WAIT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PictureCallbackManager"

.field private static final UNLIMITED_POST_PROCESSING_COUNT:I = -0x1


# instance fields
.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsDraftThumbnailTaken:Z

.field private mIsNextCaptureLimited:Z

.field private mIsPictureCallbackReceived:Z

.field private mOriginalPictureData:Ljava/nio/ByteBuffer;

.field private mPictureData:Ljava/nio/ByteBuffer;

.field private mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

.field private mPictureLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPostProcessingCount:I

.field private final mPostProcessingEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

.field private mShutterLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSingleCaptureResultListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;

.field private final mThumbnailCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 6
    new-instance p1, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/l6;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    .line 7
    new-instance v1, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/m6;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mThumbnailCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;

    .line 8
    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;->setPictureCallback(Lcom/samsung/android/camera/core2/callback/PictureCallback;)V

    .line 9
    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;->setPostProcessorStatusCallback(Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;)V

    .line 10
    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;->setRawPictureCallback(Lcom/samsung/android/camera/core2/callback/RawPictureCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$onProcessingPictureTaken$2()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$completeTakePicture$6()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$onShutter$5()V

    return-void
.end method

.method private completeTakePicture()V
    .locals 2

    const-string v0, "PictureCallbackManager"

    const-string v1, "completeTakePicture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isIntervalCaptureRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->continueIntervalCapture()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/c6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/c6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->waitPictureLatch()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    sget-object v0, Lu3/b;->D4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startTransientCaptureStopTimer()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentLightCondition()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentDynamicShotCaptureDurationTime()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSingleCaptureResultListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;->onSingleCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method private getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->f4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    return-object p0

    :cond_0
    const p0, 0x48454946

    if-ne p1, p0, :cond_1

    .line 3
    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    :goto_0
    return-object p0
.end method

.method private handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v0, v1, :cond_0

    const-string p0, "PictureCallbackManager"

    const-string p1, "handlePictureTaken : Returned because current capture state is not CAPTURING."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorTakePictureRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->takePicture(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFunController()Lcom/sec/android/app/camera/engine/FunController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/FunController;->takePicture(Ljava/nio/ByteBuffer;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRawSingleCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegWithRawImage(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$notifyPostProcessingCompleted$7(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method

.method private isMaxPostProcessingCountReached(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETAIL_ENHANCER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    sget-object v1, Lu3/h;->F:Lu3/h;

    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lu3/h;->G:Lu3/h;

    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    .line 7
    :goto_0
    sget-object v3, Lu3/b;->h2:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 p0, -0x1

    if-eq v1, p0, :cond_2

    if-lt p1, v1, :cond_2

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMaxPostProcessingCountReached : maxPostProcessingCount="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentPostProcessingCount="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictureCallbackManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isPictureCallbackReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$onShutter$3()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/engine/PictureCallbackManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$onPostProcessorSequenceCountChanged$1(I)V

    return-void
.end method

.method private synthetic lambda$completeTakePicture$6()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/y5;->a:Lcom/sec/android/app/camera/engine/y5;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$notifyPostProcessingCompleted$7(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onPostPictureProcessingCompleted()V

    return-void
.end method

.method private synthetic lambda$notifyPostProcessingCompleted$8()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/x5;->a:Lcom/sec/android/app/camera/engine/x5;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onDraftPostProcessingPictureTaken$0(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;)V

    return-void
.end method

.method private synthetic lambda$onPostProcessorSequenceCountChanged$1(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingCount:I

    if-le v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->sendNextPostProcessingCaptureAvailableEvent()V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostProcessorSequenceCountChanged : Post processing count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingCount:I

    return-void
.end method

.method private synthetic lambda$onProcessingPictureTaken$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureProcessingCompleted()V

    return-void
.end method

.method private synthetic lambda$onShutter$3()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->limitNextCaptureIfNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsNextCaptureLimited:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/camera/engine/b6;->a:Lcom/sec/android/app/camera/engine/b6;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onShutter$4()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureProcessingStarted()V

    return-void
.end method

.method private synthetic lambda$onShutter$5()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/z5;->a:Lcom/sec/android/app/camera/engine/z5;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$startShutterEffect$10()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->startShutterAnimation()V

    return-void
.end method

.method private synthetic lambda$startShutterEffect$9()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->startQuickSettingItemIntroduceAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method private limitNextCaptureIfNeeded()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isMaxPostProcessingCountReached(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$startShutterEffect$10()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$notifyPostProcessingCompleted$8()V

    return-void
.end method

.method private notifyPostProcessingCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lu3/b;->w:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/g6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/g6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$onDraftPostProcessingPictureTaken$0(Lcom/sec/android/app/camera/engine/LastContentData;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$onShutter$4()V

    return-void
.end method

.method private processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mOriginalPictureData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mOriginalPictureData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    return-void
.end method

.method private processJpegWithRawImage(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->a3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->b(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->a(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->b(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    goto :goto_0

    :cond_1
    const-string p2, "PictureCallbackManager"

    const-string v0, "PictureCallback.onPictureTaken : raw picture callback was not called yet on raw capture sequence."

    .line 9
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->lambda$startShutterEffect$9()V

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftThumbnailTaken:Z

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mOriginalPictureData:Ljava/nio/ByteBuffer;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->c(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)V

    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private sendNextPostProcessingCaptureAvailableEvent()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsNextCaptureLimited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsNextCaptureLimited:Z

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/camera/engine/a6;->a:Lcom/sec/android/app/camera/engine/a6;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "PictureCallbackManager"

    const-string v0, "sendNextPostProcessingCaptureAvailableEvent : send onNextCaptureAvailable"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startShutterEffect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMotionPhotoAudioRecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/i6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/i6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->requestGainTransientAudioFocus()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->playSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->abandonAudioFocus()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER_CALLBACK:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->getScreenFlashTypeForCapture()Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;->NONE:Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    if-eq v0, v1, :cond_3

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->stopScreenFlash()V

    goto :goto_3

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/f6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/f6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method static bridge synthetic t(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/samsung/android/camera/core2/container/PictureDataInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftThumbnailTaken:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method static bridge synthetic w(Lcom/sec/android/app/camera/engine/PictureCallbackManager;I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object p0

    return-object p0
.end method

.method private waitPictureLatch()V
    .locals 4

    const-string v0, "PictureCallbackManager"

    :try_start_0
    const-string/jumbo v1, "waitPictureLatch : Waiting."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitPictureLatch : Waiting completed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "waitPictureLatch : Interrupted while waiting mPictureLatch."

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static bridge synthetic x(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isPictureCallbackReceived()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic y(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    return-void
.end method


# virtual methods
.method public completeFunModeTakePictue(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method countDownPictureLatch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method getThumbnailCallbackManager()Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mThumbnailCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;

    return-object p0
.end method

.method public handleTakePictureStopped()V
    .locals 2

    const-string v0, "TakePictureRequest"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string v0, "TakeProcessingPictureRequest"

    .line 2
    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string v0, "Capture - TakePictureStopped"

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->startShutterEffect()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentLightCondition()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentDynamicShotCaptureDurationTime()V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method isDraftThumbnailTaken()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsDraftThumbnailTaken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftThumbnailTaken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftThumbnailTaken:Z

    return p0
.end method

.method isNextCaptureLimited()Z
    .locals 2

    .line 1
    sget-object v0, Lu3/h;->F:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getNumberOfPostProcessorSequenceStacked()I

    move-result v0

    sget-object v1, Lu3/h;->E:Lu3/h;

    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingCount:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isMaxPostProcessingCountReached(I)Z

    move-result p0

    return p0
.end method

.method public onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 8

    const-string p3, "PictureCallbackManager"

    const-string v0, "onDraftPostProcessingPictureTaken"

    .line 1
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 3
    invoke-virtual {p3}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    .line 4
    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentSecMpUri(Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v5

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/k6;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/camera/engine/k6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEffectPictureTaken(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 2

    const-string v0, "PictureCallbackManager"

    const-string v1, "onEffectPictureTaken"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mOriginalPictureData:Ljava/nio/ByteBuffer;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRawSingleCaptureEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegWithRawImage(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureDataInfo:Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->processJpegImage(Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PictureCallbackManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TakePictureRequest"

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "TakeProcessingPictureRequest"

    .line 3
    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "Capture - TakePictureError"

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCameraDeviceOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->interruptCaptureRequest()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p3, "TakePictureRequest"

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p3, "Capture - TakePictureRequest"

    .line 2
    invoke-static {p3, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p3, "PictureCallbackManager"

    const-string v0, "onPictureTaken"

    .line 3
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    return-void
.end method

.method public onPostProcessingError(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p1, "TakePictureSequence"

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "Capture - TakePictureSequence (PostProcessing ERROR) "

    .line 2
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p1, "PictureCallbackManager"

    const-string v0, "onPostProcessingError"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->notifyPostProcessingCompleted()V

    return-void
.end method

.method public onPostProcessingFrameCollectionCompleted(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p1, "TakeProcessingPictureRequest"

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "Capture - TakeProcessingPictureRequest"

    .line 2
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p1, "PictureCallbackManager"

    const-string v0, "onPostProcessingFrameCollectionCompleted"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method public onPostProcessingFrameCollectionStopped(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p1, "TakeProcessingPictureRequest"

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "Capture - TakeProcessingPictureRequest"

    .line 2
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p1, "PictureCallbackManager"

    const-string v0, "onPostProcessingFrameCollectionStopped"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    :goto_0
    return-void
.end method

.method public onPostProcessingPictureTaken(Ljava/io/File;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p2, "TakePictureSequence"

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Capture - TakePictureSequence"

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "PictureCallbackManager"

    const-string p2, "onPostProcessingPictureTaken"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->notifyPostProcessingCompleted()V

    return-void
.end method

.method public onPostProcessorSequenceCountChanged(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostProcessorSequenceCountChanged : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PictureCallbackManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/j6;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/engine/j6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;I)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcessingFrameCollected(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onProcessingFrameCollected : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictureCallbackManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p3, "TakeProcessingPictureRequest"

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p3, "Capture - TakeProcessingPictureRequest"

    .line 2
    invoke-static {p3, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p3, "PictureCallbackManager"

    const-string v0, "onProcessingPictureTaken"

    .line 3
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/w5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/w5;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onProgress : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictureCallbackManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutter(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    const-string p1, "Capture - ShutterCallback"

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PictureCallbackManager"

    const-string p2, "onShutter : Returned because camera is not running."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->startShutterEffect()V

    .line 9
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    sget-object p1, Lu3/b;->S2:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    if-eq p1, v0, :cond_2

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->prepareStore(Ljava/lang/Long;)V

    .line 16
    :cond_2
    sget-object p1, Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/h6;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/h6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/e6;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/e6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/d6;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/d6;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method registerPostProcessingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSingleCaptureResultListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;

    return-void
.end method

.method start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method stop()V
    .locals 6

    const-string v0, "PictureCallbackManager"

    const-string/jumbo v1, "stop : wait shutter latch - start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Interrupted while waiting shutter latch."

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop : wait shutter latch - end, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsNextCaptureLimited:Z

    return-void
.end method

.method unregisterPostProcessingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
