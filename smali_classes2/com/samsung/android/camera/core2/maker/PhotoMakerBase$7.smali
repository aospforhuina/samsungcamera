.class Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;
.super Ljava/lang/Object;
.source "PhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->l(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic g(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->m(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->j(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic i(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->k(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method

.method private static synthetic j(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->setOverHeatHint(I)V

    return-void
.end method

.method private static synthetic k(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;->onPreviewRequestApplied(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic l(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;->onPreviewRequestError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic m(ILcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;->onPreviewRequestRemoved(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestRemoved - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/pf;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/maker/pf;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->z1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/rf;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/camera/core2/maker/rf;-><init>(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/BlockingReference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/BlockingReference;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->T1(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->H0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->h0:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iput-object v0, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->h0:Ljava/lang/Integer;

    .line 6
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/maker/sf;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/maker/sf;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "onPreviewCaptureResult : overHeatHint %d "

    invoke-static {v1, v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->D0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->V0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h2(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->g0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->Y1(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 14
    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->q0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLensSuggestionCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAdaptiveLensInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 18
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDepthInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 19
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 20
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendExposureTimeCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 21
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendSensorSensitivityCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 22
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLensInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 23
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 24
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendBrightnessValueCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 25
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendEvCompensationValueCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 26
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendFaceDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 27
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->z0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendPetDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 29
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->F()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLiveHdrStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 31
    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->N0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendSunDetectionInfo(Landroid/hardware/camera2/CaptureResult;)V

    .line 33
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->e0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 35
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->i1(Landroid/hardware/camera2/CaptureResult;)I

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->j1(Landroid/hardware/camera2/CaptureResult;)I

    move-result v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;II)V

    .line 36
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 37
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->m2()Z

    move-result v1

    if-nez v1, :cond_b

    .line 38
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 39
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAfInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendTouchAeStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 41
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->K()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 42
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDofMultiInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 43
    :cond_a
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->P0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 44
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 45
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendLightConditionCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 46
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendBurstShotFpsCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-static {v1, p2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->G2(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;Lcom/samsung/android/camera/core2/CamCapability;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 48
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendBokehInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 49
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendColorTemperatureCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 50
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendCompositionGuideInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 51
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->c1()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 53
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendZoomLockStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 54
    :cond_d
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->p0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 55
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendHandGestureDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 56
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendCameraRunningDebugInfo(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendActionShotResultCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 58
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->x0()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 59
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, p2, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object p2, p2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1, p2, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendObjectDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 60
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendTextDetectionInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewRequestApplied - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getPreviewStateCallback()Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camera/core2/maker/qf;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/camera/core2/maker/qf;-><init>(ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->S1(I)V

    return-void
.end method

.method public e(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->e0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->i1(Landroid/hardware/camera2/CaptureResult;)I

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->j1(Landroid/hardware/camera2/CaptureResult;)I

    move-result v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;II)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->m2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAeInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendAfInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->P0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2, v1, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendTouchAeStateCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamCapability;->K()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {p2, p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->sendDofMultiInfoCallback(Lcom/samsung/android/camera/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V

    :cond_2
    return-void
.end method
