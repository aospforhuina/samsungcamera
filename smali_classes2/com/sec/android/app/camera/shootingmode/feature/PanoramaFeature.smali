.class Lcom/sec/android/app/camera/shootingmode/feature/PanoramaFeature;
.super Ljava/lang/Object;
.source "PanoramaFeature.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;II)I

    move-result p0

    return p0
.end method

.method public getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    sget-object p0, Lu3/i;->W0:Lu3/i;

    invoke-static {p0}, Lu3/d;->d(Lu3/i;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getPreviewSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedTouchEvType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;->NOT_SUPPORTED:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedTouchEvType;

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public isAeAwbLockRequired(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lu3/b;->r0:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lu3/b;->M2:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCleanHdmiSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFloatingShutterButtonSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/feature/PanoramaFeature;->isAngleChangeSupported(I)Z

    move-result p0

    return p0
.end method
