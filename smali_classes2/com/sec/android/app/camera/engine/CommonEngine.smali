.class public Lcom/sec/android/app/camera/engine/CommonEngine;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;
.implements Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonEngine"


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

.field private final mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

.field private final mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

.field private final mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

.field private final mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraDeviceStateListener:Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

.field private final mCameraErrorEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;

.field private final mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mCaptureEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field private final mCreatingOutputFileLock:Ljava/lang/Object;

.field private mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field private mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field private final mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

.field private final mFunController:Lcom/sec/android/app/camera/engine/FunController;

.field private final mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

.field private mInactivateSlowMotionLowPerformance:Z

.field private mIsCameraSwitchingWhileRecording:Z

.field private mIsConnected:Z

.field private mIsDexReverseLandscapeOrientation:Z

.field private mIsNeedToAddPreviewSurface:Z

.field private final mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

.field private mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

.field private final mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

.field private final mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

.field private final mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

.field private final mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

.field private final mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

.field private mOutputFilePath:Ljava/lang/String;

.field private final mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

.field private final mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

.field private final mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

.field private final mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

.field private final mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

.field private final mRequestQueueEmptyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private final mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

.field private final mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

.field private mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

.field private final mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

.field private mUiThreadRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiThreadRunnableListLock:Ljava/lang/Object;

.field private final mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

.field private final mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/EngineContainer;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    .line 8
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$State;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 10
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    .line 11
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    .line 12
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsCameraSwitchingWhileRecording:Z

    .line 14
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsNeedToAddPreviewSurface:Z

    .line 15
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsConnected:Z

    .line 16
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mInactivateSlowMotionLowPerformance:Z

    .line 17
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsDexReverseLandscapeOrientation:Z

    const-string v0, "Create CommonEngine"

    .line 18
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 20
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 21
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/sec/android/app/camera/engine/EngineContainer;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/EngineContainer;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getCameraHolder()Lcom/sec/android/app/camera/engine/request/CameraHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    .line 24
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    .line 25
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    .line 26
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getAeAfManager()Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    .line 27
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getOrientationManager()Lcom/sec/android/app/camera/engine/OrientationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    .line 28
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getRecordingManager()Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    .line 29
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getRequestEventManager()Lcom/sec/android/app/camera/engine/RequestEventManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    .line 30
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getShutterTimerManager()Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    .line 31
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getSingleTakeManager()Lcom/sec/android/app/camera/engine/SingleTakeManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    .line 32
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getTransientCaptureManager()Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    .line 33
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getVideoAutoFramingManager()Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    .line 34
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getCallbackManager()Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    .line 35
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    .line 36
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getAgifCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    .line 37
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getBeautyController()Lcom/sec/android/app/camera/engine/BeautyController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    .line 38
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getBokehEffectController()Lcom/sec/android/app/camera/engine/BokehEffectController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    .line 39
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getBurstCaptureController()Lcom/sec/android/app/camera/engine/BurstCaptureController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    .line 40
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    .line 41
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getFunController()Lcom/sec/android/app/camera/engine/FunController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    .line 42
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getMakerSettingApplier()Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    .line 43
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    .line 44
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    .line 45
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getZoomController()Lcom/sec/android/app/camera/engine/ZoomController;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    .line 47
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getLastContentData()Lcom/sec/android/app/camera/engine/LastContentData;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    .line 49
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/EngineContainer;->getCameraDeviceStateListener()Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDeviceStateListener:Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

    .line 50
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    .line 51
    iput-object p4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraErrorEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;

    .line 52
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/CommonEngine;-><init>(Lcom/sec/android/app/camera/engine/EngineContainer;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$startFunSurfaceTexture$4(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$bindMakerService$5()V

    return-void
.end method

.method private bindMakerService()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/l4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/l4;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$onEmpty$0()V

    return-void
.end method

.method private cancelStitchingCapture()V
    .locals 4

    const-string v0, "CommonEngine"

    const-string v1, "cancelStitchingCapture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/LastContentData;->getContentMpUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/LastContentData;->getContentSecMpUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/DatabaseUtil;->updateToDb(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    return-void
.end method

.method private cancelTakePicture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelTakePicture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private connectMaker(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMaker : cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->b:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MULTI_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitPreviewSurfaceRequest()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result p1

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isNeedToWaitExtraPreviewSurface()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMakerRequest()V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    sget-object p1, Lu3/b;->b4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_3

    .line 20
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_3
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$unbindMakerService$6()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$startEngine$3()V

    return-void
.end method

.method public static synthetic f(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$setVideoStabilizationMode$2(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->lambda$postToUiThread$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleHdrSettingsChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    const-string v1, "CommonEngine"

    if-nez v0, :cond_0

    const-string p0, "setLiveHdr : Returned because shooting mode is not activated yet."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "setLiveHdr : Returned because preview animation is running."

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableHdrStateCallback(Z)V

    :cond_3
    move v0, v2

    .line 9
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setLiveHdr(I)V

    return-void
.end method

.method private handleStorageSettingsChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRecordingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->reconnectMaker()V

    return-void
.end method

.method private isApplyVideoFilterNeeded(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez p1, :cond_1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz p1, :cond_3

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_2
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz p1, :cond_4

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_3
    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_4

    :cond_6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_4
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method private isNeedToWaitExtraPreviewSurface()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CLEAN_HDMI:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eq v0, v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isCleanHdmiSupported()Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private isRawPppCaptureEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->a3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakingPostProcessingPictureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTakePictureAvailable()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CommonEngine"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Take picture is not available because wrong state for take picture = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isStartPreviewRequestApplied()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Take picture is not available because start preview is not completed."

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Take picture is not available because wrong capture state for take picture: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Take picture is not available because capture is already requested."

    .line 8
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Take picture is not available because start connecting maker is requested."

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getQueuedTaskCount()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_5

    const-string p0, "Take picture is not available because saving task queue size limit exceeded"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isNextCaptureLimited()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Take picture is not available because next capture is limited."

    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    return v3
.end method

.method private isTakeVideoSnapshotAvailable()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CommonEngine"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Take video snapshot is not available because wrong state for take picture = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isStartPreviewRequestApplied()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Take video snapshot is not available because start preview is not completed."

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Take video snapshot is not available because wrong capture state for take picture: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Take video snapshot is not available because because it is already requested."

    .line 8
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isTakingPostProcessingPictureAvailable()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPostProcessingPictureSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    const-string v2, "CommonEngine"

    if-eqz v0, :cond_1

    sget-object v0, Lu3/b;->S2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Return, motion photo enabled"

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorTakePictureRequired()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lu3/b;->g2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p0, "Return, effect processor activated"

    .line 5
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    sget-object v0, Lu3/b;->h2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETAIL_ENHANCER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_6

    return v3

    .line 10
    :cond_6
    sget-object v0, Lu3/b;->E4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_8

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lu3/b;->m0:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v3

    :cond_8
    const-string p0, "Return, High Resolution"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    return v3

    :cond_a
    :goto_0
    const-string p0, "Return, Smart Scan/Star burst capture"

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isTakingSinglePictureAvailable()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->e()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lu3/b;->C:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->e()I

    move-result v0

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->e()I

    move-result v0

    const/16 v3, 0x17

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->e()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isWatermarkAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isFusionHighResolutionSupported(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_12000X9000:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lu3/b;->m0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    sget-object p0, Lu3/b;->y4:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    return p0

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakingPostProcessingPictureAvailable()Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    .line 11
    :cond_7
    sget-object p0, Lu3/b;->y4:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$bindMakerService$5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommonEngine"

    const-string v1, "bindMakerService"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/MakerInterface;->M(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onEmpty$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/camera/engine/s4;->a:Lcom/sec/android/app/camera/engine/s4;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$postToUiThread$1(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$setVideoStabilizationMode$2(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->r:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startEngine$3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->initialize()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendCameraStartBroadcast(Landroid/content/Context;ZZ)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Camera_preview"

    invoke-static {p0, v0, v2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$startFunSurfaceTexture$4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->startFunModeSurfaceTexture(Z)V

    return-void
.end method

.method private synthetic lambda$unbindMakerService$6()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "CommonEngine"

    const-string/jumbo v0, "unbindMakerService"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/MakerInterface;->D0()V

    :cond_0
    return-void
.end method

.method private setSelfieToneMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setSelfieToneMode(I)V

    return-void
.end method

.method private setTakePictureType()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakingSinglePictureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->SINGLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakingPostProcessingPictureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_INSTANT:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    :goto_0
    return-void
.end method

.method private startCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->logCurrentMemoryStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls5/d;->m:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRawSingleCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Ls5/d;->n:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 6
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startSingleTake()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startStitchingCapture()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takePicture()V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    sget-object p1, Lcom/sec/android/app/camera/engine/r4;->a:Lcom/sec/android/app/camera/engine/r4;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startStitchingCapture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string/jumbo v1, "startStitchingCapture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->insertToDb(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAeAwb()V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private stopStitchingCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private stopTakePicture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private switchCameraInternal(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchCameraInternal : cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private takePicture()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takePicture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lu3/b;->n:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->acquireDVFSLockLPMDisable(I)V

    goto :goto_2

    .line 6
    :cond_1
    sget-object v0, Lu3/b;->s2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 8
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->acquireDvfsLock(I)V

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 11
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported take picture type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_4

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_4

    .line 15
    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_4
    return-void
.end method

.method private unbindMakerService()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/n4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/n4;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public applyFunModeLens(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/FunController;->applyLens(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V

    return-void
.end method

.method applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->cancelSingleTakeSession()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelStitchingCapture()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelTakePicture()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public cancelShutterAction()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelShutterAction"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    return-void
.end method

.method cancelShutterTimerCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->abandonAudioFocus()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public changeCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCaptureState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-void
.end method

.method public changeShootingMode(IZ)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeShootingMode : shootingModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFacingSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->a:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 3
    sget-object v0, Ls5/d;->b:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getNextCameraId(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCameraInternal(I)V

    .line 7
    :cond_0
    sget-object v0, Lu3/b;->b4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const/16 v3, 0xb

    if-eqz v2, :cond_1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mInactivateSlowMotionLowPerformance:Z

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v4, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v4, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v4, Lcom/sec/android/app/camera/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->isPreviewSurfaceCreated()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isSupportAddPreviewSurface()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v4, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitPreviewSurfaceRequest()V

    .line 14
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v1

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v4, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 20
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMakerRequest()V

    .line 21
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    if-ne p1, v3, :cond_5

    .line 22
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 25
    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public changeState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-void
.end method

.method public clearApplySettingsSequenceId()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->clearApplySettingsSequenceId()V

    return-void
.end method

.method public clearLastContentData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    return-void
.end method

.method public closeFunCameraKitSession()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunController;->closeFunCameraKitSession()V

    return-void
.end method

.method public connectMakerRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isSupportAddPreviewSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->ADD_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_0
    return-void
.end method

.method public countDownPictureLatch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->countDownPictureLatch()V

    return-void
.end method

.method public createEffectProcessor(ILandroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/android/app/camera/engine/EffectController;->createEffectProcessor(IILandroid/os/Handler;)V

    return-void
.end method

.method public createFunProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunController;->createFunMode()V

    return-void
.end method

.method public createMultiCameraEffectProcessor(ILandroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->createProcessor(ILandroid/os/Handler;)V

    return-void
.end method

.method public createNewOutputFilePath(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CommonEngine"

    const-string v2, "createNewOutputFilePath - start"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->makeDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    const-string p0, "CommonEngine"

    const-string p1, "createNewOutputFilePath - end"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Create Directory :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Create Directory :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyEffectProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->destroyEffectProcessor()V

    return-void
.end method

.method public destroyFunProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunController;->destroyFunProcessor()V

    return-void
.end method

.method public destroyMultiCameraEffectProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->destroyProcessor()V

    return-void
.end method

.method public dumpCapability()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->dumpCapability()V

    return-void
.end method

.method public dumpLastCaptureResult()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->dumpLastCaptureResult()V

    :cond_0
    return-void
.end method

.method public enableCameraAudioRestriction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->setCameraAudioRestriction(II)V

    return-void
.end method

.method public enableCompositionGuide(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enableCompositionGuide(Z)V

    return-void
.end method

.method public enablePalmDetection(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enablePalmDetection(Z)V

    return-void
.end method

.method public enablePostProcessingMotionPhoto(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enablePostProcessingMotionPhoto(Z)V

    return-void
.end method

.method public enableQrCodeDetection(ZJZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enableQrCodeDetection(ZJZ)V

    return-void
.end method

.method public enableShapeCorrection(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enableShapeCorrection(Z)V

    return-void
.end method

.method public enableSlowMotionEventDetection(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enableSlowMotionEventDetection(Z)V

    return-void
.end method

.method public enableSwFaceDetection(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->enableSwFaceDetection(Z)V

    return-void
.end method

.method public getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    return-object p0
.end method

.method public getAgifBurstCaptureThumbnailCallback()Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    return-object p0
.end method

.method getAgifCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    return-object p0
.end method

.method public getAvailableScreenFlashType()Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->getAvailableScreenFlashType()Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessValueForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->getBrightnessValueForCapture()I

    move-result p0

    return p0
.end method

.method public getBurstCaptureFps()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->getBurstCaptureFps()I

    move-result p0

    return p0
.end method

.method public getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    move-result-object p0

    return-object p0
.end method

.method public getBurstCaptureThumbnailCallback()Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    return-object p0
.end method

.method public getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    return-object p0
.end method

.method public getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method public getCameraErrorEventListener()Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraErrorEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;

    return-object p0
.end method

.method public getCapability()Lcom/sec/android/app/camera/interfaces/Capability;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getTargetCameraId()I

    move-result v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    return-object p0
.end method

.method public getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureEventListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    return-object p0
.end method

.method public getCurrentPreviewSurface(I)Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunController;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroid/view/Surface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object p0
.end method

.method public getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    return-object p0
.end method

.method getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->getDynamicShotInfoListForCapture()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method getDynamicShotInfoListForCapture()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/camera/core2/container/DynamicShotInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->getDynamicShotInfoListForCapture()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method getEffectController()Lcom/sec/android/app/camera/engine/EffectController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    return-object p0
.end method

.method public getEffectPictureCallback()Lcom/sec/android/app/camera/interfaces/InternalEngine$EffectPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    return-object p0
.end method

.method public getEstimatedCaptureDuration()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->getDynamicShotCaptureDurationForCapture()I

    move-result p0

    return p0
.end method

.method public getFrontCropAngleZoomValue()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getFrontCropAngleZoomValue()I

    move-result p0

    return p0
.end method

.method public getFunController()Lcom/sec/android/app/camera/engine/FunController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    return-object p0
.end method

.method public getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    return-object p0
.end method

.method public getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    return-object p0
.end method

.method public getLightConditionForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->getLightConditionForCapture()I

    move-result p0

    return p0
.end method

.method public getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    return-object p0
.end method

.method getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    return-object p0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMaxZoomLevel(I)I

    move-result p0

    return p0
.end method

.method public getMaxZoomLevel(I)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->getMaxZoomLevel(I)I

    move-result p0

    return p0
.end method

.method public getMinZoomLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMinZoomLevel(I)I

    move-result p0

    return p0
.end method

.method public getMinZoomLevel(I)I
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMinZoomLevel(II)I

    move-result p0

    return p0
.end method

.method getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    return-object p0
.end method

.method getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    return-object p0
.end method

.method public getNewOutputFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNextCameraId(Z)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v0, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    move v1, p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v1

    .line 6
    :goto_2
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    const/16 p1, 0x66

    :cond_4
    const/16 v1, 0x14

    const/16 v4, 0x65

    if-ne p1, v1, :cond_6

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSeamlessZoomAvailable(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 8
    :cond_5
    sget-object v1, Lu3/b;->u4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSuperVideoStabilization()I

    move-result v1

    if-ne v1, v3, :cond_7

    :goto_3
    move v2, v4

    goto :goto_4

    .line 9
    :cond_6
    sget-object v1, Lu3/b;->H3:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSuperVideoStabilization()I

    move-result v1

    if-ne v1, v3, :cond_7

    sget-object v1, Lu3/b;->u4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, p1

    .line 10
    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    if-nez v0, :cond_8

    const/16 p1, 0xc8

    goto :goto_5

    :cond_8
    const/16 p1, 0xc9

    :goto_5
    move v2, p1

    .line 11
    :cond_9
    sget-object p1, Lu3/b;->L1:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-ne v0, v3, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 12
    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v3, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v3, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 13
    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v3, :cond_c

    :cond_b
    const/16 v2, 0x69

    .line 14
    :cond_c
    sget-object p1, Lu3/b;->H3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_d

    if-nez v0, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v3, :cond_d

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 15
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_6

    :cond_d
    move v4, v2

    .line 16
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNextCameraId : nextId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getOrientationForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/OrientationManager;->getOrientationForCapture()I

    move-result p0

    return p0
.end method

.method public getOrientationFunCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/OrientationManager;->getOrientationFunCapture()I

    move-result p0

    return p0
.end method

.method getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    return-object p0
.end method

.method getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    return-object p0
.end method

.method public getRecordingEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    return-object p0
.end method

.method public getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    return-object p0
.end method

.method public getRequestEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RequestEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    return-object p0
.end method

.method getRequestEventManager()Lcom/sec/android/app/camera/engine/RequestEventManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    return-object p0
.end method

.method public getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    return-object p0
.end method

.method getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    return-object p0
.end method

.method public getSeamlessZoomValueArray()[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getSeamlessZoomValueArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSensorInfoActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getSensorInfoActiveArraySize(I)Landroid/graphics/Rect;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSensorCropSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    return-object p0
.end method

.method public getSingleTakeBurstCaptureFps()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getBurstCaptureFps()I

    move-result p0

    return p0
.end method

.method public getSingleTakeSessionEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    return-object p0
.end method

.method public getThumbnailCallback()Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getThumbnailCallbackManager()Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;

    move-result-object p0

    return-object p0
.end method

.method getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getTotalZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getTotalZoomLevel()I

    move-result p0

    return p0
.end method

.method public getWatermark()Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWatermark text : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_MODEL_NAME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", date : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_DATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", date and time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_DATE_AND_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 3
    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getDefaultWatermarkText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "watermark_subtext"

    invoke-static {v1, v7, v6}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setText(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getTakePictureTime()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/sec/android/app/camera/util/Util;->getWatermarkTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setDate(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_DATE_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getWatermarkDateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setDate(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_TIME_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getWatermarkTimeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setDate(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_ALIGNMENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0708b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 16
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result v4

    .line 17
    sget-object v5, Lu3/h;->s:Lu3/h;

    invoke-static {v5}, Lu3/d;->b(Lu3/h;)I

    move-result v5

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    if-ne v4, v2, :cond_5

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0708b2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 19
    :cond_5
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setSideMargin(F)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_FONT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setFont(I)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 21
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->setAlign(I)Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;

    .line 22
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->build()Lcom/sec/android/app/camera/engine/watermark/WatermarkData;

    move-result-object p0

    return-object p0
.end method

.method getZoomController()Lcom/sec/android/app/camera/engine/ZoomController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    return-object p0
.end method

.method public getZoomType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getZoomType()I

    move-result p0

    return p0
.end method

.method public handleBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->BURST_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->handleBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->handleAgifBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleBurstShutterReleased()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->handleBurstShutterReleased()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->handleAgifBurstShutterReleased()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleCamAccessException(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x4

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :goto_0
    return-void
.end method

.method public handleCameraError(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->HANDLE_CAMERA_ERROR:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method handleEsdError()V
    .locals 3

    const-string v0, "CommonEngine"

    const-string v1, "handleEsdError"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->reconnectMaker()V

    :goto_0
    return-void
.end method

.method handleMakerConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/OrientationManager;->updateCurrentOrientation()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->enableDefaultCallbacks()V

    return-void
.end method

.method handleMakerDisconnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->cancelTransientCaptureStopTimer()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->resetFlags()V

    return-void
.end method

.method public handleMyFilterExtractCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->handleMyFilterExtractCompleted()V

    return-void
.end method

.method public handlePreviewSnapShotError()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "handlePreviewSnapShotError"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotError()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShutterReleased :  InputType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  timeStamp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakePictureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    const-string v1, "TakePictureSequence"

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Capture - TakePictureSequence"

    invoke-static {v3, v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->getScreenFlashTypeForCapture()Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;->NONE:Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    if-eq v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Lu3/b;->w1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    .line 20
    :cond_5
    :goto_0
    sget-object p1, Lu3/b;->D4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->startTransientCapture()V

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->startCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    .line 23
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public handleTakePictureStopped()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->isIntervalCaptureRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->cancelShutterTimer()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->handleTakePictureStopped()V

    return-void
.end method

.method public hideMultiCameraEffectPipRect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->hidePipRect()V

    return-void
.end method

.method public initPalmDetection()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->initPalmDetection()V

    return-void
.end method

.method public initializeSingleTakeManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->start()V

    return-void
.end method

.method interruptCaptureRequest()V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/sec/android/app/camera/engine/request/RequestId;

    .line 1
    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2
    aget-object v2, v1, v3

    .line 3
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptCaptureRequest : request to interrupt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isAutoFlashRequired()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->getLightConditionForCapture()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAutoFocusTriggerRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAutoFocusTriggerRequired()Z

    move-result p0

    return p0
.end method

.method public isBurstPictureSaving()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->isBurstRequested()Z

    move-result p0

    return p0
.end method

.method isCameraDeviceOpened()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDeviceStateListener:Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;->isCameraDeviceOpened()Z

    move-result p0

    return p0
.end method

.method public isCameraOrientationLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/OrientationManager;->isCameraOrientationLandscape()Z

    move-result p0

    return p0
.end method

.method public isCameraSwitchingWhileRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsCameraSwitchingWhileRecording:Z

    return p0
.end method

.method public isCancelAfRequiredAfterTakingPicture()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isCancelAfRequiredAfterTakingPicture()Z

    move-result p0

    return p0
.end method

.method public isCaptureRequested()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    .line 2
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    .line 3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    .line 4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDexOrientationLandscapeReverse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsDexReverseLandscapeOrientation:Z

    return p0
.end method

.method public isDraftThumbnailTaken()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isDraftThumbnailTaken()Z

    move-result p0

    return p0
.end method

.method public isEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result p0

    return p0
.end method

.method isEffectProcessorTakePictureRequired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorTakePictureRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFusionHighResolutionSupported(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    .line 1
    sget-object p0, Lu3/b;->N1:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFusionHighResolutionSupported(Landroid/util/Size;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isHeifCaptureEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HEIF:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorTakePictureRequired()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isLastSettingsApplied()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isLastSettingsApplied()Z

    move-result p0

    return p0
.end method

.method public isLongTakePicture()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEstimatedCaptureDuration()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isManualExposure()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isManualExposure()Z

    move-result p0

    return p0
.end method

.method public isMotionPhotoAudioRecordingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isAudioRecordingSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMotionPhotoEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p0

    return p0
.end method

.method public isMultiCameraEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result p0

    return p0
.end method

.method public isNeedToAddPreviewSurface()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsNeedToAddPreviewSurface:Z

    return p0
.end method

.method public isNextCaptureLimited()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isNextCaptureLimited()Z

    move-result p0

    return p0
.end method

.method public isPalmDetectionAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isPalmDetectionSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoPalmGestureDetectionSupported()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public isPictureSaving()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getActiveCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getQueuedTaskCount()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRawSingleCaptureEnabled()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRawPppCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isRequestQueueEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isRequestQueueShutdown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isShutdown()Z

    move-result p0

    return p0
.end method

.method public isShootingModeChanging()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p0

    return p0
.end method

.method public isSingleTakeBurstRecordingStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->isBurstRecordingStarted()Z

    move-result p0

    return p0
.end method

.method public isStartPreviewRequestApplied()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isStartPreviewRequestApplied()Z

    move-result p0

    return p0
.end method

.method public isSupportAddPreviewSurface()Z
    .locals 1

    sget-object v0, Lu3/b;->K0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTorchFlashEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTorchFlashEnabled()Z

    move-result p0

    return p0
.end method

.method public isWaitingResume()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_RESUME:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWatermarkAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_MODEL_NAME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_DATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 5
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_DATE_AND_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 6
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 7
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public loadFunModePackage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunController;->loadFunModePackage()V

    return-void
.end method

.method public notifyAddPreviewSurfaceCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->enableDefaultCallbacks()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/OrientationManager;->updateCurrentOrientation()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_0
    return-void
.end method

.method public notifyChangePreviewSurfaceSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChangePreviewSurfaceSizeRequest"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string v0, "Surface - ChangePreviewSurfaceSize"

    .line 3
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_0
    return-void
.end method

.method public notifyChangeShootingModeCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method notifyCurrentDynamicShotCaptureDurationTime()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->notifyCurrentDynamicShotCaptureDurationTime()V

    return-void
.end method

.method public notifyCurrentLightCondition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->notifyCurrentLightCondition()V

    return-void
.end method

.method public notifyPrepareStartPreview()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public notifyStartVideoRecordingPrepared()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public notifySwitchCameraPrepared()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public notifyTakePreviewSnapShot()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq p2, p3, :cond_1

    .line 4
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSelfieToneMode(I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleHdrSettingsChanged()V

    goto :goto_0

    :pswitch_2
    if-eq p2, p3, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleStorageSettingsChanged()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setScalerFlipMode(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onEmpty()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/m4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/m4;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreviewSurfaceChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onCreateSurfaceCompleted()V

    :goto_0
    return-void
.end method

.method public onPreviewSurfaceCreated()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onPreviewSurfaceDestroyed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$State:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_0
    return-void
.end method

.method public postToUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-nez v1, :cond_1

    const-string p0, "CommonEngine"

    const-string p1, "postToUiThread : Can\'t handle runnable."

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/p4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/p4;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public prepareToStopEngine()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->stop()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->stop()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->stop()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->stop()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->stop()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->stop()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stop()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->prepareToStop()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->release()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v1, "CommonEngine"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareToStopEngine : Runnable list size that are waiting to be executed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 14
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    .line 17
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processPicture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->processPicture(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPicture - wrong capture type("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reconnectMaker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMaker(I)V

    return-void
.end method

.method public registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public registerCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerPostProcessingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->registerPostProcessingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;)V

    return-void
.end method

.method registerPreviewCallbackListener(Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->registerPreviewCallbackListener(Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;)V

    return-void
.end method

.method public registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public registerRequestQueueEmptyListener(Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public releaseSingleTakeManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    return-void
.end method

.method requestShutterTimerCapture()V
    .locals 3

    const-string v0, "CommonEngine"

    const-string v1, "requestShutterTimerCapture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->getScreenFlashTypeForCapture()Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;->NONE:Lcom/sec/android/app/camera/interfaces/InternalEngine$ScreenFlashType;

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lu3/b;->w1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    return-void
.end method

.method public requestSlowMotionEventResult()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->requestSlowMotionEventResult()V

    return-void
.end method

.method resetAeAfTriggerForTakingPicture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public resetAutoFramingManualTrackingRegion()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->resetAutoFramingManualTrackingRegion()V

    return-void
.end method

.method public resetCompositionGuide(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->resetCompositionGuide(Z)V

    return-void
.end method

.method public resetTargetZoomRatio()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->resetTargetZoomRatio()V

    return-void
.end method

.method public setAdaptiveLensMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setAdaptiveLensMode(I)V

    return-void
.end method

.method public setAeModeByFlashSetting(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAeModeByFlashSetting(I)V

    return-void
.end method

.method public setAutoFramingManualTrackingRegion(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->setAutoFramingManualTrackingRegion(Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public setCameraSwitchingWhileRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsCameraSwitchingWhileRecording:Z

    return-void
.end method

.method public setDbUpdateCompleteListener(Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->setDbUpdateCompleteListener(Lcom/sec/android/app/camera/interfaces/Engine$DbUpdateCompleteListener;)V

    return-void
.end method

.method public setDetectedSceneInfo([J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setDetectedSceneInfo([J)V

    return-void
.end method

.method public setDexOrientation(I)V
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsDexReverseLandscapeOrientation:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsDexReverseLandscapeOrientation:Z

    return-void
.end method

.method public setEffectParameter(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public setFaceAlignmentParameter([B)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setFaceAlignmentParameter([B)V

    return-void
.end method

.method public setFacialAttributeParameter([B)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setFacialAttributeParameter([B)V

    return-void
.end method

.method public setFoodBlurPosition(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setFoodBlurPosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setFrontPictureStreamType(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setFrontPictureStreamType(I)V

    return-void
.end method

.method public setFunRecordingSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/FunController;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setFunTextureViewParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->setFunTextureViewParams(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setGestureAttributeParameter([B)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setGestureAttributeParameter([B)V

    return-void
.end method

.method public setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    return-void
.end method

.method public setMakerEventListener(Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    return-void
.end method

.method public setNeedToAddPreviewSurface(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsNeedToAddPreviewSurface:Z

    return-void
.end method

.method public setNightScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$NightScreenFlashEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->setNightScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$NightScreenFlashEventListener;)V

    return-void
.end method

.method public setObjectDetectPosition(ILandroid/graphics/Point;Landroid/util/Size;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setObjectDetectPosition(ILandroid/graphics/Point;Landroid/util/Size;)V

    return-void
.end method

.method public setOverheatLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setOverheatLevel(I)V

    return-void
.end method

.method public setPrepareSefUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->setPrepareSefUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$SefUpdateListener;)V

    return-void
.end method

.method setPrivateCommand(Lcom/samsung/android/camera/core2/MakerPrivateCommand;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setPrivateCommand(Lcom/samsung/android/camera/core2/MakerPrivateCommand;)V

    return-void
.end method

.method setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setQrCodeDetectionInterval(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setQrCodeDetectionInterval(J)V

    return-void
.end method

.method public setSceneDetectionMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setSceneDetectionMode(I)V

    return-void
.end method

.method public setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    return-void
.end method

.method public setSensorAttributeParameter([B)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setSensorAttributeParameter([B)V

    return-void
.end method

.method public setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V

    return-void
.end method

.method public setSingleTakeEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setSingleTakeEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V

    return-void
.end method

.method public setSkinSmoothnessLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinSmoothnessLevel(I)V

    return-void
.end method

.method public setSkinToneLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinToneLevel(I)V

    return-void
.end method

.method public setSmartScanCorner([F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setSmartScanCorner([F)V

    return-void
.end method

.method public setSubCameraZoomValue(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->setSubCameraZoomValue(I)V

    return-void
.end method

.method public setSuperNightShotMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;->setSuperNightShotMode(I)V

    return-void
.end method

.method public setTargetZoomRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->setTargetZoomRatio(F)V

    return-void
.end method

.method public setTorchFlashEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashEnabled(Z)V

    return-void
.end method

.method public setVideoStabilizationMode(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/k4;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/k4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setWaitingSurfaceTextureFlag()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->setWaitingSurfaceTextureFlag()V

    return-void
.end method

.method public setWatermarkData(ILjava/lang/Object;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/EffectController;->setWatermarkData(ILjava/lang/Object;II)V

    return-void
.end method

.method public showMultiCameraEffectPipRect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->showPipRect()V

    return-void
.end method

.method startAeAfTriggerForTakingPicture(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAeAfTriggerForTakingPicture(Z)V

    return-void
.end method

.method public startCleanupFileHandlerThread()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->startCleanupFileHandlerThread()V

    return-void
.end method

.method public startEffectProcessor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/EffectController;->startEffectProcessor(Landroid/view/Surface;)V

    return-void
.end method

.method public startEffectRecording(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->startRecording(Landroid/view/Surface;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->startRecording(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startEngine()V
    .locals 4

    const-string v0, "StartEngine"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launch - StartEngine"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->startSurfaceManager()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->start()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->start()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->start()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->start()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BeautyController;->start()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BokehEffectController;->start()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->start()V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->start()V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->start()V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->start()V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ZoomController;->start()V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->bindMakerService()V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/OrientationManager;->registerListener()V

    .line 20
    sget-object v0, Lu3/b;->K0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/camera/engine/o4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/o4;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->initialize()V

    .line 23
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onEngineStarted()V

    :goto_0
    const/4 p0, 0x0

    .line 24
    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 25
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public startFunProcessor(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->isFunPreviewSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->mIsStartFunProcessorRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/FunController;->startFunProcessor(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->isFunPreviewSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->mIsStartFunProcessorRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyPrepareStartPreview()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startFunSurfaceTexture(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/q4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/q4;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startMotionPhoto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_0
    return-void
.end method

.method public startMultiCameraEffectProcessor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->startProcessor(Landroid/view/Surface;)V

    return-void
.end method

.method public startScreenFlash()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->startScreenFlash()V

    return-void
.end method

.method public startSingleTake()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->startSingleTakeSession()V

    return-void
.end method

.method public startTransientCaptureStopTimer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->startTransientCaptureStopTimer()V

    return-void
.end method

.method public startTransientZooming()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->startTransientZooming()V

    return-void
.end method

.method public startZoomLock()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_ZOOM_LOCK:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public stopCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stopCapture : Wrong argument ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stopSingleTakeSession()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopStitchingCapture()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopTakePicture()V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public stopCleanupFileHandlerThread()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stopCleanupFileHandlerThread()V

    return-void
.end method

.method public stopEffectRecording()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->stopRecording()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->stopRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopEngine()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exit - StopEngine"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    sget-object v0, Lu3/b;->D4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;->cancelTransientCaptureStopTimer()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/OrientationManager;->unregisterListener()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stop()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BeautyController;->stop()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BokehEffectController;->stop()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->stop()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stop()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ZoomController;->stop()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ZoomController;->isTransientZooming()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCameraSwitchingWhileRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setCameraSwitchingWhileRecording(Z)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->stop()V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->stop()V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->stop()V

    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unbindMakerService()V

    .line 23
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onEngineStopped()V

    .line 24
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopMotionPhoto()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    return-void
.end method

.method public stopTransientZooming(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    return-void
.end method

.method public switchCamera(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCameraInternal(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMaker(I)V

    return-void
.end method

.method public switchMultiCameraFacing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->prepareSwitchMultiCameraFacing()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getMultiCameraIdForSwitchFacing(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MULTI_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SWITCH_MULTI_CAMERA_FACING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->prepareVideoRecording()V

    :cond_1
    return-void
.end method

.method public switchMultiCameraFacingInternal()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->switchFacing()V

    return-void
.end method

.method switchRecordingCamera(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitPreviewSurfaceRequest()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMakerRequest()V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public takeEffectPreviewPicture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->takePreviewPicture()V

    return-void
.end method

.method public takeEffectPreviewSnapshot()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->takePreviewSnapshot()V

    return-void
.end method

.method public takePreviewSnapshot(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    sget-object p1, Lu3/b;->b4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mInactivateSlowMotionLowPerformance:Z

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->isFunPreviewSurfaceCreated()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->takePreviewSurfaceSnapshot()V

    :goto_0
    return-void
.end method

.method public takeVideoSnapshot()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakeVideoSnapshotAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Ls5/d;->m:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return v0
.end method

.method public unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public unregisterCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterPostProcessingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->unregisterPostProcessingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PostProcessingEventListener;)V

    return-void
.end method

.method unregisterPreviewCallbackListener(Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->unregisterPreviewCallbackListener(Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;)V

    return-void
.end method

.method public unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public unregisterRequestQueueEmptyListener(Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateCaptureInfo(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;->updateCaptureInfo(Z)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setTakePictureType()V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->updateScreenFlashTypeForCapture()V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->updateTakePictureTime()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->updateLocationForCapture()V

    :cond_0
    return-void
.end method

.method public updateFunModeLens()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/FunController;->addLens()V

    return-void
.end method

.method updateOrientationForCapture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/OrientationManager;->updateOrientationForCapture()V

    return-void
.end method

.method public waitAeAfTriggerStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->waitAeAfTriggerStateChanged()V

    return-void
.end method

.method public waitPreviewSurfaceRequest()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isSupportAddPreviewSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_0
    return-void
.end method
