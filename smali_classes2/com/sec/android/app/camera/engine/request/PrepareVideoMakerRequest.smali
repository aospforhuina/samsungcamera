.class Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "PrepareVideoMakerRequest.java"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    return-void
.end method

.method private createEffectProcessorIfNecessary(ILcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Lcom/sec/android/app/camera/interfaces/Capability;Landroid/util/Range;Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;",
            "Lcom/sec/android/app/camera/interfaces/Capability;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/Resolution;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->createEffectProcessor(ILandroid/os/Handler;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1, p3, p5}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingFpsRange(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p4

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getMultiCameraEffectProcessorMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getMultiCameraEffectProcessorMode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->createMultiCameraEffectProcessor(ILandroid/os/Handler;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0, p3, p5}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingFpsRange(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;

    move-result-object p1

    .line 8
    :cond_2
    invoke-virtual {p4, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setVideoFpsRange(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private createFunProcessorIfNecessary()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFunSurfaceTexture(Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->createFunProcessor()V

    :cond_0
    return-void
.end method

.method private getColorSpaceMode(Lcom/sec/android/app/camera/interfaces/Capability;)Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoColorSpaceModeDisplayP3Supported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;->DISPLAY_P3_VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;->SRGB:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;

    :goto_0
    return-object p0
.end method

.method private getExternalDeviceType()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;->SMART_VIEW:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;->NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;

    :goto_0
    return-object p0
.end method

.method private getRecordSurface(ILcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isPreviewRecordingRequired(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)Z

    move-result p2

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isCreateRecordingSessionRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->createRecordingSession(IZ)Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getDummyRecordingSurface(ILcom/sec/android/app/camera/interfaces/Resolution;)Landroid/view/Surface;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getRecordingDrMode()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->is3HdrRecordingEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR3:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object p0
.end method

.method private getRecordingExtraMode()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;->AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;->NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;

    :goto_0
    return-object p0
.end method

.method private getSnapshotPictureSize(ILcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1, p3}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p2

    const/16 p3, 0x65

    if-ne p2, p3, :cond_1

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getWideAngleResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p2, Lu3/b;->H3:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p2

    const/16 p3, 0x64

    if-ne p2, p3, :cond_2

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getTeleAngleResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    const/16 p2, 0x69

    if-ne p0, p2, :cond_3

    .line 9
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontWideAngleResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private getSurfaceData(I)Lcom/samsung/android/camera/core2/container/SurfaceData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/SurfaceDataFactory;->create(Landroid/view/Surface;)Lcom/samsung/android/camera/core2/container/SurfaceData;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/CameraId;->getMainCameraId(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isMultiCameraEffectProcessorActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/engine/request/SurfaceDataFactory;->create(Landroid/view/Surface;I)Lcom/samsung/android/camera/core2/container/SurfaceData;

    move-result-object v0

    .line 4
    :cond_0
    sget-object p1, Lu3/b;->n1:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isSupportAddPreviewSurface()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->isPreviewSurfaceCreated()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SurfaceData;->a()Landroid/view/Surface;

    move-result-object p0

    const/high16 p1, 0x42700000    # 60.0f

    invoke-virtual {p0, p1, v2}, Landroid/view/Surface;->setFrameRate(FI)V

    :cond_2
    return-object v0
.end method

.method private getVdisMode(ILcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isVdisEnabled(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isVideoFilterEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lu3/b;->H4:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_CENTER_CROP:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    :goto_1
    return-object p0

    .line 7
    :cond_3
    sget-object p1, Lu3/b;->I4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 8
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    goto :goto_2

    .line 9
    :cond_4
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_NORMAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    :goto_2
    return-object p0
.end method

.method private initializeMakerConnectionInfo(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->createFunProcessorIfNecessary()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v0

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;-><init>()V

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$MakerConnectionInfoFactory;->create(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v8

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v7

    .line 8
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v4

    invoke-interface {v4, v8, v7}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingFpsRange(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;

    move-result-object v6

    .line 9
    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getSnapshotPictureSize(ILcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    .line 10
    invoke-direct {p0, v1, v8, v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->setExtraPictureSizeIfNecessary(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)V

    .line 11
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->enableAutoFallBack(Z)V

    .line 12
    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isVideoBeautyFaceSupported(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->enableVideoBeautyFace(Z)V

    .line 13
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setAttachMode(Z)V

    .line 14
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getColorSpaceMode(Lcom/sec/android/app/camera/interfaces/Capability;)Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setColorSpaceMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;)V

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getExternalDeviceType()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setExternalDeviceType(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;)V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getRecordingDrMode()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecordingDrMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getRecordingExtraMode()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecordingExtraMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;)V

    .line 18
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setVideoFpsRange(II)V

    .line 19
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    move-result-object v3

    invoke-interface {v3, p1, v8, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;->onConnectMakerPrepared(ILcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V

    .line 20
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    .line 21
    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getVdisMode(ILcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setVdisMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;)V

    .line 22
    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isSuperVdisEnabled(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->enableSuperVdis(Z)V

    .line 23
    :cond_1
    invoke-direct {p0, p1, v1, v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getRecordSurface(ILcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecorderSurface(Landroid/view/Surface;)V

    move-object v2, p0

    move v3, p1

    move-object v4, v1

    move-object v5, v8

    .line 24
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->createEffectProcessorIfNecessary(ILcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Lcom/sec/android/app/camera/interfaces/Capability;Landroid/util/Range;Lcom/sec/android/app/camera/interfaces/Resolution;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getSurfaceData(I)Lcom/samsung/android/camera/core2/container/SurfaceData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPreviewSurfaceData(Lcom/samsung/android/camera/core2/container/SurfaceData;)V

    .line 26
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Capability;->isSensorCropSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 27
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;->CROP:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;->FULL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setSensorStreamType(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;)V

    .line 28
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->addConnectionInfo(ILcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V

    return-void
.end method

.method private isCreateRecordingSessionRequired(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 p1, 0x2a

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedToDisableVideoBeautyFace()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v2, Lu3/b;->D1:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lu3/b;->d0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBeautyLowPerformanceType()I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isPreviewRecordingRequired(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getMultiCameraEffectProcessorMode()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSuperVdisEnabled(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private isVdisEnabled(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private isVideoBeautyFaceSupported(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object v1, Lu3/b;->d0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lu3/b;->o0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getMaxFps()I

    move-result p2

    invoke-interface {v1, v2, p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoBeautyFaceSupported(Landroid/util/Size;I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->isNeedToDisableVideoBeautyFace()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private isVideoFilterEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

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

.method private setExtraPictureSizeIfNecessary(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isSecondPictureConfigSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackWideCameraMaxResolution(Lcom/sec/android/app/camera/interfaces/AspectRatio;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    .line 3
    sget-object v0, Lu3/h;->g:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isThirdPictureConfigSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackTeleCameraResolution(Lcom/sec/android/app/camera/interfaces/AspectRatio;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    .line 6
    sget-object p2, Lu3/h;->f:Lu3/h;

    invoke-static {p2}, Lu3/d;->b(Lu3/h;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setThirdPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    const-string v0, "PrepareVideoMakerRequest"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCameraSwitchingWhileRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/Request;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->clearRecordingSessions()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->initializeMakerConnectionInfo(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
