.class Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;
.super Ljava/lang/Object;
.source "ProcessingPhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->j(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->m(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->k(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->l(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method private synthetic j(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p5, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p4}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, p3, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method private synthetic k(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic l(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic m(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    if-nez v2, :cond_0

    .line 2
    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "onShutter error - CamDevice is already closed"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v3, v3, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    move-object/from16 v4, p1

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 4
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-boolean v3, v1, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p1:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->q1:Z

    if-eqz v3, :cond_4

    .line 5
    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v5, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, v3, Lcom/samsung/android/camera/core2/maker/MakerBase;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v3, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 9
    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v6, "onShutter error - can\'t get jpeg orientation"

    invoke-static {v1, v6}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    :cond_1
    iget-object v6, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v6, v6, Lcom/samsung/android/camera/core2/maker/MakerBase;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->I0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    const/high16 v8, -0x80000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    xor-int/2addr v6, v8

    const/4 v9, 0x1

    if-nez v6, :cond_2

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 16
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    .line 17
    invoke-static/range {p1 .. p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    div-long/2addr v14, v10

    cmp-long v4, v14, v12

    if-lez v4, :cond_3

    sub-long v12, v14, v6

    :cond_3
    move-wide/from16 v18, v12

    .line 18
    iget-object v4, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v10, "onShutter : halTimeStamp: %d(ms), timeStampOffset: %d(ms), timestamp for motion photo: %d(ms)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 19
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v8

    .line 20
    invoke-static {v4, v10, v11}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/location/Location;

    .line 22
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v16

    invoke-interface {v5}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface/range {v16 .. v21}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->prepareMotionPhotoPPP(IJILandroid/location/Location;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onPictureDepth - depthData : %s, format : %s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget v7, v5, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    if-ne v3, v7, :cond_2

    .line 5
    iget-object v3, v5, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    sget-object v5, Lcom/samsung/android/camera/core2/util/ImgFormat;->d:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v1, v5, :cond_1

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->m1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/BasketCollector;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p4(Lcom/samsung/android/camera/core2/util/BasketCollector;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    throw p1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureDepth - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureDepth"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    aput-object v0, v1, v6

    .line 15
    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {v3, v4, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/camera/core2/maker/rh;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/camera/core2/maker/rh;-><init>(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported format("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 19
    :cond_2
    :try_start_2
    invoke-static {v5}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureDepth - sequenceId %d is not equal with current sequence %d"

    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    .line 21
    invoke-static {p1, p2, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v4, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 23
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;II)V
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "MultiPictureCallback onError - reason %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget v5, v4, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    const/4 v7, 0x2

    if-ne v2, v5, :cond_0

    .line 4
    iget-object v5, v4, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v6, v4, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p1:Z

    .line 7
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s : getting onError sequenceId %d, frameNumber %d, requestIndex %d/%d, reason %d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    .line 8
    invoke-virtual {v9}, Lcom/samsung/android/camera/core2/maker/MakerBase;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v7

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    const/4 v3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    .line 9
    invoke-static {v2, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {v5, v1, v2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/camera/core2/maker/th;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v5

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/maker/th;-><init>(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;ILandroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 12
    :cond_0
    :try_start_1
    iput-boolean v6, v4, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p1:Z

    .line 13
    invoke-static {v4}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    const-string v4, "MultiPictureCallback onError - sequenceId %d is not equal with current sequence %d"

    new-array v5, v7, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    .line 15
    invoke-static {v2, v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b, requestIndex %d, requestListSize %d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v5, 0x1

    aput-object p3, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v3, p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x3

    aput-object p3, v3, p5

    .line 3
    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v1}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget v6, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    if-ne v1, v6, :cond_9

    .line 7
    iget-object v1, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$7;->a:[I

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v5, :cond_5

    if-eq v0, p4, :cond_0

    if-eq v0, p5, :cond_0

    if-eq v0, v2, :cond_0

    const/4 p5, 0x5

    if-eq v0, p5, :cond_0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unsupported format("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object p5, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p5, p5, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 12
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p3

    const-string p5, "MultiPictureCallback onPictureTaken - CurrentProcessCount=%d, TotalProcessCount=%d"

    new-array p4, p4, [Ljava/lang/Object;

    .line 13
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getCurrentProcessCount()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v4

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getTotalProcessCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v5

    .line 14
    invoke-static {p3, p5, p4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    .line 16
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getCurrentProcessCount()I

    move-result p5

    add-int/2addr p5, v5

    int-to-float p5, p5

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getTotalProcessCount()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p5, v0

    float-to-int p5, p5

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    .line 17
    invoke-static {p3, p4, p5, v0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->t(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 18
    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p4, p3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->m1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/camera/core2/util/BasketCollector;

    invoke-virtual {p3, p4, v1, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p4(Lcom/samsung/android/camera/core2/util/BasketCollector;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 19
    sget-object p3, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-interface {v1, p3, p1, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result p1

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p3, p2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p2, p2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p3, v4, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 24
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    throw p1

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 28
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureTaken"

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    .line 29
    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/maker/MakerBase;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p3

    aput-object p3, p4, v5

    .line 30
    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-interface {v1, v4, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    .line 32
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    new-instance p3, Lcom/samsung/android/camera/core2/maker/qh;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/camera/core2/maker/qh;-><init>(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 33
    :cond_5
    iget-object p5, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p5, p5, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p5

    if-eqz p5, :cond_8

    .line 34
    :try_start_3
    sget-object p3, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-interface {v1, p3, p1, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    if-nez p1, :cond_7

    .line 35
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 36
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result p1

    if-nez p1, :cond_6

    .line 37
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p3, p2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p2, p2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p3, v4, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 39
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    throw p1

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 43
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureTaken"

    new-array p4, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    .line 44
    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/maker/MakerBase;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p3

    aput-object p3, p4, v5

    .line 45
    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-interface {v1, v4, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->a:Landroid/content/Context;

    new-instance p3, Lcom/samsung/android/camera/core2/maker/sh;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/camera/core2/maker/sh;-><init>(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 48
    :cond_9
    :try_start_5
    invoke-static {v3}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - sequenceId %d is not equal with current sequence %d"

    new-array p4, p4, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p5, p3

    check-cast p5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v4

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget p3, p3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v5

    .line 50
    invoke-static {p1, p2, p4}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->V3(Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase$6;->b:Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v4, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 52
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method
