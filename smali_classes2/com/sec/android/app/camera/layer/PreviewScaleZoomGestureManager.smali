.class Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;
.super Ljava/lang/Object;
.source "PreviewScaleZoomGestureManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentCalculatedValue:I

.field private mDistancePerStep:F

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsConsumeTouchEvent:Z

.field private mIsSpanThresholdExceed:Z

.field private mIsStarted:Z

.field private mLayerScaleZoomEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;

.field private mPreviousCalculatedValue:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mSpanThreshold:F

.field private mStartSpan:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mStartSpan:F

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mDistancePerStep:F

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 8
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 9
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mSpanThreshold:F

    return-void
.end method

.method private getZoomValue(F)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mStartSpan:F

    sub-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    iget v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mDistancePerStep:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getZoomType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result p1

    float-to-double v0, p1

    iget p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getTotalZoomLevel()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 4
    sget-object v0, Lu3/b;->L1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x3e8

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result p1

    goto :goto_3

    :cond_1
    if-le p1, v3, :cond_6

    :goto_1
    move p1, v3

    goto :goto_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result p1

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result p1

    .line 11
    :cond_4
    :goto_2
    sget-object v0, Lu3/b;->H3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    if-le p1, v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    return p1
.end method

.method private handleStartZoom(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getZoomType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->logN(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getTotalZoomLevel()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mStartSpan:F

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float p1, p1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getTotalZoomLevel()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mDistancePerStep:F

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->startTransientZooming()V

    return-void
.end method

.method private handleStopZoom()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopTransientZooming(Z)V

    return-void
.end method

.method private showZoomRestrictionToast()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1205d3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->getMegaPixelSize(Lcom/sec/android/app/camera/interfaces/Resolution;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->showZoomNotSupportedToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f120424

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f1205d2

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    return p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 6
    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    return p0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsSpanThresholdExceed:Z

    if-nez p1, :cond_2

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mStartSpan:F

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mSpanThreshold:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    return v0

    .line 4
    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsSpanThresholdExceed:Z

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mStartSpan:F

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->getZoomValue(F)I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;

    if-eqz p0, :cond_3

    .line 9
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;->onScale(I)V

    :cond_3
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomSupported()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->showZoomRestrictionToast()V

    .line 4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    return v1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    return v0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;->onScaleBegin()V

    .line 9
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->handleStartZoom(F)V

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsSpanThresholdExceed:Z

    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->handleStopZoom()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;->onScaleEnd()V

    .line 5
    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    iget p0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    if-le p1, p0, :cond_2

    const-string p0, "0004"

    .line 6
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "0003"

    .line 7
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLayerScaleZoomEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    return-void
.end method
