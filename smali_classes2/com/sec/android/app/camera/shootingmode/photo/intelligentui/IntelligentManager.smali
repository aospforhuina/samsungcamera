.class public Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;
.super Ljava/lang/Object;
.source "IntelligentManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$CompositionGuideEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$NightScreenFlashEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;,
        Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;
    }
.end annotation


# static fields
.field private static final MESSAGE_INTELLIGENT_IDLE_SCENE_DETECTION:I = 0x1

.field private static final SCENE_DETECTED_DURATION:I = 0x9c4

.field private static final SCENE_OPTIMIZER_EFFECT_SA_LOGGING_DOCUMENT_SCAN_STATE:I = 0x2

.field private static final SCENE_OPTIMIZER_EFFECT_SA_LOGGING_OFF_STATE:I = 0x0

.field private static final SCENE_OPTIMIZER_OFF:I = -0x2

.field private static final TAG:Ljava/lang/String; = "IntelligentManager"

.field private static final VERTEX_COUNT:I = 0x4


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCompositionGuideStatus:I

.field private mCurrentSceneEvent:I

.field private mCurrentSceneInfo:I

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Landroid/os/Handler;

.field private mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

.field private final mIntervalManager:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

.field private mIsCaptureProcessingAnimationRequested:Z

.field private mIsCaptureProcessingAnimationStarted:Z

.field private mIsNightScreenFlashStarted:Z

.field private mIsPhotoNightCapturing:Z

.field private mIsSmartScanCapturing:Z

.field private mPreviousSceneDetectionMode:I

.field private mPreviousSceneInfo:I

.field private mSceneDetectionModeState:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

.field private mSceneEventIndex:I

.field private mSceneEventInformation:[J

.field private mSceneInfoIndex:I

.field private mSmartScanVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventIndex:I

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneInfo:I

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCompositionGuideStatus:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneDetectionMode:I

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsSmartScanCapturing:Z

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsPhotoNightCapturing:Z

    .line 12
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsNightScreenFlashStarted:Z

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsCaptureProcessingAnimationStarted:Z

    .line 14
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsCaptureProcessingAnimationRequested:Z

    .line 15
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;->INVALID:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneDetectionModeState:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    .line 16
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 18
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 19
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 20
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntervalManager:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    return p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    return-object p0
.end method

.method private decideDetectedScene(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    packed-switch p2, :pswitch_data_0

    return p1

    :pswitch_0
    return p2

    .line 2
    :pswitch_1
    sget-object p0, Lu3/b;->j4:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :pswitch_2
    if-nez p1, :cond_1

    return p2

    :cond_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEngineCallbacks : enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSceneOptimizerSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionEventListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSceneDetectionEventCallback(Z)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionInfoListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionInfoListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSceneDetectionInfoCallback(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSmartScanSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_3

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSmartScanEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSmartScanEventCallback(Z)V

    .line 12
    :cond_4
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    sget-object v0, Lu3/b;->E1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSceneOptimizerSupported()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_7

    move-object v3, p0

    goto :goto_4

    :cond_7
    move-object v3, v1

    :goto_4
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setEstimatedCaptureDurationListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableEstimatedCaptureDurationCallback(Z)V

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isFrontPhotoNightModeSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_9

    move-object v3, p0

    goto :goto_5

    :cond_9
    move-object v3, v1

    :goto_5
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionInfoListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionInfoListener;)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSceneDetectionInfoCallback(Z)V

    .line 18
    :cond_a
    sget-object v0, Lu3/b;->H2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_b

    move-object v2, p0

    goto :goto_6

    :cond_b
    move-object v2, v1

    :goto_6
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setNightScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$NightScreenFlashEventListener;)V

    .line 20
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isLensDirtyDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_d

    move-object v2, p0

    goto :goto_7

    :cond_d
    move-object v2, v1

    :goto_7
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setLensDirtyDetectListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V

    .line 22
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_f

    move-object v1, p0

    :cond_f
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setCompositionGuideEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$CompositionGuideEventListener;)V

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableCompositionGuideEventCallback(Z)V

    .line 25
    :cond_10
    sget-object v0, Lu3/b;->u2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_11

    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->registerLensSuggestionStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;)V

    goto :goto_8

    .line 27
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->unregisterLensSuggestionStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensSuggestionStateListener;)V

    :cond_12
    :goto_8
    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    :cond_13
    return-void
.end method

.method private handlePhotoNightOffScene()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 4
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneChanged(I)V

    :cond_1
    return-void
.end method

.method private handlePhotoNightOnScene()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 4
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 5
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneChanged(I)V

    :cond_1
    return-void
.end method

.method private handlePhotoSuperNightOffScene()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 4
    sget-object v0, Lu3/b;->S:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSuperNightDetected(Z)V

    :cond_1
    return-void
.end method

.method private handlePhotoSuperNightOnScene()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 4
    sget-object v0, Lu3/b;->S:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 6
    :cond_0
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSuperNightDetected(Z)V

    :cond_2
    return-void
.end method

.method private handleSceneDetectionInfo(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneInfo:I

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    .line 6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->decideDetectedScene(II)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x29

    if-ne p1, v0, :cond_3

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSceneDetectionInfo : sceneEvent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sceneInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", detectedScene="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IntelligentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "handleSceneDetectionInfo : not available scene type"

    .line 10
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    if-eqz v0, :cond_5

    .line 13
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneInfo:I

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onFrontSceneChanged(II)V

    :cond_5
    return-void

    :cond_6
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/16 v0, 0xe

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_9

    const/16 v0, 0x30

    if-eq p1, v0, :cond_8

    packed-switch p1, :pswitch_data_0

    if-eqz p1, :cond_7

    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isIQScene(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 15
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isClassifierScene(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eq v0, p1, :cond_c

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 19
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    if-eqz v0, :cond_c

    .line 21
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneChanged(I)V

    goto :goto_0

    .line 23
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handlePhotoSuperNightOnScene()V

    goto :goto_0

    .line 24
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handlePhotoNightOnScene()V

    goto :goto_0

    .line 25
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handlePhotoSuperNightOffScene()V

    goto :goto_0

    .line 26
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handleUnsupportedPhotoSuperNightScene()V

    goto :goto_0

    .line 27
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handlePhotoNightOffScene()V

    goto :goto_0

    .line 28
    :cond_a
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    if-eqz v0, :cond_c

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 33
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneChanged(I)V

    goto :goto_0

    .line 34
    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 35
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUnsupportedPhotoSuperNightScene()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 4
    sget-object v0, Lu3/b;->S:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSuperNightDetected(Z)V

    :cond_2
    return-void
.end method

.method private isClassifierScene(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/16 p0, 0x27

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCompositionGuideDisplayAvailable()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const-string v1, "IntelligentManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "isCompositionGuideDisplayAvailable : return isCapturing.."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isCompositionGuideDisplayAvailable : Returned preview animation requested. Return."

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPictureSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "isCompositionGuideDisplayAvailable : return isPictureSaving.."

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isCompositionGuideDisplayAvailable : return isTimerRunning.."

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isTextScene()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string p0, "isCompositionGuideDisplayAvailable : return smart scan.."

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 13
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    new-array v1, v3, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 16
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideAvailable()Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    return v2
.end method

.method private isIQScene(I)Z
    .locals 0

    const/16 p0, 0x28

    if-lt p1, p0, :cond_0

    const/16 p0, 0x2e

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPhotoNightEnabled()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEffectProcessorActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    return v1

    :cond_2
    if-ne v0, v2, :cond_4

    .line 4
    sget-object v0, Lu3/b;->E1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v1

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 6
    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method private isPhotoNightScene()Z
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->T2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lu3/b;->U2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getEstimatedCaptureDuration()I

    move-result p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private setSmartScanVertex([F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    mul-int/lit8 v3, v0, 0x2

    aget v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private turnOffSceneDetectEffect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectEffectOff(Z)V

    .line 3
    :cond_0
    sget-object p1, Lu3/b;->S:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->b:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->updateLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->updateSmartScanCorner([F)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public enableIntelligentFeatures()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "enableIntelligentFeatures"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneDetectionMode:I

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSceneOptimizerSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isIQScene(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSceneOptimizerAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->enableSceneDetection(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->setSceneDetectionMode(Z)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isBackPhotoNightModeAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->setSuperNightMode(Z)V

    .line 10
    :cond_2
    sget-object v0, Lu3/b;->E1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isFrontPhotoNightModeSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isFrontPhotoNightModeAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->setSuperNightMode(Z)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideAvailable()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCompositionGuide(Z)V

    :cond_4
    return-void
.end method

.method enableSceneDetection(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;->ENABLED:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;->DISABLED:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneDetectionModeState:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    if-ne v1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneDetectionModeState:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->setSceneDetectionMode(Z)V

    if-nez p1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_2
    return-void
.end method

.method public getCaptureProcessingAnimationRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsCaptureProcessingAnimationRequested:Z

    return p0
.end method

.method getIntervalCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntervalManager:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->getIntervalCount()I

    move-result p0

    return p0
.end method

.method public getSmartScanVertex()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleCaptureCanceled()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightCaptureCanceled()V

    :cond_0
    return-void
.end method

.method public handleCaptureFrameProcessingCompleted()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightCaptureFrameProcessingCompleted()V

    :cond_0
    return-void
.end method

.method public handleCaptureFrameProcessingStarted()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightCaptureFrameProcessingStarted()V

    :cond_0
    return-void
.end method

.method public handleCaptureRequested()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightCaptureRequested()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightCaptureRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onPhotoNightStillCaptureRequested()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleCaptureStarted()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getEstimatedCaptureDuration()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->collapseMenu()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hideAllPopup()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightCaptureStarted(I)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsPhotoNightCapturing:Z

    :cond_0
    return-void
.end method

.method public handlePhotoNightStillCaptureCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onPhotoNightStillCaptureCanceled()V

    return-void
.end method

.method public handlePhotoNightStillCaptureCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onPhotoNightStillCaptureCompleted()V

    return-void
.end method

.method public handlePhotoNightStillCaptureProgressChange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onPhotoNightStillCaptureProgressChange()V

    return-void
.end method

.method public handlePhotoNightStillCaptureStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->startShutterProgressWheel()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->collapseMenu()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hideAllPopup()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onPhotoNightStillCaptureStarted()V

    return-void
.end method

.method public handleShutterReceived()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightCaptureCompleted()V

    :cond_0
    return-void
.end method

.method public isBackPhotoNightModeAvailable()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isEffectActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lu3/b;->O2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method isCompositionGuideAvailable()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method isCompositionGuideSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->a1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isEffectActivated()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEffectProcessorActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isFrontPhotoNightModeAvailable()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isEffectActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontNightMode()I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isFrontPhotoNightModeSupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFrontPhotoNightModeSupported()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method isIntervalTimerRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntervalManager:Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->isIntervalTimerRunning()Z

    move-result p0

    return p0
.end method

.method isLensDirtyDetectionPopupAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "IntelligentManager"

    const-string v0, "isLensDirtyDetectionPopupAvailable : Return, Effect menu is visible"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method isLensDirtyDetectionSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lu3/b;->k2:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNightScreenFlashStared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsNightScreenFlashStarted:Z

    return p0
.end method

.method public isPhotoNightCaptureRequired()Z
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->T2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lu3/b;->U2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isPhotoNightEnabled()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPhotoNightCapturing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsPhotoNightCapturing:Z

    return p0
.end method

.method public isPhotoNightSceneIndex()Z
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->N2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isBackPhotoNightModeAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isFrontPhotoNightModeAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessingPostType()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    check-cast p0, Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSceneOptimizerAvailable()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isEffectActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public isSceneOptimizerSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lu3/b;->f2:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSmartScanCapturing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsSmartScanCapturing:Z

    return p0
.end method

.method public isSmartScanSupported()Z
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->d4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lu3/b;->S:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method isTextScene()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 v0, 0x27

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

.method public onCompositionGuideEvent(Landroid/graphics/PointF;FI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompositionGuideEvent : movePosition ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] angle ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p3}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToCompositionGuideStatus(I)I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCompositionGuideStatus:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onCompositionGuideUpdated(Landroid/graphics/PointF;FI)V

    :cond_0
    return-void
.end method

.method public onEstimatedCaptureDurationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onEstimatedCaptureDurationChanged(I)V

    return-void
.end method

.method public onLensDirtyDetected()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isLensDirtyDetectionPopupAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "IntelligentManager"

    const-string v1, "onLensDirtyDetected"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DIRTY_LENS_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "pref_camera_lens_dirty_popup_timer"

    invoke-static {v0, v3, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0152"

    goto :goto_0

    :cond_1
    const-string p0, "2152"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "lens dirty popup can\'t be shown as it\'s been less than 24 hours"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onLensSuggestionChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onMacroLensDetected(Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onMacroLensDetected(Z)V

    :goto_0
    return-void
.end method

.method public onNightScreenFlashStarted()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "onNightScreenFlashStarted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsNightScreenFlashStarted:Z

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightScreenFlashStarted()V

    return-void
.end method

.method public onNightScreenFlashStopped()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "onNightScreenFlashStopped"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onNightScreenFlashStopped()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsNightScreenFlashStarted:Z

    return-void
.end method

.method public onSceneDetectionEvent(I[J)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventIndex:I

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p2

    const-string v0, "IntelligentManager"

    if-eqz p2, :cond_0

    const-string p0, "onSceneDetectionEvent - returned because capture is now in progress."

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    .line 9
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->decideDetectedScene(II)I

    move-result p2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneDetectionEvent : sceneEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sceneInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", detectedScene="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSceneEventInformation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    .line 11
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "onSceneDetectionEvent : not available scene type"

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_3
    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq p2, p1, :cond_6

    if-eqz p2, :cond_5

    const/16 p1, 0xe

    if-eq p2, p1, :cond_4

    .line 15
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isClassifierScene(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, p2, :cond_7

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 20
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneChanged(I)V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, p2, :cond_7

    .line 25
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 26
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    .line 27
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, p2, :cond_7

    .line 29
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 30
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 31
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    .line 32
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneChanged(I)V

    .line 33
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 35
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onSceneDetectionInfo(I[J)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSmartScanCapturing()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p0, "IntelligentManager"

    const-string p1, "onSceneDetectionInfo - returned because capture is now in progress."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handleSceneDetectionInfo(I)V

    return-void
.end method

.method public onSmartScanResult(Z[F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const-string v1, "IntelligentManager"

    if-nez v0, :cond_0

    const-string p0, "onSmartScanResult : Returned ADDITIONAL_SCENE_DOCUMENT_SCAN value is disabled"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->isHighMagnificationZoom(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onSmartScanResult : Returned high magnification zoom"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "onSmartScanResult : Returned isCameraDialogVisible"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsCaptureProcessingAnimationStarted:Z

    if-eqz v0, :cond_3

    const-string p0, "onSmartScanResult : Returned mIsCaptureProcessingAnimationStarted"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onSmartScanResult : Returned preview animation requested. Return."

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmartScanResult : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSmartScanUpdated(Z[FLandroid/graphics/Matrix;)V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "onStartPreviewCompleted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;->INVALID:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneDetectionModeState:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->turnOffSceneDetectEffect(Z)V

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->enableEngineCallbacks(Z)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public resetScene()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "resetScene"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->updateDetectedScene()V

    return-void
.end method

.method public setCaptureProcessingAnimationRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsCaptureProcessingAnimationRequested:Z

    return-void
.end method

.method public setCaptureProcessingAnimationStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsCaptureProcessingAnimationStarted:Z

    return-void
.end method

.method public setIntelligentEventListener(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIntelligentEventListener:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    return-void
.end method

.method public setPhotoNightCaptureCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsPhotoNightCapturing:Z

    return-void
.end method

.method setSceneDetectionMode(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSceneOptimizerSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneDetectionMode:I

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x7

    if-nez v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    .line 4
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    .line 5
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    .line 6
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneInfo:I

    goto :goto_1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSceneDetectionMode - enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IntelligentManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSceneDetectionMode(I)V

    .line 11
    :cond_3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneDetectionMode:I

    return-void

    :array_0
    .array-data 8
        0x0
        -0x2
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setSmartScanCapturing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mIsSmartScanCapturing:Z

    return-void
.end method

.method public setSuperNightMode(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuperNightMode state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSuperNightShotMode(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSuperNightShotMode(I)V

    :goto_0
    return-void
.end method

.method start()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "Start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->enableIntelligentFeatures()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->enableEngineCallbacks(Z)V

    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "IntelligentManager"

    const-string v1, "Stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mPreviousSceneInfo:I

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;->INVALID:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneDetectionModeState:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$SceneDetectionModeState;

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->enableEngineCallbacks(Z)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateDetectedScene()V
    .locals 3

    const-string v0, "IntelligentManager"

    const-string/jumbo v1, "updateDetectedScene"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventIndex:I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    if-eq v1, v2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDetectedScene : mSceneEventIndex - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentSceneEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventIndex:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneEventInformation:[J

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->onSceneDetectionEvent(I[J)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    if-eq v1, v2, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDetectedScene : mSceneInfoIndex - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentSceneInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCurrentSceneInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mSceneInfoIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->handleSceneDetectionInfo(I)V

    :cond_1
    return-void
.end method

.method updateLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    return-void
.end method

.method public updateSALogForPictureTaken(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/logging/SaLogEventKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 6
    sget-object v3, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_SCENE_OPTIMIZER:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    sget-object v3, Lcom/sec/android/app/camera/logging/SaLogDetail;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/logging/SaLogDetail;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_NIGHT_SHOT:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_NIGHT_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogDetail;->NIGHT_SHOT_BUTTON_ON:Lcom/sec/android/app/camera/logging/SaLogDetail;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogDetail;->NIGHT_SHOT_BUTTON_OFF:Lcom/sec/android/app/camera/logging/SaLogDetail;

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lu3/b;->S:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_SCENE_OPTIMIZER_ADDITIONAL_EFFECTS:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isSmartScanCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogDetail;->SCENE_OPTIMIZER_DISABLED:Lcom/sec/android/app/camera/logging/SaLogDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_4
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogDetail;->SCENE_OPTIMIZER_OFF:Lcom/sec/android/app/camera/logging/SaLogDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isCompositionGuideAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    .line 17
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCompositionGuideStatus:I

    if-ne p0, v2, :cond_6

    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogDetail;->FIT_TO_GUIDE:Lcom/sec/android/app/camera/logging/SaLogDetail;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogDetail;->IGNORE_GUIDE:Lcom/sec/android/app/camera/logging/SaLogDetail;

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->isFrontPhotoNightModeSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->FRONT_CAMERA_CAPTURE_NIGHT_SHOT:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontNightMode()I

    move-result p0

    if-ne p0, v1, :cond_8

    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogDetail;->NIGHT_SHOT_BUTTON_ON:Lcom/sec/android/app/camera/logging/SaLogDetail;

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogDetail;->NIGHT_SHOT_BUTTON_OFF:Lcom/sec/android/app/camera/logging/SaLogDetail;

    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    return-void
.end method

.method updateSmartScanCorner([F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->setSmartScanVertex([F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSmartScanCorner([F)V

    return-void
.end method
