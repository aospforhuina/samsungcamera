.class Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;
.super Ljava/lang/Object;
.source "VideoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/VideoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->i(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic g(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->k(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic h(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->j(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method

.method private static synthetic i(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;->onPreviewRequestApplied(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic j(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;->onPreviewRequestError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic k(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;->onPreviewRequestRemoved(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestRemoved - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/oo;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/maker/oo;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->z1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestError - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/po;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/maker/po;-><init>(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->F0:Lcom/samsung/android/camera/core2/util/BlockingReference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/BlockingReference;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->T1(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->D0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->V0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h2(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->g0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->Y1(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 9
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->m2()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAfInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 13
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendTouchAeStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 14
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->K()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDofMultiInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAdaptiveLensInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->W()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAutoFramingInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDepthInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 20
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 21
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendExposureTimeCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 22
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendSensorSensitivityCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 23
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLensInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 24
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 25
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendMultiViewInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 26
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendBrightnessValueCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 27
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendEvCompensationValueCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 28
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendFaceDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 29
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 30
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->F()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLiveHdrStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 32
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->i1(Landroid/hardware/camera2/CaptureResult;)I

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->j1(Landroid/hardware/camera2/CaptureResult;)I

    move-result v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;II)V

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLightConditionCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 36
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendHyperlapseInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 37
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->L2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;Lcom/samsung/android/camera/core2/CamCapability;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendBokehInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 39
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendColorTemperatureCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendCompositionGuideInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 41
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 42
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->c1()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 43
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendZoomLockStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 44
    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->p0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 45
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendHandGestureDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 46
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendCameraRunningDebugInfo(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->s0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 48
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendNaturalBlurInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 49
    :cond_a
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->U()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendActionShotResultCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 51
    :cond_b
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->j0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 52
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendEventFinderResultCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 53
    :cond_c
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->z0()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 54
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendPetDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_d
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestApplied - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camera/core2/maker/no;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/camera/core2/maker/no;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->S1(I)V

    return-void
.end method

.method public e(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->m2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAfInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendTouchAeStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->K()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$4;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDofMultiInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method
