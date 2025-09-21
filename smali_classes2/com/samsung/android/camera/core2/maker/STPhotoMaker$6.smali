.class Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;
.super Ljava/lang/Object;
.source "STPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/STPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "MultiPictureCallback onPictureSequenceCompleted - sequenceId %d, frameNumber %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    move-result-object v4

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    move v5, p1

    move-wide v6, p2

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->l(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;IJLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;II)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onError - reason %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget v4, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    const/4 v6, 0x2

    if-eq v1, v4, :cond_0

    .line 4
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const-string p3, "MultiPictureCallback onError - sequenceId %d is not equal with current sequence %d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p2, p3, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    iget-object v1, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s : getting onError sequenceId %d, frameNumber %d, requestIndex %d/%d, reason %d"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    .line 9
    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v6

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v7, v2

    const/4 p2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v7, p2

    const/4 p2, 0x5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v7, p2

    .line 10
    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 12
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->a:Landroid/content/Context;

    invoke-interface {p3, p2, v0}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    move-result-object p3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, p3, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->k(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "MultiPictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b, requestIndex %d, requestListSize %d, picType %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v0, v4, v5

    .line 3
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v4, v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v4, v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/util/ImageInfo;->l()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v7

    const/4 v11, 0x4

    aput-object v7, v4, v11

    .line 4
    invoke-static {v2, v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    .line 7
    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    move-result-object v4

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v7

    .line 9
    iget-object v12, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v12, v12, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v12

    .line 10
    :try_start_0
    iget-object v13, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget v14, v13, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    if-eq v7, v14, :cond_0

    .line 11
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "MultiPictureCallback onPictureTaken - sequenceId %d is not equal with current sequence %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v6, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget v6, v6, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v4, v5, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->k(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 13
    monitor-exit v12

    return-void

    .line 14
    :cond_0
    iget-object v7, v13, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 15
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    sget-object v12, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v12}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-static {v12}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v12

    .line 17
    invoke-virtual {v12, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 18
    sget-object v13, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v13}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    .line 19
    invoke-virtual {v13, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 20
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v13

    const-string v14, "MultiPictureCallback onPictureTaken - frameNumber: %d, timeStamp: %d, dsHint: 0x%X, dsExtraInfo: 0x%X"

    new-array v11, v11, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v5

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v10

    .line 22
    invoke-static {v13, v14, v11}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    sget-object v3, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$9;->a:[I

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v3, v3, v10

    if-eq v3, v8, :cond_7

    if-eq v3, v9, :cond_1

    .line 24
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported format("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :cond_1
    invoke-static {v12, v6}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->l(II)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->c:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->l()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v3, v3, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    :try_start_1
    sget-object v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-object/from16 v3, p2

    invoke-interface {v7, v2, v0, v3}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object v0

    if-nez v0, :cond_4

    .line 28
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 29
    invoke-interface {v7}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result v0

    if-nez v0, :cond_3

    .line 30
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v4, v5, v2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->k(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 32
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->a:Landroid/content/Context;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    throw v0

    .line 35
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->g5(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/camera/core2/util/ImgFormat;)V

    goto :goto_1

    .line 36
    :cond_6
    :goto_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v5, v5, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v2, v4, v0, v3, v5}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->q(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 37
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->f5(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;)Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_2

    .line 39
    :cond_7
    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v3, v3, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 40
    :try_start_3
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v5, v5, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v2, v4, v0, v3, v5}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 41
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->f5(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;)Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$STFrameCountInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->h5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getSTPictureCallback()Lcom/samsung/android/camera/core2/callback/STPictureCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v3, v3, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/STPictureCallback;Lcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :cond_8
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    throw v0

    .line 45
    :cond_9
    iget-object v0, v1, Lcom/samsung/android/camera/core2/maker/STPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/STPhotoMaker;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/samsung/android/camera/core2/maker/STPhotoMaker;->g5(Lcom/samsung/android/camera/core2/maker/STPhotoMaker;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/camera/core2/util/ImgFormat;)V

    :cond_a
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    .line 46
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
