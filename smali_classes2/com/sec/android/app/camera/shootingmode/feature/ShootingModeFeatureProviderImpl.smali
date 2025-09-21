.class public Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeFeatureProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeFeatureProvider"


# instance fields
.field private mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mCurrentShootingModeId:I

.field private mShootingModeFeatureList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModeFeatureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$1;-><init>(Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureMap:Ljava/util/HashMap;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    return-void
.end method

.method private clearInactiveShootingModeFeature()V
    .locals 5

    const-string v0, "ShootingModeFeatureProvider"

    const-string v1, "clearInactiveShootingModeFeature"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p0

    return p0
.end method

.method public getMediaRecorderProfile(I)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getMediaRecorderProfile(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewTopGuideLine()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getPreviewTopGuideLine()F

    move-result p0

    return p0
.end method

.method public getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedNightType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedNightType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedNightType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedNightType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedTouchEvType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedTouchEvType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedZoomType()I

    move-result p0

    return p0
.end method

.method public isAeAfLockSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAfLockSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAeAwbLockRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result p0

    return p0
.end method

.method public isAeLockRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result p0

    return p0
.end method

.method public isAgifBurstCaptureSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAgifBurstCaptureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAudioInputControlSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result p0

    return p0
.end method

.method public isBeautyFaceSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result p0

    return p0
.end method

.method public isBurstCaptureSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBurstCaptureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isCleanHdmiSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isCleanHdmiSupported()Z

    move-result p0

    return p0
.end method

.method public isDivideAeAfSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isEffectSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFloatingShutterButtonSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingShutterButtonSupported()Z

    move-result p0

    return p0
.end method

.method public isFocusGuideSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFocusGuideSupported()Z

    move-result p0

    return p0
.end method

.method public isHdr10RecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHdr10RecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isHighResolutionSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHighResolutionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isHistogramSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHistogramSupported(I)Z

    move-result p0

    return p0
.end method

.method public isInclinometerSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isInclinometerSupported()Z

    move-result p0

    return p0
.end method

.method public isLevelMeterSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLevelMeterSupported()Z

    move-result p0

    return p0
.end method

.method public isLiveHdrSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result p0

    return p0
.end method

.method public isLowLightDetectionSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isMotionPhotoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result p0

    return p0
.end method

.method public isPalmDetectionSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isPalmDetectionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isQuickTakeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isQuickTakeSupported()Z

    move-result p0

    return p0
.end method

.method public isRecordingMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    return p0
.end method

.method public isRecordingSnapshotSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result p0

    return p0
.end method

.method public isRecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isSingleAfRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleAfRequired(I)Z

    move-result p0

    return p0
.end method

.method public isSingleTakePictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSwitchFacingWhileRecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result p0

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPostProcessingPictureSupported()Z

    move-result p0

    return p0
.end method

.method public isTeleLensSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTeleLensSupported()Z

    move-result p0

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isTrackingAfSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTrackingAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isVideoAutoFramingSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isVideoAutoFramingSupported(I)Z

    move-result p0

    return p0
.end method

.method public isWatchSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatchSupported()Z

    move-result p0

    return p0
.end method

.method public isZoomBarSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomBarSupported(I)Z

    move-result p0

    return p0
.end method

.method public isZoomInMicSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result p0

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result p0

    return p0
.end method

.method public onLowMemory(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public setShootingMode(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    if-eq v0, p1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShootingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeFeatureProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;->build()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    :cond_1
    return-void
.end method
