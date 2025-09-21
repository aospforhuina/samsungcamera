.class public Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;
.super Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a;
.source "CameraControlAidlCallback.java"


# static fields
.field private static final ERROR_STORAGE_FULL:Ljava/lang/String; = "storage_full"

.field private static final FLASH_AUTO_OFF:Ljava/lang/String; = "auto_off"

.field private static final FLASH_OFF:Ljava/lang/String; = "off"

.field private static final FLASH_ON:Ljava/lang/String; = "on"

.field private static final NEW_TIMER_OFF:Ljava/lang/String; = "off"

.field private static final NEW_TIMER_ON:Ljava/lang/String; = "on"

.field private static final TAG:Ljava/lang/String; = "CameraControlAidlCallback"

.field private static final TIMER_0S:Ljava/lang/String; = "0"

.field private static final TIMER_10S:Ljava/lang/String; = "10"

.field private static final TIMER_2S:Ljava/lang/String; = "2"

.field private static final TIMER_5S:Ljava/lang/String; = "5"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Landroid/os/Handler;

.field private final mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

.field private final mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b$a;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 5
    iput-object p3, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 6
    iput-object p4, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    .line 7
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic M0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$setTimerState$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic N0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestSwitchToPhoto$8()V

    return-void
.end method

.method public static synthetic O0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$setLensState$12()V

    return-void
.end method

.method public static synthetic P0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$increaseZoomValue$1()V

    return-void
.end method

.method public static synthetic Q0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestTakePicture$10()V

    return-void
.end method

.method public static synthetic R0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$setZoomLevel$15(D)V

    return-void
.end method

.method public static synthetic S0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$setTouchFocus$14(FF)V

    return-void
.end method

.method public static synthetic T0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestCancelTimer$2()V

    return-void
.end method

.method public static synthetic U0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestStopRecording$7()V

    return-void
.end method

.method public static synthetic V0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestPauseRecording$3()V

    return-void
.end method

.method public static synthetic W0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestSwitchToVideo$9()V

    return-void
.end method

.method public static synthetic X0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$decreaseZoomValue$0()V

    return-void
.end method

.method public static synthetic Y0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestStartRecording$5()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestStopCapture$6()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$setFlashState$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->lambda$requestResumeRecording$4()V

    return-void
.end method

.method private isCaptureAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$decreaseZoomValue$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->restartInactivityTimerWhenIdle()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    const/4 v0, 0x3

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->handleGestureEvent(ILcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "zoom_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$increaseZoomValue$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->restartInactivityTimerWhenIdle()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    const/4 v0, 0x4

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->handleGestureEvent(ILcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "zoom_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestCancelTimer$2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->cancelShutterTimer()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "timer_is_not_running"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestPauseRecording$3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordPauseButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "recording_is_not_in_progress"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestResumeRecording$4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordResumeButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "recording_is_not_in_progress"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestStartRecording$5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isStorageCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "storage_full"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "recording_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestStopCapture$6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "recording_is_not_in_progress"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestStopRecording$7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordStopButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "recording_is_not_in_progress"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$requestSwitchToPhoto$8()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchShootingMode(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;->translateList(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "changing_shooting_mode_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestSwitchToVideo$9()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchShootingMode(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;->translateList(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "changing_shooting_mode_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$requestTakePicture$10()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const-string v1, "capture_not_available"

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getControllerVersion()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const-string v1, "capturing"

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isStorageCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "storage_full"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordSnapShotButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    :goto_1
    return-void
.end method

.method private synthetic lambda$setFlashState$11(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xddf

    const/4 v6, 0x2

    if-eq v4, v5, :cond_3

    const v5, 0x1ad6f

    if-eq v4, v5, :cond_2

    const v5, 0x55c64adf

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "auto_off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_2
    const-string v4, "off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_3
    const-string v4, "on"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_6

    if-eqz v0, :cond_5

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 6
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 8
    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 10
    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 11
    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$setLensState$12()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string v0, "changing_camera_facing_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setTimerState$13(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    const-string v0, "off"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "on"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x30

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v3, v4, :cond_5

    const/16 v4, 0x32

    if-eq v3, v4, :cond_4

    const/16 v4, 0x35

    if-eq v3, v4, :cond_3

    const/16 v4, 0x61f

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "10"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v6

    goto :goto_0

    :cond_3
    const-string v3, "5"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_4
    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v5

    :cond_6
    :goto_0
    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_8

    if-eq v0, v6, :cond_7

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_1

    :cond_8
    move v1, v6

    goto :goto_1

    :cond_9
    move v1, v2

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_a

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 10
    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 11
    :cond_b
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$setTouchFocus$14(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->restartInactivityTimerWhenIdle()V

    .line 2
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->requestTouchAeAfEvent(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setZoomLevel$15(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->restartInactivityTimerWhenIdle()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->convertWatchZoomLevelToCameraZoomLevel(I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->extendArea()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->startZoomTransition(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string p1, "zoom_not_available"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private notifyStorageStatus()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "isStorageAvailable"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private requestTouchAeAfEvent(Landroid/graphics/PointF;)Z
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float v10, v2, v3

    .line 5
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestTouchAeAfEvent : posX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlAidlCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    move v5, v10

    move v6, p1

    .line 7
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->requestAeAfTouch(Landroid/view/MotionEvent;)V

    const/4 v4, 0x1

    move-wide v0, v8

    .line 9
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->requestAeAfTouch(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method private restartInactivityTimerWhenIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    :cond_0
    return-void
.end method


# virtual methods
.method public decreaseZoomValue()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "decreaseZoomValue"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/b;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public increaseZoomValue()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "increaseZoomValue"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/l;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isPhoneStorageAvailable()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "isPhoneStorageAvailable"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->notifyStorageStatus()V

    return-void
.end method

.method public notifyControllerAppLaunched()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "notifyControllerAppLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyControllerAppTerminated()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "notifyControllerAppTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyControllerWidgetLaunched()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "notifyControllerWidgetLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyControllerWidgetTerminated()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "notifyControllerWidgetTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProviderLaunched()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "notifyProviderLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProviderTerminated()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "notifyProviderTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProviderVersion(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyProviderVersion : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraControlAidlCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifySuccessMirroring(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuccessMirroring : Device name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraControlAidlCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->onNotifySuccessMirroring()V

    return-void
.end method

.method public requestAngleChangeEvent(I)V
    .locals 0

    return-void
.end method

.method public requestBurstModeStart()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "requestBurstModeStart"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestBurstModeStop()V
    .locals 1

    const-string p0, "CameraControlAidlCallback"

    const-string v0, "requestBurstModeStop"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestCameraTerminate()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestCameraTerminate"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/camera/provider/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/r;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestCancelTimer()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestCancelTimer"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/n;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/n;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestCurrentStates()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestCurrentStates"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/camera/watch/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/h;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestPauseRecording()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestPauseRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/p;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/p;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestResumeRecording()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestResumeRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/i;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/i;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStartRecording()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestStartRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/c;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopAndSwitchToPhoto()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestStopAndSwitchToPhoto"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mWatchServiceManager:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->onRequestStopAndSwitchToPhoto()V

    return-void
.end method

.method public requestStopCapture()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestStopCapture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/a;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopRecording()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestStopRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/o;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestSwitchToPhoto()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestSwitchToPhoto"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/j;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/j;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestSwitchToVideo()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestSwitchToVideo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/q;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/q;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestTakePicture()V
    .locals 2

    const-string v0, "CameraControlAidlCallback"

    const-string v1, "requestTakePicture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/m;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/m;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFlashState(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlashState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlAidlCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/f;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/watch/f;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLensState(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLensState : lensState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraControlAidlCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/watch/k;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/watch/k;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTimerState(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlAidlCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/g;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/watch/g;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTouchFocus(FF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/watch/e;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setZoomLevel(D)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraControlAidlCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/watch/d;-><init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
