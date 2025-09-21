.class public interface abstract Lcom/sec/android/app/camera/interfaces/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# virtual methods
.method public abstract dumpCapability()V
.end method

.method public abstract getAvailableDualBokehFpsRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableEffectPreviewFpsRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableEffectRecordingFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableJpegPictureSizes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableLensApertures()[F
.end method

.method public abstract getAvailablePreviewSizes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableThumbnailSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I
.end method

.method public abstract getHorizontalViewAngle(F)F
.end method

.method public abstract getLensFacing()I
.end method

.method public abstract getLensInfoAvailableFocalLengths()[F
.end method

.method public abstract getLensInfoMinimumFocalDistance()F
.end method

.method public abstract getMaxLensPosition()I
.end method

.method public abstract getMinLensPosition()I
.end method

.method public abstract getRecodingFpsRange(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/Resolution;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecordingTimeLimit(Landroid/util/Size;I)I
.end method

.method public abstract getSamsungFeatureChsDisablePreviewCb()Z
.end method

.method public abstract getScalerAvailableMaxDigitalZoom(I)F
.end method

.method public abstract getScalerAvailableMinDigitalZoom(I)F
.end method

.method public abstract getSensorInfoActiveArraySize()Landroid/graphics/Rect;
.end method

.method public abstract getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;
.end method

.method public abstract getSensorInfoExposureTimeRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorInfoPhysicalSize()Landroid/util/SizeF;
.end method

.method public abstract getSensorInfoSensitivityRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract getSuperSlowMotionImageCount(Landroid/util/Size;)I
.end method

.method public abstract getSuperSlowMotionQFrcFps()I
.end method

.method public abstract getVerticalViewAngle(F)F
.end method

.method public abstract getWbLevelRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getZoomMapRatio()F
.end method

.method public abstract isActionShotSupported()Z
.end method

.method public abstract isAeAfLockSupported()Z
.end method

.method public abstract isAfSupported()Z
.end method

.method public abstract isAutoFramingSupported()Z
.end method

.method public abstract isBeautyFaceSupported()Z
.end method

.method public abstract isBokehLightingSupported()Z
.end method

.method public abstract isBokehNightSupported()Z
.end method

.method public abstract isBokehSpecialEffectSupported()Z
.end method

.method public abstract isBokehSupported()Z
.end method

.method public abstract isCafSupported()Z
.end method

.method public abstract isColorSpaceModeDisplayP3Supported()Z
.end method

.method public abstract isCompositionGuideSupported()Z
.end method

.method public abstract isDepthSupported()Z
.end method

.method public abstract isDynamicFovSupported()Z
.end method

.method public abstract isDynamicShotInfoSupported()Z
.end method

.method public abstract isEventFinderSupported()Z
.end method

.method public abstract isFaceDetectionFullModeSupported()Z
.end method

.method public abstract isFaceDetectionSupported()Z
.end method

.method public abstract isFilterRecordingUsingVideoMakerSupported()Z
.end method

.method public abstract isFocusEnhancerSupported()Z
.end method

.method public abstract isFrontPhotoNightModeSupported()Z
.end method

.method public abstract isFusionHighResolutionSupported(Landroid/util/Size;)Z
.end method

.method public abstract isHdr10RecordingAvailable()Z
.end method

.method public abstract isHyperlapseTrailModeSupported(I)Z
.end method

.method public abstract isLensDistortionCorrectionSupported()Z
.end method

.method public abstract isLiveHdrSupported()Z
.end method

.method public abstract isMultiAfSupported()Z
.end method

.method public abstract isNightScreenFlashSupported()Z
.end method

.method public abstract isObjectDetectorSupported()Z
.end method

.method public abstract isPetDetectionSupported()Z
.end method

.method public abstract isPhaseAfSupported()Z
.end method

.method public abstract isPhotoPalmGestureDetectionSupported()Z
.end method

.method public abstract isRecordingStopTriggerRequired()Z
.end method

.method public abstract isRemovingRecordSurfaceWhileSsmFrcSupported()Z
.end method

.method public abstract isRequestPartialResultSupported()Z
.end method

.method public abstract isSceneOptimizerSupported()Z
.end method

.method public abstract isSecondPictureConfigSupported()Z
.end method

.method public abstract isSelfieToneModeSupported()Z
.end method

.method public abstract isSensorCropSupported()Z
.end method

.method public abstract isSmoothZoomSupported()Z
.end method

.method public abstract isSubPreviewCallbackSupported()Z
.end method

.method public abstract isSuperSlowMotionGmcSupported()Z
.end method

.method public abstract isSuperSlowMotionQFrcSupported()Z
.end method

.method public abstract isSuperSlowMotionSupported()Z
.end method

.method public abstract isSyncCancelSuperSlowMotionAutoDetectSupported()Z
.end method

.method public abstract isThirdPictureConfigSupported()Z
.end method

.method public abstract isTouchAeSupported()Z
.end method

.method public abstract isTouchAfSupported()Z
.end method

.method public abstract isVariableLensApertureSupported()Z
.end method

.method public abstract isVideoBeautyFaceSupported(Landroid/util/Size;I)Z
.end method

.method public abstract isVideoBeautySnapshotSupported()Z
.end method

.method public abstract isVideoBokehEffectSupported()Z
.end method

.method public abstract isVideoColorSpaceModeDisplayP3Supported()Z
.end method

.method public abstract isVideoPalmGestureDetectionSupported()Z
.end method

.method public abstract isVideoResolutionSupported(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
.end method

.method public abstract isZoomLockSupported()Z
.end method

.method public abstract isZslCaptureSupported()Z
.end method
