.class public Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;
.super Ljava/lang/Object;
.source "ZoomMapManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomLockStateListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$TouchAeAfEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;
    }
.end annotation


# instance fields
.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Z

.field private mIsZoomLockEnabled:Z

.field private mIsZoomLockRequested:Z

.field private mZoomLockState:I

.field private mZoomMapEventListener:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsActivated:Z

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockEnabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockRequested:Z

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomLockState:I

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->lambda$onPreviewFrame$0(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->lambda$onPreviewFrame$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$onPreviewFrame$0(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;->onPreviewThumbnailPrepared(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onPreviewFrame$1(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomMapEventListener:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/b;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/b;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method enableZoomMapPreviewCallback(ZLandroid/util/Size;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableZoomMapViewPreviewCallback(ZLandroid/util/Size;)V

    return-void
.end method

.method public isActivated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsActivated:Z

    return p0
.end method

.method public isColorSpaceModeDisplayP3Supported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isColorSpaceModeDisplayP3Supported()Z

    move-result p0

    return p0
.end method

.method public isZoomLockEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockEnabled:Z

    return p0
.end method

.method isZoomLockSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isZoomLockSupported()Z

    move-result p0

    return p0
.end method

.method public onPreviewFrame(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/a;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/a;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchAfFocused()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->startZoomLock()V

    return-void
.end method

.method public onZoomLockStateChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomLockState:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomMapEventListener:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;->onZoomLockStateChanged(Z)V

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomLockState:I

    if-ne p1, v2, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockRequested:Z

    const-string v0, "0240"

    if-eqz p1, :cond_1

    const-string p1, "1"

    .line 5
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockRequested:Z

    goto :goto_1

    :cond_1
    const-string p0, "2"

    .line 7
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "0250"

    .line 8
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setZoomMapEventListener(Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomMapEventListener:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsActivated:Z

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getZoomMapRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomMapEventListener:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getZoomMapRatio()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager$ZoomMapEventListener;->onCentreGuideRectScaleChanged(F)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setZoomMapViewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->isZoomLockSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setZoomLockStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomLockStateListener;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableZoomLockStateCallback(Z)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TouchAeAfEventListener;)V

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockEnabled:Z

    :cond_1
    return-void
.end method

.method startZoomLock()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startZoomLock()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockRequested:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setZoomMapViewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableZoomLockStateCallback(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setZoomLockStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomLockStateListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TouchAeAfEventListener;)V

    .line 6
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsZoomLockEnabled:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mIsActivated:Z

    return-void
.end method

.method public updateSALogForPictureTaken(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/logging/SaLogEventKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventKey;->BACK_CAMERA_CAPTURE_ZOOM_LOCK:Lcom/sec/android/app/camera/logging/SaLogEventKey;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapManager;->mZoomLockState:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
