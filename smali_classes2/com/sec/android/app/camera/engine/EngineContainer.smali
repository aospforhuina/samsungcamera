.class public Lcom/sec/android/app/camera/engine/EngineContainer;
.super Ljava/lang/Object;
.source "EngineContainer.java"


# instance fields
.field private final mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

.field private final mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

.field private final mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

.field private final mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

.field private final mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

.field private final mCameraDeviceStateListener:Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

.field private final mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

.field private final mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

.field private final mFunController:Lcom/sec/android/app/camera/engine/FunController;

.field private final mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

.field private final mMakerCallbackHolder:Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;

.field private final mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

.field private final mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

.field private final mMakerStateListener:Lcom/sec/android/app/camera/engine/MakerStateListener;

.field private final mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

.field private final mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

.field private final mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

.field private final mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

.field private final mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

.field private final mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

.field private final mRecordingSessionManager:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

.field private final mRecordingSnapshotCallbackManager:Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;

.field private final mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

.field private final mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

.field private final mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

.field private final mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

.field private final mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

.field private final mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

.field private final mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

.field private final mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

.field private final mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mCameraDeviceStateListener:Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/engine/MakerStateListener;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/engine/MakerStateListener;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerStateListener:Lcom/sec/android/app/camera/engine/MakerStateListener;

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/engine/request/CameraHolder$CameraDeviceStateListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerStateListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    .line 6
    new-instance v1, Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    .line 7
    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->setEmptyListener(Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;)V

    .line 8
    new-instance v1, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;

    invoke-direct {v1}, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerCallbackHolder:Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;

    .line 9
    new-instance v2, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    invoke-direct {v2, p1, v1, v0}, Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    .line 10
    new-instance v0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    .line 11
    new-instance v7, Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;

    invoke-direct {v7, p1, v1}, Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRecordingSnapshotCallbackManager:Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;

    .line 12
    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    .line 13
    new-instance v2, Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-direct {v2, p1, v1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    .line 14
    new-instance v2, Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/BeautyController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    .line 15
    new-instance v2, Lcom/sec/android/app/camera/engine/BokehEffectController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/BokehEffectController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    .line 16
    new-instance v2, Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-direct {v2, p1, v1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    .line 17
    new-instance v2, Lcom/sec/android/app/camera/engine/EffectController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/EffectController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    .line 18
    new-instance v2, Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/MakerSettingApplier;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    .line 19
    new-instance v2, Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    .line 20
    new-instance v2, Lcom/sec/android/app/camera/engine/FunController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/FunController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    .line 21
    new-instance v2, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    .line 22
    new-instance v2, Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    .line 23
    new-instance v2, Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/ZoomController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    .line 24
    new-instance v8, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {v8, p1, v1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;Lcom/sec/android/app/camera/engine/AeAfController;)V

    iput-object v8, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    .line 25
    new-instance v4, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRecordingSessionManager:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    .line 26
    new-instance v6, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-direct {v6, p1}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    .line 27
    new-instance v0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    move-object v2, v0

    move-object v3, p1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    .line 28
    new-instance v2, Lcom/sec/android/app/camera/engine/OrientationManager;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/OrientationManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    .line 29
    new-instance v2, Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-direct {v2, p1, v1}, Lcom/sec/android/app/camera/engine/RequestEventManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    .line 30
    new-instance v2, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    .line 31
    new-instance v2, Lcom/sec/android/app/camera/engine/SingleTakeManager;

    invoke-direct {v2, p1, v1, v8, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    .line 32
    new-instance v0, Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/TransientCaptureManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    .line 33
    new-instance v0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    .line 34
    new-instance v0, Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    .line 35
    new-instance p1, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-direct {p1}, Lcom/sec/android/app/camera/engine/LastContentData;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    return-void
.end method


# virtual methods
.method getAeAfManager()Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    return-object p0
.end method

.method getAgifCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    return-object p0
.end method

.method getBeautyController()Lcom/sec/android/app/camera/engine/BeautyController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    return-object p0
.end method

.method getBokehEffectController()Lcom/sec/android/app/camera/engine/BokehEffectController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    return-object p0
.end method

.method getBurstCaptureController()Lcom/sec/android/app/camera/engine/BurstCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    return-object p0
.end method

.method getCallbackManager()Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mCallbackManager:Lcom/sec/android/app/camera/engine/callback/CallbackManagerImpl;

    return-object p0
.end method

.method getCameraDeviceStateListener()Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mCameraDeviceStateListener:Lcom/sec/android/app/camera/engine/CameraDeviceStateListener;

    return-object p0
.end method

.method getCameraHolder()Lcom/sec/android/app/camera/engine/request/CameraHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    return-object p0
.end method

.method getEffectController()Lcom/sec/android/app/camera/engine/EffectController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    return-object p0
.end method

.method getFunController()Lcom/sec/android/app/camera/engine/FunController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mFunController:Lcom/sec/android/app/camera/engine/FunController;

    return-object p0
.end method

.method getLastContentData()Lcom/sec/android/app/camera/engine/LastContentData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    return-object p0
.end method

.method getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    return-object p0
.end method

.method getMakerSettingApplier()Lcom/sec/android/app/camera/engine/MakerSettingApplier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerSettingApplier:Lcom/sec/android/app/camera/engine/MakerSettingApplier;

    return-object p0
.end method

.method getMakerStateListener()Lcom/sec/android/app/camera/engine/MakerStateListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMakerStateListener:Lcom/sec/android/app/camera/engine/MakerStateListener;

    return-object p0
.end method

.method getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    return-object p0
.end method

.method getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mMultiCameraEffectController:Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    return-object p0
.end method

.method getOrientationManager()Lcom/sec/android/app/camera/engine/OrientationManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mOrientationManager:Lcom/sec/android/app/camera/engine/OrientationManager;

    return-object p0
.end method

.method getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    return-object p0
.end method

.method getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    return-object p0
.end method

.method getRecordingManager()Lcom/sec/android/app/camera/engine/RecordingManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    return-object p0
.end method

.method getRecordingSessionManager()Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRecordingSessionManager:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    return-object p0
.end method

.method getRequestEventManager()Lcom/sec/android/app/camera/engine/RequestEventManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    return-object p0
.end method

.method getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    return-object p0
.end method

.method getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    return-object p0
.end method

.method getShutterTimerManager()Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    return-object p0
.end method

.method getSingleTakeManager()Lcom/sec/android/app/camera/engine/SingleTakeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mSingleTakeManager:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    return-object p0
.end method

.method getTransientCaptureManager()Lcom/sec/android/app/camera/engine/TransientCaptureManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mTransientCaptureManager:Lcom/sec/android/app/camera/engine/TransientCaptureManager;

    return-object p0
.end method

.method getVideoAutoFramingManager()Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mVideoAutoFramingManager:Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;

    return-object p0
.end method

.method getZoomController()Lcom/sec/android/app/camera/engine/ZoomController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EngineContainer;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    return-object p0
.end method
