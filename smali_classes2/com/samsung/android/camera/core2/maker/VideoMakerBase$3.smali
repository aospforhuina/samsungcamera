.class Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;
.super Ljava/lang/Object;
.source "VideoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;


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

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->h()V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;Lcom/samsung/android/camera/core2/callback/MakerStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->i(Lcom/samsung/android/camera/core2/callback/MakerStateCallback;)V

    return-void
.end method

.method private static synthetic h()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->pausePPP()V

    return-void
.end method

.method private synthetic i(Lcom/samsung/android/camera/core2/callback/MakerStateCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/camera/core2/callback/MakerStateCallback;->onCamDeviceReady(Lcom/samsung/android/camera/core2/MakerInterface;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->J2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onReady E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->s:Lcom/samsung/android/camera/core2/callback/MakerStateCallback;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/maker/mo;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/mo;-><init>(Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReady - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onReady X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public b(Landroid/view/Surface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->J2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->F2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfacePrepared("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") - prepareSurface signalAll"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->G2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->K2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    throw p1

    :catchall_1
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->J2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "[CAMFWKPI] onConfigured E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->b(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->C0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/CamDevice;->G(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->D0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/CamDevice;->L(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->P0:Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/CamDevice;->I(Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->O0:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    invoke-virtual {v4, v1}, Lcom/samsung/android/camera/core2/CamDevice;->E(Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    .line 10
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamCapability;->m()Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-static {v1, v4}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object v1

    .line 12
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->i:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Jpeg thumbnail size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v5, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->g:Ljava/util/Map;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v6, v6}, Landroid/util/Size;-><init>(II)V

    .line 15
    :cond_0
    invoke-static {v5, v4, v7, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 18
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->p:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->pausePPP()V

    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->k:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    sget-object v4, Lcom/samsung/android/camera/core2/maker/lo;->a:Lcom/samsung/android/camera/core2/maker/lo;

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->p:Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigured - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 23
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v6

    :goto_2
    iput-boolean v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->n:Z

    .line 24
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "[CAMFWKPI] onConfigured X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->J2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onConfigureFailed E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->g:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 7
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigureFailed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onConfigureFailed X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->J2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onDeviceClosed E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->k:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 7
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->G0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v1

    .line 14
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceClosed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onDeviceClosed X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onDisconnected()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->J2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onDisconnected E - sessionStateCallback(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->b:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v1

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 8
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->G0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->H2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v1

    .line 15
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnected - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/VideoMakerBase$3;->a:Lcom/samsung/android/camera/core2/maker/VideoMakerBase;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/VideoMakerBase;)Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "onDisconnected X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
