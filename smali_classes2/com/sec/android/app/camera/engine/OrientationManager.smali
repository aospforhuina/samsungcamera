.class Lcom/sec/android/app/camera/engine/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OrientationManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mLastOrientation:I

.field private mLastOrientationForCapture:I

.field private mLastOrientationFunCapture:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationFunCapture:I

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 6
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 7
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private setDeviceOrientation(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_ORIENTATION:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getOrientationForCapture()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    return p0
.end method

.method getOrientationFunCapture()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationFunCapture:I

    return p0
.end method

.method isCameraOrientationLandscape()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

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

.method public onCameraOrientationChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    if-eq v0, p1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OrientationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/OrientationManager;->setDeviceOrientation(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->updateDexCameraOrientation(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget p0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setDexOrientation(I)V

    :cond_2
    return-void
.end method

.method registerListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method unregisterListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method updateCurrentOrientation()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/OrientationManager;->setDeviceOrientation(I)V

    return-void
.end method

.method updateOrientationForCapture()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6
    sget-object v1, Lu3/h;->Q:Lu3/h;

    invoke-static {v1}, Lu3/d;->b(Lu3/h;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7
    iget v1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    goto :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    goto :goto_0

    .line 9
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_4

    .line 11
    iget v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientation:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationFunCapture:I

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOrientationForCapture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/engine/OrientationManager;->mLastOrientationForCapture:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OrientationManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
