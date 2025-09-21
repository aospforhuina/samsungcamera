.class Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;
.super Ljava/lang/Object;
.source "CamDeviceSendPictureRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final b:Lcom/samsung/android/camera/core2/CamCapability;

.field private final c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

.field private final d:Z

.field private final f:I

.field private final g:I

.field private k:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->b:Lcom/samsung/android/camera/core2/CamCapability;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    .line 5
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->d()Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/device/v2;

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/device/v2;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;)V

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->k()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->d:Z

    .line 8
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->h()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->f:I

    .line 9
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->j()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->b(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;)V

    return-void
.end method

.method private synthetic b(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->k()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->h()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->m()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->k:Ljava/lang/Object;

    instance-of v3, v2, Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->h([Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->b:Lcom/samsung/android/camera/core2/CamCapability;

    iget-boolean v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->d:Z

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;->c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;Z)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v3, v2, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->b:Lcom/samsung/android/camera/core2/CamCapability;

    iget-boolean v4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->d:Z

    invoke-interface {v2, v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;Z)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v3, v2, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->b:Lcom/samsung/android/camera/core2/CamCapability;

    iget-boolean v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->d:Z

    iget v6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->f:I

    iget v7, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->g:I

    move-object v3, v1

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;->e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V

    .line 11
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "CamDeviceSendPictureRunnable closeImage - timeStamp(%d), format(%s), size(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    aput-object v0, v3, v4

    .line 15
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->a()V

    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
