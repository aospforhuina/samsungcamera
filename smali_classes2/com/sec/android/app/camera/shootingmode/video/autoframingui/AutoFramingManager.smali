.class public Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;
.super Ljava/lang/Object;
.source "AutoFramingManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$AutoFramingInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoFramingManager"


# instance fields
.field private mAutoFramingEventListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCropRegion:Landroid/graphics/Rect;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCropRegion:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 5
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-void
.end method


# virtual methods
.method enableAutoFramingInfoCallback(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableAutoFramingInfoCallback(Z)V

    return-void
.end method

.method public onAutoFramingInfoChanged(I[Landroid/graphics/Rect;[ILandroid/graphics/Rect;)V
    .locals 3

    const/4 p3, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mAutoFramingEventListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;->onAutoFramingTrackingLost()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_5

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-ne p1, p3, :cond_4

    move p3, v0

    goto :goto_2

    .line 2
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mAutoFramingEventListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;->onAutoFramingTrackingLost()V

    :cond_4
    :goto_1
    move p3, v1

    .line 3
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mAutoFramingEventListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;

    invoke-interface {p1, p3, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;->onAutoFramingInfoChanged(I[Landroid/graphics/Rect;)V

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method resetManualTrackingRegion()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->resetAutoFramingManualTrackingRegion()V

    return-void
.end method

.method setAutoFramingEventListener(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mAutoFramingEventListener:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;

    return-void
.end method

.method setManualTrackingRegion(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCropRegion:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setAutoFramingManualTrackingRegion(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method start()V
    .locals 2

    const-string v0, "AutoFramingManager"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->registerAutoFramingInfoCallback(Lcom/sec/android/app/camera/interfaces/CallbackManager$AutoFramingInfoListener;)V

    .line 3
    sget-object v0, Lu3/b;->N4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->enableAutoFramingInfoCallback(Z)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->resetAutoFramingManualTrackingRegion()V

    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "AutoFramingManager"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->unregisterAutoFramingInfoCallback(Lcom/sec/android/app/camera/interfaces/CallbackManager$AutoFramingInfoListener;)V

    .line 3
    sget-object v0, Lu3/b;->N4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->enableAutoFramingInfoCallback(Z)V

    :cond_0
    return-void
.end method
