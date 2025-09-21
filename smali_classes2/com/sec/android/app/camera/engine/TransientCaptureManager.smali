.class Lcom/sec/android/app/camera/engine/TransientCaptureManager;
.super Ljava/lang/Object;
.source "TransientCaptureManager.java"


# static fields
.field private static final TRANSIENT_CAPTURE_TIMEOUT:I = 0x1f4


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mStopTransientCapture:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/engine/z9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/z9;-><init>(Lcom/sec/android/app/camera/engine/TransientCaptureManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mStopTransientCapture:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/TransientCaptureManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->stopTransientCapture()V

    return-void
.end method

.method private stopTransientCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_TRANSIENT_CAPTURE_ACTION:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->startTransientCaptureStopTimer()V

    return-void
.end method


# virtual methods
.method cancelTransientCaptureStopTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method startTransientCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_TRANSIENT_CAPTURE_ACTION:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method startTransientCaptureStopTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->mStopTransientCapture:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
