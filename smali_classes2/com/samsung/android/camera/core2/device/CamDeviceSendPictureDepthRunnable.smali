.class Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;
.super Ljava/lang/Object;
.source "CamDeviceSendPictureDepthRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final b:Lcom/samsung/android/camera/core2/CamCapability;

.field private final c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

.field private final d:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->b:Lcom/samsung/android/camera/core2/CamCapability;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->d:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    return-void
.end method

.method private synthetic b(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;->c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->k()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->h()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->d:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/camera/core2/device/u2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/camera/core2/device/u2;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "CamDeviceSendPictureDepthRunnable closeImage - timeStamp(%d), format(%s), size(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    aput-object v0, v3, v4

    .line 10
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceSendPictureDepthRunnable;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream;->a()V

    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
