.class Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;
.super Ljava/lang/Object;
.source "MakerCallbackManager.java"


# static fields
.field public static final DEFAULT_INJECTED_DS_VALUE:I = -0xa


# instance fields
.field private final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private mActionShotResult:[J

.field private mActionShotResultCallback:Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;

.field protected final mActivityManager:Landroid/app/ActivityManager;

.field private final mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

.field private mAdaptiveLensModeInfoCallback:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback;

.field private final mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

.field private mAeInfoCallback:Lcom/samsung/android/camera/core2/callback/AeInfoCallback;

.field private final mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

.field private mAfInfoCallback:Lcom/samsung/android/camera/core2/callback/AfInfoCallback;

.field private mAgifEventCallback:Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

.field private final mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

.field private mAutoFramingInfoCallback:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback;

.field private final mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

.field private mBokehInfoCallback:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;

.field private final mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

.field private mBrightnessValue:Ljava/lang/Integer;

.field private mBrightnessValueCallback:Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;

.field private mBurstShotFps:Ljava/lang/Integer;

.field private mBurstShotFpsCallback:Lcom/samsung/android/camera/core2/callback/BurstShotFpsCallback;

.field private mCameraRunningDebugInfo:[B

.field private mCameraRunningDebugInfoCallback:Lcom/samsung/android/camera/core2/callback/CameraRunningDebugInfoCallback;

.field private mCenterDepth:Ljava/lang/Integer;

.field private mColorTemperature:Ljava/lang/Integer;

.field private mColorTemperatureCallback:Lcom/samsung/android/camera/core2/callback/ColorTemperatureCallback;

.field private mCompositionGuideEventCallback:Lcom/samsung/android/camera/core2/callback/CompositionGuideEventCallback;

.field private final mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

.field private mCompositionGuideInfoCallback:Lcom/samsung/android/camera/core2/callback/CompositionGuideInfoCallback;

.field private mConfidenceScore:I

.field private mDepthInfoCallback:Lcom/samsung/android/camera/core2/callback/DepthInfoCallback;

.field private mDetectedSunInfo:I

.field private mDofMultiInfoCallback:Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback;

.field private mDsCaptureDuration:Ljava/lang/Integer;

.field private mDynamicShotCaptureDurationCallback:Lcom/samsung/android/camera/core2/callback/DynamicShotCaptureDurationCallback;

.field private final mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

.field private mDynamicShotInfoCallback:Lcom/samsung/android/camera/core2/callback/DynamicShotInfoCallback;

.field private final mEnableCameraLogging:Z

.field private mEvCompensationValue:Ljava/lang/Integer;

.field private mEvCompensationValueCallback:Lcom/samsung/android/camera/core2/callback/EvCompensationValueCallback;

.field private mEventFinderResultCallback:Lcom/samsung/android/camera/core2/callback/EventFinderResultCallback;

.field private final mEventHandler:Landroid/os/Handler;

.field private mExposureTime:Ljava/lang/Long;

.field private mExposureTimeCallback:Lcom/samsung/android/camera/core2/callback/ExposureTimeCallback;

.field private mFRTrackingEventCallback:Lcom/samsung/android/camera/core2/callback/FRTrackingEventCallback;

.field private mFaceAlignmentEventCallback:Lcom/samsung/android/camera/core2/callback/FaceAlignmentEventCallback;

.field private mFaceDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;

.field private mFaceLandmarkEventCallback:Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;

.field private mFacialAttributeEventCallback:Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;

.field private mFoodEventCallback:Lcom/samsung/android/camera/core2/callback/FoodEventCallback;

.field private mHandGestureDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;

.field private mHumanTrackingEventCallback:Lcom/samsung/android/camera/core2/callback/HumanTrackingEventCallback;

.field private final mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

.field private mHyperlapseInfoCallback:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback;

.field private mInjectedDsCondition:I

.field private mInjectedDsExtraInfo:I

.field private mLensDirtyDetect:Ljava/lang/Boolean;

.field private mLensDirtyDetectCallback:Lcom/samsung/android/camera/core2/callback/LensDirtyDetectCallback;

.field private final mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

.field private mLensInfoCallback:Lcom/samsung/android/camera/core2/callback/LensInfoCallback;

.field private mLensSuggestion:Ljava/lang/Integer;

.field private mLensSuggestionCallback:Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;

.field private mLightCondition:Ljava/lang/Integer;

.field private mLightConditionCallback:Lcom/samsung/android/camera/core2/callback/LightConditionCallback;

.field private mLiveHdrState:Ljava/lang/Integer;

.field private mLiveHdrStateCallback:Lcom/samsung/android/camera/core2/callback/LiveHdrStateCallback;

.field private mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mMultiViewInfoCallback:Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;

.field private final mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

.field private mNaturalBlurInfoCallback:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback;

.field private mNeedHgNotDetectedCb:Z

.field private mNeedNullFaceCb:Z

.field private mNeedPetDetectionInfoNullCb:Z

.field private mObjectDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/ObjectDetectionInfoCallback;

.field private mObjectDetectionResult:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mObjectTrackingInfoCallback:Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;

.field private mPalmDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/PalmDetectionEventCallback;

.field private mPanoramaEventCallback:Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

.field private mPetDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;

.field private mPostProcessorStatusCallback:Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;

.field private mPreviewSnapShotCallback:Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;

.field private mPreviewStateCallback:Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

.field private mQRCodeDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;

.field private final mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

.field private mRecordingMotionSpeedModeInfoCallback:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback;

.field private mSTPictureCallback:Lcom/samsung/android/camera/core2/callback/STPictureCallback;

.field private mSceneDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

.field private mSceneDetectionInfo:[J

.field private mSceneDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;

.field private mSensorSensitivity:Ljava/lang/Integer;

.field private mSensorSensitivityCallback:Lcom/samsung/android/camera/core2/callback/SensorSensitivityCallback;

.field private mSingleBokehEventCallback:Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

.field private mSlowMotionEventDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;

.field private mSmartScanEventCallback:Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;

.field private mStillCaptureProgress:Ljava/lang/Integer;

.field private mStillCaptureProgressCallback:Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;

.field private final mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

.field private mSuperSlowMotionInfoCallback:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback;

.field private mSwFaceDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;

.field private mTextDetectionInfo:Ljava/lang/Integer;

.field private mTextDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/TextDetectionInfoCallback;

.field private mTouchAeState:Ljava/lang/Integer;

.field private mTouchAeStateCallback:Lcom/samsung/android/camera/core2/callback/TouchAeStateCallback;

.field private mZoomLockState:Ljava/lang/Integer;

.field private mZoomLockStateCallback:Lcom/samsung/android/camera/core2/callback/ZoomLockStateCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    .line 5
    new-instance v0, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    .line 9
    new-instance v0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    .line 10
    new-instance v0, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    .line 11
    new-instance v0, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    .line 12
    new-instance v0, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    .line 13
    new-instance v0, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    .line 14
    new-instance v0, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    const/high16 v0, -0x80000000

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    .line 16
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDetectedSunInfo:I

    .line 17
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mConfidenceScore:I

    const/16 v0, -0xa

    .line 18
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mInjectedDsCondition:I

    .line 19
    iput v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mInjectedDsExtraInfo:I

    if-nez p3, :cond_1

    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-nez p3, :cond_2

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No handler given, and current thread has no looper!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_1
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    .line 24
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    const-string p1, "activity"

    .line 26
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 27
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEnableCameraLogging:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->lambda$sendBrightnessValueCallback$1(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->lambda$setPanoramaEventCallback$0(Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;)V

    return-void
.end method

.method private static synthetic lambda$sendBrightnessValueCallback$1(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;->onBrightnessValueChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic lambda$setPanoramaEventCallback$0(Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;->k()V

    return-void
.end method


# virtual methods
.method getAgifEventCallback()Lcom/samsung/android/camera/core2/callback/AgifEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAgifEventCallback:Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    return-object p0
.end method

.method getCompositionGuideEventCallback()Lcom/samsung/android/camera/core2/callback/CompositionGuideEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideEventCallback:Lcom/samsung/android/camera/core2/callback/CompositionGuideEventCallback;

    return-object p0
.end method

.method getEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getFRTrackingEventCallback()Lcom/samsung/android/camera/core2/callback/FRTrackingEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFRTrackingEventCallback:Lcom/samsung/android/camera/core2/callback/FRTrackingEventCallback;

    return-object p0
.end method

.method getFaceAlignmentEventCallback()Lcom/samsung/android/camera/core2/callback/FaceAlignmentEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFaceAlignmentEventCallback:Lcom/samsung/android/camera/core2/callback/FaceAlignmentEventCallback;

    return-object p0
.end method

.method getFaceLandmarkEventCallback()Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFaceLandmarkEventCallback:Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;

    return-object p0
.end method

.method getFacialAttributeEventCallback()Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFacialAttributeEventCallback:Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;

    return-object p0
.end method

.method getFoodEventCallback()Lcom/samsung/android/camera/core2/callback/FoodEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFoodEventCallback:Lcom/samsung/android/camera/core2/callback/FoodEventCallback;

    return-object p0
.end method

.method getHumanTrackingEventCallback()Lcom/samsung/android/camera/core2/callback/HumanTrackingEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHumanTrackingEventCallback:Lcom/samsung/android/camera/core2/callback/HumanTrackingEventCallback;

    return-object p0
.end method

.method getPalmDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/PalmDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPalmDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/PalmDetectionEventCallback;

    return-object p0
.end method

.method getPanoramaEventCallback()Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPanoramaEventCallback:Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

    return-object p0
.end method

.method getPetDetectionInfoCallbackCallback()Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPetDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;

    return-object p0
.end method

.method getPostProcessorStatusCallback()Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPostProcessorStatusCallback:Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;

    return-object p0
.end method

.method getPreviewSnapShotCallback()Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPreviewSnapShotCallback:Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;

    return-object p0
.end method

.method getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPreviewStateCallback:Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    return-object p0
.end method

.method getQRCodeDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mQRCodeDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;

    return-object p0
.end method

.method getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSTPictureCallback:Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    return-object p0
.end method

.method getSceneDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

    return-object p0
.end method

.method getSingleBokehEventCallback()Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSingleBokehEventCallback:Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

    return-object p0
.end method

.method getSlowMotionEventDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSlowMotionEventDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;

    return-object p0
.end method

.method getSmartScanEventCallback()Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSmartScanEventCallback:Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;

    return-object p0
.end method

.method getSwFaceDetectionEventCallback()Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSwFaceDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;

    return-object p0
.end method

.method sendActionShotResultCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mActionShotResultCallback:Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [J

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mActionShotResult:[J

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mActionShotResult:[J

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;->onActionShotResultChanged(Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendAdaptiveLensInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfoCallback:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->e:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->e(Ljava/lang/Integer;)V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2, p3}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->g(Ljava/lang/Integer;)V

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->f(Ljava/lang/Integer;)V

    .line 11
    new-instance p0, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-direct {p0, v1, p3, v0}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback;->onAdaptiveLensModeInfoChanged(Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendAeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfoCallback:Lcom/samsung/android/camera/core2/callback/AeInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamCapability;->V()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    .line 9
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->c()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    .line 10
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->g(Ljava/lang/Integer;)V

    .line 12
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->i(Ljava/lang/Integer;)V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->h([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 14
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-virtual {v4, p3}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->f(Ljava/lang/Integer;)V

    .line 15
    new-instance v4, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-direct {v4, v1, v2, v3, p3}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, v4, p1}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback;->onAeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "sendAeInfoCallback - TimeStamp(%d) %s, camDevice: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    aput-object v2, v1, p2

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p3, v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendAeInfoCallback fail - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method sendAfInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfoCallback:Lcom/samsung/android/camera/core2/callback/AfInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->k0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->W:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 8
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 9
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->a()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    .line 10
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->c()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    .line 11
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->d()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    .line 12
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->e()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    .line 13
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p3

    invoke-static {p3, v7}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 14
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {p3, v3}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->g(Ljava/lang/Integer;)V

    .line 15
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {p3, v4}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->i(Ljava/lang/Integer;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {p3, v5}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->j(Ljava/lang/Integer;)V

    .line 17
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {p3, v6}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->k(Ljava/lang/Integer;)V

    .line 18
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {p0, v7}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->h([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 19
    new-instance p0, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-interface {v0, p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback;->onAfInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_2
    return-void
.end method

.method sendAutoFramingInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfoCallback:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->i:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6
    invoke-static {p3, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 7
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    .line 9
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->c()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    .line 10
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->d()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->g(Ljava/lang/Integer;)V

    .line 12
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->f([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->h([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 14
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, p3}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->i(Landroid/graphics/Rect;)V

    .line 15
    new-instance v4, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-direct {v4, v1, v2, v3, p3}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;-><init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v4, p1}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback;->onAutoFramingInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendAutoFramingInfoCallback - TimeStamp(%d) %s, camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendBokehInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfoCallback:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->t:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamCapability;->z0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->q:Landroid/hardware/camera2/CaptureResult$Key;

    .line 7
    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-static {p3}, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->b([I)[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    move-result-object p3

    .line 8
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    .line 9
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;->b()[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-virtual {v3, v1}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;->g(Ljava/lang/Integer;)V

    .line 11
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-virtual {v3, p3}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;->f([Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;)V

    .line 12
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;->e(Landroid/graphics/Rect;)V

    .line 13
    new-instance p0, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-direct {p0, v1, p3, v2}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;-><init>(Ljava/lang/Integer;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;->onBokehInfoV2Changed(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->p:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 15
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    .line 16
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;->g(Ljava/lang/Integer;)V

    .line 18
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-virtual {v3, p3}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;->f([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 19
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;->e(Landroid/graphics/Rect;)V

    .line 20
    new-instance p0, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-direct {p0, v1, p3, v2}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;-><init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;->onBokehInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_3
    :goto_0
    return-void
.end method

.method sendBrightnessValueCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBrightnessValueCallback:Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/maker/sb;

    invoke-direct {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/maker/sb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method sendBurstShotFpsCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core2/callback/BurstShotFpsCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->w:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBurstShotFps:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBurstShotFps:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/BurstShotFpsCallback;->onBurstShotFpsChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendBurstShotFpsCallback - TimeStamp(%d) BurstShotFps(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendCameraRunningDebugInfo(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfoCallback:Lcom/samsung/android/camera/core2/callback/CameraRunningDebugInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->A:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfo:[B

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfo:[B

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/CameraRunningDebugInfoCallback;->onCameraRunningDebugInfoChanged(Ljava/lang/Long;[BLcom/samsung/android/camera/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendColorTemperatureCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mColorTemperatureCallback:Lcom/samsung/android/camera/core2/callback/ColorTemperatureCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mColorTemperature:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mColorTemperature:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/ColorTemperatureCallback;->onColorTemperatureChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendCompositionGuideInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfoCallback:Lcom/samsung/android/camera/core2/callback/CompositionGuideInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->G:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->H:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 4
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 5
    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    .line 6
    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x2

    .line 7
    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 8
    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->b()Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    .line 9
    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->c()Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    .line 10
    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->a()Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8, v1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    .line 11
    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->d()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 12
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-virtual {v8, v4}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->g(Ljava/lang/Float;)V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-virtual {v4, v6}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->h(Ljava/lang/Float;)V

    .line 14
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->f(Ljava/lang/Float;)V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-virtual {v1, p3}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->i(Ljava/lang/Integer;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/CompositionGuideInfoCallback;->onCompositionGuideInfo(Ljava/lang/Long;Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 17
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    aput-object p0, v0, v5

    aput-object p1, v0, v7

    const-string p0, "sendCompositionGuideInfoCallback - TimeStamp(%d) compositionGuideInfo(%s) camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendDepthInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDepthInfoCallback:Lcom/samsung/android/camera/core2/callback/DepthInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    if-eqz p3, :cond_0

    .line 3
    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget p3, p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCenterDepth:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCenterDepth:Ljava/lang/Integer;

    .line 6
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/DepthInfoCallback;->onDepthInfoChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendDofMultiInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDofMultiInfoCallback:Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->L:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5
    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback$DofMultiInfo;->c(Ljava/lang/Integer;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback$DofMultiInfo;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 8
    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {v2, p3, v0, v1}, Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback$DofMultiInfo;-><init>(Ljava/lang/Integer;[I[I)V

    .line 9
    invoke-interface {p0, p2, v2, p1}, Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback;->onDofMultiInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback$DofMultiInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotCaptureDurationCallback:Lcom/samsung/android/camera/core2/callback/DynamicShotCaptureDurationCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->N:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    .line 6
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/DynamicShotCaptureDurationCallback;->onDynamicShotCaptureDurationChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendDynamicShotCaptureDurationCallback - TimeStamp(%d) dynamicShotCaptureDuration(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfoCallback:Lcom/samsung/android/camera/core2/callback/DynamicShotInfoCallback;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->h0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    move-wide v8, v2

    .line 5
    iget p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mInjectedDsExtraInfo:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p3, :cond_1

    or-int/2addr p5, p3

    .line 6
    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v2

    const-string p3, "Injecting dsExtraInfo value: 0x%x "

    invoke-static {v3, p3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v7, p5

    .line 7
    iget p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mInjectedDsCondition:I

    if-ltz p3, :cond_2

    .line 8
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p5, v2

    const-string v3, "Injecting dsCondition value: 0x%x "

    invoke-static {p4, v3, p5}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, p3

    goto :goto_0

    :cond_2
    move v6, p4

    .line 9
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result p3

    if-ne p3, v6, :cond_4

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result p3

    if-eq p3, v7, :cond_3

    goto :goto_1

    :cond_3
    move p3, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p3, v1

    :goto_2
    if-nez p3, :cond_5

    .line 10
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide p4

    cmp-long p4, p4, v8

    if-eqz p4, :cond_7

    .line 11
    :cond_5
    invoke-static {v6, v7}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->k(II)I

    move-result v5

    .line 12
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p4, v5}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->j(I)V

    .line 13
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p4, v6}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->g(I)V

    .line 14
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p4, v7}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->i(I)V

    .line 15
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {p4, v8, v9}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->h(J)V

    .line 16
    new-instance p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-object v4, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    invoke-interface {v0, p2, p4, p1}, Lcom/samsung/android/camera/core2/callback/DynamicShotInfoCallback;->onDynamicShotInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    if-eqz p3, :cond_6

    .line 17
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p2, p4, v2

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    aput-object p2, p4, v1

    const/4 p2, 0x2

    aput-object p1, p4, p2

    const-string p1, "sendDynamicShotInfoCallback - TimeStamp(%d) dynamicShotInfo(%s) camDevice: %s"

    invoke-static {p3, p1, p4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEnableCameraLogging:Z

    if-eqz p1, :cond_7

    .line 19
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-static {v1, v2, v2, p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendLoggingMessage(IIILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method sendEvCompensationValueCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEvCompensationValueCallback:Lcom/samsung/android/camera/core2/callback/EvCompensationValueCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->S:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEvCompensationValue:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEvCompensationValue:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/EvCompensationValueCallback;->onEvCompensationValueChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendEvCompensationValueCallback - TimeStamp(%d) evCompensationValue(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendEventFinderResultCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventFinderResultCallback:Lcom/samsung/android/camera/core2/callback/EventFinderResultCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->T:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->U:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {v0, p2, v1, p3, p1}, Lcom/samsung/android/camera/core2/callback/EventFinderResultCallback;->onEventFinderResult(Ljava/lang/Long;Ljava/lang/Integer;[BLcom/samsung/android/camera/core2/CamDevice;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    .line 6
    invoke-static {p3}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "sendEventFinderResultCallback - TimeStamp(%d) eventFinderMode(%d) eventFinderResult(%s) camDevice: %s"

    .line 7
    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendExposureTimeCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mExposureTimeCallback:Lcom/samsung/android/camera/core2/callback/ExposureTimeCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mExposureTime:Ljava/lang/Long;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mExposureTime:Ljava/lang/Long;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/ExposureTimeCallback;->onExposureTimeChanged(Ljava/lang/Long;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendExposureTimeCallback - TimeStamp(%d) ExposureTime(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendFaceDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFaceDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6
    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 7
    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "sendFaceDetectionInfoCallback - TimeStamp(%d) Faces Length(%d) camDevice: %s"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_0

    .line 8
    new-instance v2, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;->onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 9
    iput-boolean v7, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedNullFaceCb:Z

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v6

    array-length p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v7

    aput-object p1, p3, v3

    invoke-static {p0, v5, p3}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedNullFaceCb:Z

    if-eqz v2, :cond_2

    .line 12
    new-instance v2, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;->onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 13
    iput-boolean v6, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedNullFaceCb:Z

    .line 14
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v6

    array-length p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v7

    aput-object p1, p3, v3

    invoke-static {p0, v5, p3}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "sendFaceDetectionInfoCallback - Faces(null)"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method sendHandGestureDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHandGestureDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->d0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->e0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 4
    array-length v4, p3

    if-lez v4, :cond_0

    .line 5
    invoke-static {p3}, Lcom/samsung/android/camera/core2/container/HandGestureInfo;->b([I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v4, p1}, Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;->onHandGestureDetected(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedHgNotDetectedCb:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedHgNotDetectedCb:Z

    if-eqz v4, :cond_1

    .line 8
    invoke-static {p3}, Lcom/samsung/android/camera/core2/container/HandGestureInfo;->b([I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v4, p1}, Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;->onHandGestureDetected(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 9
    iput-boolean v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedHgNotDetectedCb:Z

    .line 10
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object v1, v0, v2

    const/4 p2, 0x2

    .line 11
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "sendHandGestureDetectionInfoCallback - TimeStamp(%d) handGestureMode(%d) handGestureResult(%s) camDevice: %s"

    .line 12
    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendHyperlapseInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfoCallback:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->g0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;->c(Ljava/lang/Integer;)V

    .line 7
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    invoke-virtual {v2, p3}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;->d(Ljava/lang/Integer;)V

    .line 8
    new-instance v2, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback;->onHyperlapseInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 9
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfo:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback$HyperlapseInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendHyperlapseInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensDirtyDetectCallback:Lcom/samsung/android/camera/core2/callback/LensDirtyDetectCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->l0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensDirtyDetect:Ljava/lang/Boolean;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensDirtyDetect:Ljava/lang/Boolean;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/LensDirtyDetectCallback;->onLensDirtyDetectChanged(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLensDirtyDetectCallback - TimeStamp(%d) LensDirtyDetect(%b) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendLensInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfoCallback:Lcom/samsung/android/camera/core2/callback/LensInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 4
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    const/4 v4, 0x0

    .line 5
    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->J1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    const/4 v5, 0x0

    new-array v6, v5, [I

    invoke-virtual {p3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 6
    array-length v6, p3

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 7
    aget p3, p3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->a()Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    .line 9
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->b()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    .line 10
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->c()Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    .line 11
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->d()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 12
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-virtual {p3, v2}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->f(Ljava/lang/Float;)V

    .line 13
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-virtual {p3, v4}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->g(Ljava/lang/Integer;)V

    .line 14
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-virtual {p3, v3}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->h(Ljava/lang/Float;)V

    .line 15
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-virtual {p3, v1}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->i(Ljava/lang/Integer;)V

    .line 16
    new-instance p3, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-direct {p3, v2, v4, v3, v1}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback;->onLensInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 17
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendLensInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendLensSuggestionCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensSuggestionCallback:Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->n0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensSuggestion:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensSuggestion:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p3, p1}, Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;->onLensSuggestionChanged(Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLensSuggestionCallback - TimeStamp(%d) LensSuggestion(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendLightConditionCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLightConditionCallback:Lcom/samsung/android/camera/core2/callback/LightConditionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->o0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLightCondition:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLightCondition:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/LightConditionCallback;->onLightConditionChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLightConditionCallback - TimeStamp(%d) LightCondition(0x%X) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendLiveHdrStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLiveHdrStateCallback:Lcom/samsung/android/camera/core2/callback/LiveHdrStateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->r0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLiveHdrState:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLiveHdrState:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/LiveHdrStateCallback;->onLiveHdrStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLiveHdrStateCallback - TimeStamp(%d) HdrState(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendMultiViewInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mMultiViewInfoCallback:Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->x0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    new-instance v1, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;-><init>([Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-interface {v0, p2, v1, p1}, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;->onMultiViewInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback$MultiViewInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 7
    invoke-static {p3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendMultiViewInfoCallback - TimeStamp(%d) multiViewCropRoiRects(%s) camDevice: %s"

    .line 8
    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendNaturalBlurInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfoCallback:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->A0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->y0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->z0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5
    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6
    invoke-static {p3, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 7
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->c()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    .line 9
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    .line 10
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->a()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->g([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 12
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->h([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->i(Ljava/lang/Integer;)V

    .line 14
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-virtual {v4, p3}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->f(Landroid/graphics/Rect;)V

    .line 15
    new-instance v4, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-direct {v4, v1, v2, v3, p3}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;-><init>([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v4, p1}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback;->onNaturalBlurInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendNaturalBlurInfoCallback - TimeStamp(%d) %s, camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendObjectDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/ObjectDetectionInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->C0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectDetectionResult:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectDetectionResult:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 6
    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 7
    invoke-interface {v0, v1, p3, p1}, Lcom/samsung/android/camera/core2/callback/ObjectDetectionInfoCallback;->onObjectDetectionInfoChanged([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const/4 p2, 0x1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    const/4 p2, 0x2

    aput-object p1, p3, p2

    const-string p1, "sendObjectDetectionInfoCallback - TimeStamp(%d) %s, camDevice: %s"

    .line 10
    invoke-static {p0, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectTrackingInfoCallback:Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 3
    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 5
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 7
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 8
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E0:Landroid/hardware/camera2/CaptureResult$Key;

    .line 9
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->F0:Landroid/hardware/camera2/CaptureResult$Key;

    .line 10
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/Integer;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;-><init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;Landroid/graphics/Rect;)V

    .line 11
    invoke-interface {p0, p2, v0, p1}, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;->onObjectTrackingInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback$ObjectTrackingInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendPetDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPetDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 3
    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-static {p3}, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->c([I)[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    move-result-object p3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 5
    array-length v5, p3

    if-lez v5, :cond_0

    .line 6
    iput-boolean v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedPetDetectionInfoNullCb:Z

    .line 7
    new-instance v5, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;

    invoke-direct {v5, p3, v1}, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;-><init>([Lcom/samsung/android/camera/core2/container/PetDetectionInfo;Landroid/graphics/Rect;)V

    invoke-interface {v0, v5, p1}, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;->onPetDetectionInfoChanged(Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v4

    array-length p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    aput-object p1, v0, v2

    const-string p1, "sendPetDetectionInfoCallback - Timestamp(%d), petDetectionInfo Length(%d), CamDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedPetDetectionInfoNullCb:Z

    if-eqz p3, :cond_2

    .line 10
    iput-boolean v4, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNeedPetDetectionInfoNullCb:Z

    .line 11
    new-instance p3, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;

    new-array v5, v4, [Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    invoke-direct {p3, v5, v1}, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;-><init>([Lcom/samsung/android/camera/core2/container/PetDetectionInfo;Landroid/graphics/Rect;)V

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;->onPetDetectionInfoChanged(Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 12
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v4

    aput-object p1, p3, v3

    const-string p1, "sendPetDetectionInfoCallback - Timestamp(%d), petDetectionInfo Length(0), CamDevice: %s"

    invoke-static {p0, p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "sendPetDetectionCallback - CropRegion(null)"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method sendRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfoCallback:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->T0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x62

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->N0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 6
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->d(Ljava/lang/Integer;)V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2, p3}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->e(Ljava/lang/Integer;)V

    .line 10
    new-instance v2, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback;->onRecordingMotionSpeedModeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 11
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendRecordingMotionSpeedModeInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [J

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionInfo:[J

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionInfo:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 5
    aget-wide v3, p3, v1

    long-to-int v3, v3

    .line 6
    invoke-interface {v0, p2, v3, p3, p1}, Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;->onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    invoke-interface {v0, p2, v2, v3, p1}, Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;->onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/camera/core2/CamDevice;)V

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 9
    invoke-static {p3}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendSceneDetectionInfoCallback - TimeStamp(%d) SceneDetectionInfo(%s) camDevice: %s"

    .line 10
    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendSensorSensitivityCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSensorSensitivityCallback:Lcom/samsung/android/camera/core2/callback/SensorSensitivityCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSensorSensitivity:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSensorSensitivity:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/SensorSensitivityCallback;->onSensorSensitivityChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendSensorSensitivityCallback - TimeStamp(%d) SensorSensitivity(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mStillCaptureProgressCallback:Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->h1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mStillCaptureProgress:Ljava/lang/Integer;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mStillCaptureProgress:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0, p2, v1, p1}, Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;->onStillCaptureProgressChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "sendStillCaptureProgressCallback - TimeStamp(%d) StillCaptureProgress(%d) FrameNumber(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendSunDetectionInfo(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEnableCameraLogging:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->j1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    .line 4
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 5
    aget p1, p1, v2

    .line 6
    iget v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDetectedSunInfo:I

    if-ne v3, v1, :cond_1

    iget v3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mConfidenceScore:I

    if-eq v3, p1, :cond_2

    .line 7
    :cond_1
    iput v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDetectedSunInfo:I

    .line 8
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mConfidenceScore:I

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "sendSunDetectionInfo - detectedSunInfo: %d, confidenceScore = %d"

    invoke-static {p0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x5

    .line 10
    invoke-static {v1}, Lcom/samsung/android/camera/core2/container/SunDetectionInfo;->k(I)Lcom/samsung/android/camera/core2/container/SunDetectionInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendLoggingMessage(IIILjava/lang/Object;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method sendSuperSlowMotionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfoCallback:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->m1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->n1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->o1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/CamCapability;->z()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 6
    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->c0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, [J

    .line 7
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->b()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    .line 8
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->c()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    .line 9
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->d()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    .line 10
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->a()[J

    move-result-object p3

    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p3

    if-nez p3, :cond_2

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {p3, v1}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->g(Ljava/lang/Integer;)V

    .line 12
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {p3, v2}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->h(Ljava/lang/Integer;)V

    .line 13
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {p3, v3}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->i(Ljava/lang/Integer;)V

    .line 14
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {p3, v4}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->f([J)V

    .line 15
    new-instance p3, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-direct {p3, v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[J)V

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback;->onSuperSlowMotionInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendSuperSlowMotionInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendTextDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTextDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/TextDetectionInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->r1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTextDetectionInfo:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTextDetectionInfo:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/TextDetectionInfoCallback;->h(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendTextDetectionInfoCallback - TimeStamp(%d) textDetectionInfo(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendTouchAeStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTouchAeStateCallback:Lcom/samsung/android/camera/core2/callback/TouchAeStateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->s1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTouchAeState:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTouchAeState:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/TouchAeStateCallback;->onTouchAeStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendTouchAeStateCallback - TimeStamp(%d) TouchAeState(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendZoomLockStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mZoomLockStateCallback:Lcom/samsung/android/camera/core2/callback/ZoomLockStateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->A1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mZoomLockState:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mZoomLockState:Ljava/lang/Integer;

    .line 5
    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/camera/core2/callback/ZoomLockStateCallback;->onZoomLockStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendZoomLockStateCallback - TimeStamp(%d) ZoomLockState(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method setActionShotResultCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActionShotResultCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mActionShotResultCallback:Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;

    return-void
.end method

.method setAdaptiveLensModeInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveLensModeInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->d()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AdaptiveLensModeInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/AdaptiveLensModeInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfoCallback:Lcom/samsung/android/camera/core2/callback/AdaptiveLensModeInfoCallback;

    return-void
.end method

.method setAeInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAeInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/AeInfoCallback$AeInfo;->e()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/AeInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AeInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/AeInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/AeInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAeInfoCallback:Lcom/samsung/android/camera/core2/callback/AeInfoCallback;

    return-void
.end method

.method setAfInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAfInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->f()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/AfInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AfInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/AfInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/AfInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAfInfoCallback:Lcom/samsung/android/camera/core2/callback/AfInfoCallback;

    return-void
.end method

.method setAgifEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAgifEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;->t(Lcom/samsung/android/camera/core2/callback/AgifEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAgifEventCallback:Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    return-void
.end method

.method setAutoFramingInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoFramingInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback$AutoFramingInfo;->e()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AutoFramingInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/AutoFramingInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mAutoFramingInfoCallback:Lcom/samsung/android/camera/core2/callback/AutoFramingInfoCallback;

    return-void
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBokehInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo;->d()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfo_V2:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback$BokehInfo_V2;->d()V

    .line 4
    check-cast p1, Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;

    .line 5
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;->p(Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/BokehInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBokehInfoCallback:Lcom/samsung/android/camera/core2/callback/BokehInfoCallback;

    return-void
.end method

.method setBrightnessValueCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessValueCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/BrightnessValueCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/BrightnessValueCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBrightnessValueCallback:Lcom/samsung/android/camera/core2/callback/BrightnessValueCallback;

    return-void
.end method

.method setBurstShotFpsCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBurstShotFpsCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBurstShotFps:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/BurstShotFpsCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/BurstShotFpsCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/BurstShotFpsCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/BurstShotFpsCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mBurstShotFpsCallback:Lcom/samsung/android/camera/core2/callback/BurstShotFpsCallback;

    return-void
.end method

.method setCameraRunningDebugInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraRunningDebugInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfo:[B

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/CameraRunningDebugInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CameraRunningDebugInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/CameraRunningDebugInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/CameraRunningDebugInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfoCallback:Lcom/samsung/android/camera/core2/callback/CameraRunningDebugInfoCallback;

    return-void
.end method

.method setColorTemperatureCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorTemperatureCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mColorTemperature:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/ColorTemperatureCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/ColorTemperatureCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/ColorTemperatureCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ColorTemperatureCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mColorTemperatureCallback:Lcom/samsung/android/camera/core2/callback/ColorTemperatureCallback;

    return-void
.end method

.method setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCompositionGuideEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/CompositionGuideEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CompositionGuideEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/CompositionGuideEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/CompositionGuideEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideEventCallback:Lcom/samsung/android/camera/core2/callback/CompositionGuideEventCallback;

    return-void
.end method

.method setCompositionGuideInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCompositionGuideInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfo:Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/CompositionGuideInfo;->e()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/CompositionGuideInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CompositionGuideInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/CompositionGuideInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/CompositionGuideInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCompositionGuideInfoCallback:Lcom/samsung/android/camera/core2/callback/CompositionGuideInfoCallback;

    return-void
.end method

.method setDepthInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDepthInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mCenterDepth:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/DepthInfoCallback;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/DepthInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/DepthInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/DepthInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDepthInfoCallback:Lcom/samsung/android/camera/core2/callback/DepthInfoCallback;

    return-void
.end method

.method setDofMultiInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDofMultiInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/DofMultiInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/DofMultiInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDofMultiInfoCallback:Lcom/samsung/android/camera/core2/callback/DofMultiInfoCallback;

    return-void
.end method

.method setDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicShotCaptureDurationCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/high16 v0, -0x80000000

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/DynamicShotCaptureDurationCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/DynamicShotCaptureDurationCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/DynamicShotCaptureDurationCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/DynamicShotCaptureDurationCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotCaptureDurationCallback:Lcom/samsung/android/camera/core2/callback/DynamicShotCaptureDurationCallback;

    return-void
.end method

.method setDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicShotInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->f()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/DynamicShotInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/DynamicShotInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/DynamicShotInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/DynamicShotInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mDynamicShotInfoCallback:Lcom/samsung/android/camera/core2/callback/DynamicShotInfoCallback;

    return-void
.end method

.method setEvCompensationValueCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEvCompensationValueCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEvCompensationValue:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/EvCompensationValueCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/EvCompensationValueCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/EvCompensationValueCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/EvCompensationValueCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEvCompensationValueCallback:Lcom/samsung/android/camera/core2/callback/EvCompensationValueCallback;

    return-void
.end method

.method setEventFinderResultCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEventFinderResultCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/EventFinderResultCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/EventFinderResultCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/EventFinderResultCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/EventFinderResultCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventFinderResultCallback:Lcom/samsung/android/camera/core2/callback/EventFinderResultCallback;

    return-void
.end method

.method setExposureTimeCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureTimeCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mExposureTime:Ljava/lang/Long;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/ExposureTimeCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/ExposureTimeCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/ExposureTimeCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ExposureTimeCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mExposureTimeCallback:Lcom/samsung/android/camera/core2/callback/ExposureTimeCallback;

    return-void
.end method

.method setFRTrackingEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRTrackingEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/FRTrackingEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FRTrackingEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/FRTrackingEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FRTrackingEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFRTrackingEventCallback:Lcom/samsung/android/camera/core2/callback/FRTrackingEventCallback;

    return-void
.end method

.method setFaceAlignmentEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceAlignmentEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/FaceAlignmentEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FaceAlignmentEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/FaceAlignmentEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FaceAlignmentEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFaceAlignmentEventCallback:Lcom/samsung/android/camera/core2/callback/FaceAlignmentEventCallback;

    return-void
.end method

.method setFaceDetectionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FaceDetectionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FaceDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFaceDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback;

    return-void
.end method

.method setFaceLandmarkEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceLandmarkEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FaceLandmarkEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FaceLandmarkEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFaceLandmarkEventCallback:Lcom/samsung/android/camera/core2/callback/FaceLandmarkEventCallback;

    return-void
.end method

.method setFacialAttributeEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFacialAttributeEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;->p(Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFacialAttributeEventCallback:Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;

    return-void
.end method

.method setFoodEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/FoodEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FoodEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/FoodEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FoodEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mFoodEventCallback:Lcom/samsung/android/camera/core2/callback/FoodEventCallback;

    return-void
.end method

.method setHandGestureDetectionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandGestureDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/HandGestureDetectionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/HandGestureDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHandGestureDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/HandGestureDetectionInfoCallback;

    return-void
.end method

.method setHumanTrackingEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHumanTrackingEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/HumanTrackingEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/HumanTrackingEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/HumanTrackingEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHumanTrackingEventCallback:Lcom/samsung/android/camera/core2/callback/HumanTrackingEventCallback;

    return-void
.end method

.method setHyperlapseInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHyperlapseInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/HyperlapseInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/HyperlapseInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mHyperlapseInfoCallback:Lcom/samsung/android/camera/core2/callback/HyperlapseInfoCallback;

    return-void
.end method

.method setInjectedDSC(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mInjectedDsCondition:I

    .line 2
    iput p2, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mInjectedDsExtraInfo:I

    return-void
.end method

.method setLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLensDirtyDetectCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensDirtyDetect:Ljava/lang/Boolean;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/LensDirtyDetectCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/LensDirtyDetectCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/LensDirtyDetectCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/LensDirtyDetectCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensDirtyDetectCallback:Lcom/samsung/android/camera/core2/callback/LensDirtyDetectCallback;

    return-void
.end method

.method setLensInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLensInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;->e()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/LensInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/LensInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/LensInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/LensInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensInfoCallback:Lcom/samsung/android/camera/core2/callback/LensInfoCallback;

    return-void
.end method

.method setLensSuggestionCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLensSuggestionCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensSuggestion:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/LensSuggestionCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/LensSuggestionCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLensSuggestionCallback:Lcom/samsung/android/camera/core2/callback/LensSuggestionCallback;

    return-void
.end method

.method setLightConditionCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightConditionCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLightCondition:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/LightConditionCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/LightConditionCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/LightConditionCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/LightConditionCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLightConditionCallback:Lcom/samsung/android/camera/core2/callback/LightConditionCallback;

    return-void
.end method

.method setLiveHdrStateCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveHdrStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLiveHdrState:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/LiveHdrStateCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/LiveHdrStateCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/LiveHdrStateCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/LiveHdrStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mLiveHdrStateCallback:Lcom/samsung/android/camera/core2/callback/LiveHdrStateCallback;

    return-void
.end method

.method setMultiViewInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultiViewInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/MultiViewInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/MultiViewInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mMultiViewInfoCallback:Lcom/samsung/android/camera/core2/callback/MultiViewInfoCallback;

    return-void
.end method

.method setNaturalBlurInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNaturalBlurInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfo:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback$NaturalBlurInfo;->e()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/NaturalBlurInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/NaturalBlurInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mNaturalBlurInfoCallback:Lcom/samsung/android/camera/core2/callback/NaturalBlurInfoCallback;

    return-void
.end method

.method setObjectDetectionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setObjectDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectDetectionResult:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/ObjectDetectionInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/ObjectDetectionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/ObjectDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ObjectDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/ObjectDetectionInfoCallback;

    return-void
.end method

.method setObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setObjectTrackingInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/ObjectTrackingInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ObjectTrackingInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mObjectTrackingInfoCallback:Lcom/samsung/android/camera/core2/callback/ObjectTrackingInfoCallback;

    return-void
.end method

.method setPalmDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPalmDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/PalmDetectionEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PalmDetectionEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/PalmDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PalmDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPalmDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/PalmDetectionEventCallback;

    return-void
.end method

.method setPanoramaEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPanoramaEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPanoramaEventCallback:Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

    check-cast v0, Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/tb;->a:Lcom/samsung/android/camera/core2/maker/tb;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    check-cast p1, Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

    .line 5
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;->F(Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPanoramaEventCallback:Lcom/samsung/android/camera/core2/callback/PanoramaEventCallback;

    return-void
.end method

.method setPetDetectionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPetDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PetDetectionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PetDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPetDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;

    return-void
.end method

.method setPostProcessorStatusCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPostProcessorStatusCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PostProcessorStatusCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PostProcessorStatusCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPostProcessorStatusCallback:Lcom/samsung/android/camera/core2/callback/PostProcessorStatusCallback;

    return-void
.end method

.method setPreviewSnapShotCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSnapShotCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewSnapShotCallbackForwarder;->l(Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PreviewSnapShotCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPreviewSnapShotCallback:Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;

    return-void
.end method

.method setPreviewStateCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewStateCallbackForwarder;->r(Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PreviewStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mPreviewStateCallback:Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    return-void
.end method

.method setQRCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQRCodeDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/QRCodeDetectionEventCallbackForwarder;->p(Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/QRCodeDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mQRCodeDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/QRCodeDetectionEventCallback;

    return-void
.end method

.method setRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecordingMotionSpeedModeInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->c()V

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/RecordingMotionSpeedModeInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/RecordingMotionSpeedModeInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfoCallback:Lcom/samsung/android/camera/core2/callback/RecordingMotionSpeedModeInfoCallback;

    return-void
.end method

.method setSTPictureCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSTPictureCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/STPictureCallbackForwarder;->z(Lcom/samsung/android/camera/core2/callback/STPictureCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/STPictureCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSTPictureCallback:Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    return-void
.end method

.method setSceneDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSceneDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SceneDetectionEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SceneDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

    return-void
.end method

.method setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSceneDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionInfo:[J

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SceneDetectionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SceneDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSceneDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/SceneDetectionInfoCallback;

    return-void
.end method

.method setSensorSensitivityCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSensorSensitivityCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSensorSensitivity:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SensorSensitivityCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SensorSensitivityCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SensorSensitivityCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SensorSensitivityCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSensorSensitivityCallback:Lcom/samsung/android/camera/core2/callback/SensorSensitivityCallback;

    return-void
.end method

.method setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSingleBokehEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;->r(Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SingleBokehEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSingleBokehEventCallback:Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;

    return-void
.end method

.method setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSlowMotionEventDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SlowMotionEventDetectionEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SlowMotionEventDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSlowMotionEventDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;

    return-void
.end method

.method setSmartScanEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartScanEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SmartScanEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SmartScanEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSmartScanEventCallback:Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;

    return-void
.end method

.method setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStillCaptureProgressCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mStillCaptureProgress:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/StillCaptureProgressCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/StillCaptureProgressCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mStillCaptureProgressCallback:Lcom/samsung/android/camera/core2/callback/StillCaptureProgressCallback;

    return-void
.end method

.method setSuperSlowMotionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSuperSlowMotionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->e()V

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SuperSlowMotionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SuperSlowMotionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfoCallback:Lcom/samsung/android/camera/core2/callback/SuperSlowMotionInfoCallback;

    return-void
.end method

.method setSwFaceDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSwFaceDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/SwFaceDetectionEventCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/SwFaceDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mSwFaceDetectionEventCallback:Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;

    return-void
.end method

.method setTextDetectionInfoCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTextDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTextDetectionInfo:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/TextDetectionInfoCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/TextDetectionInfoCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/TextDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/TextDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTextDetectionInfoCallback:Lcom/samsung/android/camera/core2/callback/TextDetectionInfoCallback;

    return-void
.end method

.method setTouchAeStateCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchAeStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTouchAeState:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/TouchAeStateCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/TouchAeStateCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/TouchAeStateCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/TouchAeStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mTouchAeStateCallback:Lcom/samsung/android/camera/core2/callback/TouchAeStateCallback;

    return-void
.end method

.method setZoomLockStateCallback(Lcom/samsung/android/camera/core2/callback/MakerCallback;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomLockStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mZoomLockState:Ljava/lang/Integer;

    .line 3
    check-cast p1, Lcom/samsung/android/camera/core2/callback/ZoomLockStateCallback;

    .line 4
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 5
    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/ZoomLockStateCallbackForwarder;->n(Lcom/samsung/android/camera/core2/callback/ZoomLockStateCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ZoomLockStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->mZoomLockStateCallback:Lcom/samsung/android/camera/core2/callback/ZoomLockStateCallback;

    return-void
.end method
