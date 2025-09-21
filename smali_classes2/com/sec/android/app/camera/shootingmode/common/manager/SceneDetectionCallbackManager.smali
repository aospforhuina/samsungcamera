.class public Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;
.super Ljava/lang/Object;
.source "SceneDetectionCallbackManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_INVALID_SCENE_DETECTION:I = 0x1

.field private static final SCENE_DETECTED_DURATION:I = 0x9c4

.field private static final SCENE_OPTIMIZER_OFF:I = -0x2

.field private static final TAG:Ljava/lang/String; = "SceneDetectionCallbackManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentSceneEvent:I

.field private mCurrentSceneInfo:I

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

.field private mSceneEventIndex:I

.field private mSceneEventInformation:[J

.field private mSceneInfoIndex:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;Lcom/sec/android/app/camera/shootingmode/common/manager/k;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneInfoIndex:I

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    const/4 v1, 0x7

    new-array v1, v1, [J

    .line 6
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventIndex:I

    .line 8
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 9
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 10
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;I[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->lambda$onSceneDetectionEvent$0(I[J)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->setInvalidSceneDetection()V

    return-void
.end method

.method private decideDetectedScene(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x2b

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2c

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2d

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2f

    if-eq p2, p0, :cond_2

    const/16 p0, 0x30

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2e

    if-eq p2, p0, :cond_2

    sget-object p0, Lu3/b;->j4:Lu3/b;

    .line 2
    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2a

    if-eq p2, p0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/16 p0, 0x28

    if-eq p2, p0, :cond_2

    const/16 p0, 0x29

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return p2
.end method

.method private enableEventCallbacks(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionEventListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSceneDetectionEventCallback(Z)V

    return-void
.end method

.method private enableInfoCallback(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionInfoListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SceneDetectionInfoListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSceneDetectionInfoCallback(Z)V

    return-void
.end method

.method private synthetic lambda$onSceneDetectionEvent$0(I[J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventIndex:I

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p2

    const-string v0, "SceneDetectionCallbackManager"

    if-eqz p2, :cond_1

    const-string p0, "onSceneDetectionEvent - returned because capture is now in progress."

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    .line 7
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->decideDetectedScene(II)I

    move-result p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSceneDetectionEvent : sceneEvent="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneInfo = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detectedScene="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneDetectionInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-eq p1, p2, :cond_4

    if-eqz p1, :cond_2

    .line 11
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 13
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2, v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 14
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 18
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2, v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    .line 20
    :cond_3
    sget-object p1, Lu3/b;->D3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private setInvalidSceneDetection()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInvalidSceneDetection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDetectionCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    :cond_0
    return-void

    nop

    :array_0
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


# virtual methods
.method public handleSceneDetectionInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneInfoIndex:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->decideDetectedScene(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSceneDetectionInfo : sceneEvent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sceneInfo = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", detectedScene="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SceneDetectionCallbackManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onSceneDetectionEvent(I[J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/common/manager/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/common/manager/j;-><init>(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;I[J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSceneDetectionInfo(I[J)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneInfoIndex:I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "SceneDetectionCallbackManager"

    const-string p1, "onSceneDetectionInfo - returned because capture is now in progress."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/common/manager/i;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/i;-><init>(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSceneDetectionMode(Z)V
    .locals 2

    const/4 v0, 0x7

    if-nez p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSceneDetectionMode - mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDetectionCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSceneDetectionMode(I)V

    :cond_1
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

.method public start()V
    .locals 2

    const-string v0, "SceneDetectionCallbackManager"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->enableEventCallbacks(Z)V

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->enableInfoCallback(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->setSceneDetectionMode(Z)V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "SceneDetectionCallbackManager"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->enableEventCallbacks(Z)V

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->enableInfoCallback(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->setSceneDetectionMode(Z)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mHandler:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventIndex:I

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneInfoIndex:I

    .line 9
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    .line 10
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    return-void
.end method

.method public updateDetectedScene()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventIndex:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneEvent:I

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventIndex:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneEventInformation:[J

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->onSceneDetectionEvent(I[J)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mSceneInfoIndex:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->mCurrentSceneInfo:I

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->handleSceneDetectionInfo()V

    :cond_1
    return-void
.end method
