.class Lcom/sec/android/app/camera/engine/request/SwitchMultiCameraFacingRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "SwitchMultiCameraFacingRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private updateZoomValue()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getZoomValueByMultiRecordingLensType(I)I

    move-result v3

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCropAngleZoomValue()I

    move-result v3

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getZoomValueByMultiRecordingLensType(I)I

    move-result v3

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, p0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->switchMultiCameraFacingInternal()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/SwitchMultiCameraFacingRequest;->updateZoomValue()V

    return-void
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

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

.method isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

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
