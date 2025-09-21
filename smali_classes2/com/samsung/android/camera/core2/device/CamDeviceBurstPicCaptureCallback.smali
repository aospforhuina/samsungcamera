.class Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CamDeviceBurstPicCaptureCallback.java"


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

.field private final b:Lcom/samsung/android/camera/core2/CamCapability;

.field private final c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

.field private final e:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

.field private final f:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-string v0, "camDeviceImpl"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "pictureRequestInfo"

    .line 3
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "burstPictureCallback"

    .line 4
    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 8
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    .line 9
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->e:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o1()Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->f:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->u(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->s(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->x(I)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->n(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->q(J)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->t(Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->v(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->w(I)V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;JLcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->y(JLcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public static synthetic j(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->p(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->r(I)V

    return-void
.end method

.method public static synthetic l(JLcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->o(JLcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)Z

    move-result p0

    return p0
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n1()Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "discardFreeBuffers - requestOptions is null"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->g()Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/media/ImageReader;->discardFreeBuffers()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/samsung/android/camera/core2/device/j;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/camera/core2/device/j;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic n(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->p(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "discardFreeBuffers - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->g()Landroid/media/ImageReader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/ImageReader;->discardFreeBuffers()V

    :cond_0
    return-void
.end method

.method private static synthetic o(JLcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->f()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic p(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->n()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I0(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method private synthetic q(J)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "BurstPicCaptureCallback onCaptureBufferLost - can\'t find picture data with frameNumber %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic r(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->e:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;->c(I)V

    return-void
.end method

.method private synthetic s(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;->c(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method private synthetic t(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->e:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;->d(Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private synthetic u(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;->e(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method private synthetic v(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;->e(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method private synthetic w(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->e:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;->a(I)V

    return-void
.end method

.method private synthetic x(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->e:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;->a(I)V

    return-void
.end method

.method private synthetic y(JLcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual {p3, p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->p(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;J)Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v0, v3

    const-string p1, "BurstPicCaptureCallback onCaptureBufferLost - session %s, target %s, frameNumber %d"

    .line 3
    invoke-static {p2, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual {p1, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;->f(Landroid/view/Surface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p1, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "BurstPicCaptureCallback onCaptureBufferLost - target %s is one of repeating surfaces"

    .line 7
    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/util/CLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P1()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/d;

    invoke-direct {p2, p4, p5}, Lcom/samsung/android/camera/core2/device/d;-><init>(J)V

    .line 9
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/k;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/device/k;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;)V

    new-instance p3, Lcom/samsung/android/camera/core2/device/h;

    invoke-direct {p3, p0, p4, p5}, Lcom/samsung/android/camera/core2/device/h;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;J)V

    .line 10
    invoke-static {p1, p2, p3}, Lcom/samsung/android/camera/core2/device/a;->a(Ljava/util/Optional;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 3
    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v1, v3

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v1, v3

    const-string p1, "BurstPicCaptureCallback onCaptureCompleted - session %s, request %s, timestamp %s, sequenceId %d, frameNumber %d"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-boolean p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->g:Z

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I1()Landroid/os/Handler;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    if-eqz p1, :cond_0

    .line 8
    new-instance v1, Lcom/samsung/android/camera/core2/device/g;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/camera/core2/device/g;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "BurstPicCaptureCallback onCaptureCompleted - can\'t post BurstPictureCallback onBurstRequestApplied"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    :cond_1
    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->g:Z

    .line 11
    :cond_2
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P1()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    if-eqz v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->o(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n2(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "BurstPicCaptureCallback onCaptureCompleted - pictureData is null for timeStamp %d"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "BurstPicCaptureCallback onCaptureCompleted - timestamp is null"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->f:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/c;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/camera/core2/device/c;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const-string p1, "BurstPicCaptureCallback onCaptureFailed - session %s, request %s, sequenceId %d, frameNumber %d, reason %d"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I1()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance p2, Lcom/samsung/android/camera/core2/device/i;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/camera/core2/device/i;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "BurstPicCaptureCallback onCaptureFailed - can\'t post BurstPictureCallback onBurstRequestError"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->G0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->f:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/m;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/camera/core2/device/m;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->c1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->f:Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/b;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/camera/core2/device/b;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "BurstPicCaptureCallback onCaptureSequenceAborted - session %s, sequenceId %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->a:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I1()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/device/f;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/camera/core2/device/f;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "BurstPicCaptureCallback onCaptureSequenceAborted - can\'t post BurstPictureCallback onBurstRequestRemoved"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "BurstPicCaptureCallback onCaptureSequenceCompleted - session %s, sequenceId %d, frameNumber %d"

    .line 3
    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object p3, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->a:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {p1, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->I1()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p3, Lcom/samsung/android/camera/core2/device/e;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/camera/core2/device/e;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "BurstPicCaptureCallback onCaptureSequenceCompleted - can\'t post BurstPictureCallback onBurstRequestRemoved"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-object p1, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->m:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->h(Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->m()V

    :cond_2
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "BurstPicCaptureCallback onCaptureStarted - session %s, request %s, timestamp %d, frameNumber %d"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P1()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance v6, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    move-object v0, v6

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;JJ)V

    .line 7
    invoke-interface {p1, p2, v6}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    .line 8
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/l;

    invoke-direct {p2, p0, p5, p6}, Lcom/samsung/android/camera/core2/device/l;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;J)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
