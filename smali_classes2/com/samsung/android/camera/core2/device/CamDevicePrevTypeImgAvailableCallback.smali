.class Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;
.super Ljava/lang/Object;
.source "CamDevicePrevTypeImgAvailableCallback.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

.field private final b:Lcom/samsung/android/camera/core2/CamCapability;

.field private final c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

.field private e:Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "camDeviceImpl"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    .line 7
    sget-object p1, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;->a:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    if-ne p1, p2, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;

    invoke-direct {p1, v0}, Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->e:Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->e(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V

    return-void
.end method

.method private c(Landroid/media/Image;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    aput-object p0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "PrevTypeImgAvailableCallback(%s) executeDummyFrameReplacer - not supported mode(%d)"

    invoke-static {p1, p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->e:Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;->f(Landroid/media/Image;)V

    return-void

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->e:Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;->a(Landroid/media/Image;)V

    return-void
.end method

.method private synthetic d(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;->a(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method private synthetic e(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;->a(Landroid/media/Image;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    .line 1
    monitor-enter p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_1

    .line 3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "PrevTypeImgAvailableCallback(%s) onImageAvailable - no new image is available"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    .line 5
    :cond_1
    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->e:Lcom/samsung/android/camera/core2/util/DummyFrameReplacer;

    if-eqz v4, :cond_2

    .line 6
    invoke-direct {p0, v3}, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->c(Landroid/media/Image;)V

    .line 7
    :cond_2
    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 8
    sget-object v4, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$1;->a:[I

    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_4

    if-eq v4, v1, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->C1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/camera/core2/device/g2;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/camera/core2/device/g2;-><init>(Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->B1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/camera/core2/device/f2;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/camera/core2/device/f2;-><init>(Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "PrevTypeImgAvailableCallback(%s) onImageAvailable - timeStamp(%d) is invalid"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    aput-object v7, v6, v0

    .line 12
    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    .line 13
    invoke-static {v4, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    .line 15
    :try_start_6
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v4
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 16
    :try_start_8
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "PrevTypeImgAvailableCallback(%s) onImageAvailable - %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDevicePrevTypeImgAvailableCallback$PrevType;

    aput-object p0, v1, v0

    aput-object v3, v1, v2

    invoke-static {v4, v5, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method
