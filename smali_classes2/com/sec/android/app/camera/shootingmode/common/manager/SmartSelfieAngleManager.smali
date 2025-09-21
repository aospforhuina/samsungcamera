.class public Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;
.super Ljava/lang/Object;
.source "SmartSelfieAngleManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$MainHandler;,
        Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_SHOW_ANGLE_RECOMMEND:I = 0x7d0

.field private static final FACE_COUNT_TO_RECOMMEND_FRONT_ANGLE:I = 0x1

.field private static final MESSAGE_REQUEST_AUTO_ANGLE_CHANGE:I = 0x1

.field private static final MIN_CONSECUTIVE_FRAME_COUNT_TO_CHANGE_FRONT_ANGLE:I = 0xa

.field private static final MIN_FACE_COUNT_TO_CHANGE_FRONT_ANGLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SmartSelfieAngleManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mFrameCountToChangeFrontAngle:I

.field private final mHandler:Landroid/os/Handler;

.field private mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;Lcom/sec/android/app/camera/shootingmode/common/manager/l;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mHandler:Landroid/os/Handler;

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;->IDLE:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mFrameCountToChangeFrontAngle:I

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    return-void
.end method

.method private isFrontAngleChangeAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isHighResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method


# virtual methods
.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 0

    .line 1
    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-ne p1, p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->isFrontAngleChangeAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;->AUTO_CHANGE_AVAILABLE:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;->IDLE:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    :cond_1
    :goto_0
    return-void
.end method

.method public onFaceDetection(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;->AUTO_CHANGE_AVAILABLE:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mFrameCountToChangeFrontAngle:I

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    add-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mFrameCountToChangeFrontAngle:I

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mFrameCountToChangeFrontAngle:I

    goto :goto_0

    .line 8
    :cond_1
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mFrameCountToChangeFrontAngle:I

    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;->IDLE:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mSmartAngleState:Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager$SmartAngleState;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/SmartSelfieAngleManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
