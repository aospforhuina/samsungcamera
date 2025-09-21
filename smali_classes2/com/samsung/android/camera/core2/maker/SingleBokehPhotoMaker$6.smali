.class Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;
.super Ljava/lang/Object;
.source "SingleBokehPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->q(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->t(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->o(Landroid/content/Context;Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->u(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[B)V

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->p(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Landroid/util/Size;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->v(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Landroid/util/Size;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I[[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->s(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I[[I)V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->r(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[Landroid/hardware/camera2/params/Face;)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->w(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    return-void
.end method

.method private synthetic o(Landroid/content/Context;Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p3, p2, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic p(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic q(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic r(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[Landroid/hardware/camera2/params/Face;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->K:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic s(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I[[I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->M:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->N:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic t(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/maker/nl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/camera/core2/maker/nl;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic u(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[B)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->O:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 2
    sget-object p2, Lcom/samsung/android/camera/core2/ExtraBundle;->P:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Y4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic v(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Landroid/util/Size;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->I:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic w(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "MultiPictureCallback onPictureSequenceCompleted - sequenceId %d, frameNumber %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

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

    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

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

    sget-object v5, Lcom/samsung/android/camera/core2/util/ImgFormat;->t:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v1, v5, :cond_1

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

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
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    throw p1

    .line 12
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureDepth - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureDepth"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/camera/core2/maker/gl;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/camera/core2/maker/gl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    .line 21
    invoke-static {p1, p2, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

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
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget v4, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    if-ne v1, v4, :cond_0

    .line 4
    iget-object v1, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s : getting onError sequenceId %d, frameNumber %d, requestIndex %d/%d, reason %d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    .line 7
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v2

    const/4 p2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, p2

    const/4 p2, 0x5

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, p2

    .line 8
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p2

    .line 10
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/camera/core2/maker/il;

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/camera/core2/maker/il;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "MultiPictureCallback onError - sequenceId is not equal with current sequence"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "MultiPictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b, requestIndex %d, requestListSize %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v5, 0x2

    aput-object p3, v2, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v6, 0x3

    aput-object p3, v2, v6

    .line 3
    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v1}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget v7, v2, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    if-ne v1, v7, :cond_f

    .line 7
    iget-object v1, v2, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_d

    .line 9
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 10
    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken fail - already sequence is done"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v3, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$10;->a:[I

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v4, :cond_b

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    .line 14
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    goto/16 :goto_1

    .line 15
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 16
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 17
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/util/Size;

    if-nez v0, :cond_3

    .line 18
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v6, "MultiPictureCallback onPictureTaken: Valid Image Region is null or invalid. so, it made by input picture size."

    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v0, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    :cond_3
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v6

    const-string v7, "MultiPictureCallback onPictureTaken: Picture Size=%s, Valid Image Region=%s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v3

    aput-object v0, v8, v4

    invoke-static {v6, v7, v8}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v2, v6, v0}, Landroid/util/Size;-><init>(II)V

    .line 23
    :goto_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v7, v6, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    int-to-float p4, p4

    int-to-float p5, p5

    div-float/2addr p4, p5

    const/high16 p5, 0x42c80000    # 100.0f

    mul-float/2addr p4, p5

    float-to-int p4, p4

    iget-object p5, v6, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v7, p4, p5}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->t(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 24
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 25
    :try_start_1
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->p5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Integer;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 26
    sget-object p4, Lcom/samsung/android/camera/core2/ExtraBundle;->W:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p4, p5}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 28
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->L:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-interface {v1, p3, p5}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 29
    :cond_5
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->J:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 30
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Z4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/hardware/camera2/params/Face;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/ml;

    invoke-direct {p4, v1}, Lcom/samsung/android/camera/core2/maker/ml;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 31
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/kl;

    invoke-direct {p4, p0, v1}, Lcom/samsung/android/camera/core2/maker/kl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 32
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->X4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[B

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/jl;

    invoke-direct {p4, p0, v1}, Lcom/samsung/android/camera/core2/maker/jl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 33
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[I

    move-result-object p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->b5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 34
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->R:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[I

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 35
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->S:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->b5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/graphics/Rect;

    move-result-object p4

    invoke-interface {v1, p3, p4}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    .line 36
    :cond_6
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/ll;

    invoke-direct {p4, v1}, Lcom/samsung/android/camera/core2/maker/ll;-><init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 37
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

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

    if-nez p3, :cond_9

    .line 38
    sget-object p3, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-interface {v1, p3, p1, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    if-nez p1, :cond_8

    .line 39
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 40
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result p1

    if-nez p1, :cond_7

    .line 41
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p3, p2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p2, p2, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p3, v3, p2}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 43
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    throw p1

    .line 46
    :cond_a
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 47
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureTaken"

    new-array p4, v5, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    .line 48
    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p5

    aput-object p5, p4, v3

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p3

    aput-object p3, p4, v4

    .line 49
    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-interface {v1, v3, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    new-instance p3, Lcom/samsung/android/camera/core2/maker/hl;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/camera/core2/maker/hl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 52
    :cond_b
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 53
    :try_start_3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p3

    sget-object p4, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-interface {v1, p4, p1, p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    throw p1

    .line 56
    :cond_c
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 57
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p2, "%s : maker was disconnected but getting image(format %s) from onPictureTaken"

    new-array p4, v5, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    .line 58
    invoke-virtual {p5}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p5

    aput-object p5, p4, v3

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p3

    aput-object p3, p4, v4

    .line 59
    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-interface {v1, v3, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    move-result-object p1

    .line 61
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->a:Landroid/content/Context;

    new-instance p3, Lcom/samsung/android/camera/core2/maker/fl;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/camera/core2/maker/fl;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 62
    :cond_d
    :goto_2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "MultiPictureCallback onPictureTaken fail - %s, ignore callback"

    new-array p2, v4, [Ljava/lang/Object;

    if-nez v1, :cond_e

    const-string p3, "sequence is null"

    goto :goto_3

    :cond_e
    const-string p3, "sequence got error"

    :goto_3
    aput-object p3, p2, v3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_f
    :try_start_4
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "MultiPictureCallback onPictureTaken fail - sequenceId is not equal with current sequence"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->b:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v3, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 65
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
