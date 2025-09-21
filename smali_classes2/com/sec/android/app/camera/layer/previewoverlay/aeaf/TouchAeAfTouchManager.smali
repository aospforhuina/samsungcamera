.class Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;
.super Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.source "TouchAeAfTouchManager.java"


# static fields
.field private static final NATURAL_BLUR_MANUAL_TRACKING_AREA_OFFSET:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TouchAeAfManager"


# instance fields
.field private mIsLongPressed:Z

.field private mLastTouchAeAfPoint:Landroid/graphics/Point;

.field private mPositionChangeListener:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    return-void
.end method

.method private resetAeAfLock()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$sec$android$app$camera$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->SET_AE_AF_UNLOCK:Lcom/sec/android/app/camera/logging/SaLogEventId;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getAfAe(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeLock()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeLock()V

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->SET_AE_AF_UNLOCK:Lcom/sec/android/app/camera/logging/SaLogEventId;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getAfAe(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAfLock()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAfLock()V

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->SET_AE_AF_UNLOCK:Lcom/sec/android/app/camera/logging/SaLogEventId;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getAfAe(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfLock()V

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfLock()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setNaturalBlurManualTrackingAf(Landroid/graphics/Point;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, v0}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setNaturalBlurManualTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V

    return-void
.end method

.method private setTouchAe(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "TouchAeAfManager"

    const-string/jumbo v1, "setTouchAe"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onTouchAePositionChanged(II)V

    const-string p0, "0130"

    .line 7
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method private setTouchAeAf(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "TouchAeAfManager"

    const-string/jumbo v1, "setTouchAeAf"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTouchAeAf(Landroid/graphics/Point;Landroid/util/Size;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onAeAfPositionChanged(II)V

    const-string p0, "0130"

    .line 7
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method private setTouchAf(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "TouchAeAfManager"

    const-string/jumbo v1, "setTouchAf"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onTouchAfPositionChanged(II)V

    const-string p0, "0130"

    .line 7
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLastTouchAeAfPoint()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method isAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTrackingAfAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onLongPressed(Landroid/graphics/Point;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    return v1

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->resetAeAfLock()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAeAf()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchEv()V

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouch(Landroid/graphics/Point;)V

    return v2

    .line 10
    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    :goto_0
    return v1
.end method

.method public onZoomVisibilityChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isTouchAeAfStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAeAf()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchEv()V

    :cond_2
    return-void
.end method

.method public setAeAfPositionChangeListener(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    return-void
.end method

.method setTouch(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "TouchAeAfManager"

    const-string/jumbo v1, "setTouch"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    if-nez v1, :cond_0

    const-string p0, "PositionChangeListener is null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAeRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAeRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BokehUtil;->isNaturalBlurAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setNaturalBlurManualTrackingAf(Landroid/graphics/Point;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouchAf(Landroid/graphics/Point;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouchAe(Landroid/graphics/Point;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouchAeAf(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method
