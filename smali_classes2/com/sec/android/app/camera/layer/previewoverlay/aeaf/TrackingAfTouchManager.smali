.class Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;
.super Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.source "TrackingAfTouchManager.java"


# static fields
.field private static final OBJECT_TRACKING_AREA_OFFSET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrackingAfManager"


# instance fields
.field private final mFocusSize:Landroid/util/Size;

.field private mIsLongPressed:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    const/4 p1, 0x2

    .line 2
    invoke-static {p1, p1}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mFocusSize:Landroid/util/Size;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    return-void
.end method

.method private setTrackingAf(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "TrackingAfManager"

    const-string/jumbo v1, "setTrackingAf"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V

    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTrackingAfAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLongPressed(Landroid/graphics/Point;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    goto :goto_0

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    if-eqz v0, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    return v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isLockState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfLock()V

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTrackingAf()V

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TrackingAfTouchManager;->setTrackingAf(Landroid/graphics/Point;)V

    :goto_0
    return v1
.end method

.method public onZoomVisibilityChanged()V
    .locals 0

    return-void
.end method

.method public setAeAfPositionChangeListener(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V
    .locals 0

    return-void
.end method
