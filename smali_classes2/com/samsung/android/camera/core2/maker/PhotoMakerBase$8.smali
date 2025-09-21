.class Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;
.super Ljava/lang/Object;
.source "PhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;


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

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;Lcom/samsung/android/camera/core2/callback/MakerStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->g(Lcom/samsung/android/camera/core2/callback/MakerStateCallback;)V

    return-void
.end method

.method private synthetic g(Lcom/samsung/android/camera/core2/callback/MakerStateCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/camera/core2/callback/MakerStateCallback;->onCamDeviceReady(Lcom/samsung/android/camera/core2/MakerInterface;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->s:Lcom/samsung/android/camera/core2/callback/MakerStateCallback;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/maker/tf;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/maker/tf;-><init>(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    .locals 0

    return-void
.end method

.method public c()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->f:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->b(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    .line 5
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->C0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->G(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V

    .line 6
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->D0:Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->L(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V

    .line 7
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->c1:Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->I(Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V

    .line 8
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->H(Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;)V

    .line 9
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->f1:Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->M(Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;)V

    .line 10
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->e1:Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->K(Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;)V

    .line 11
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->d1:Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->J(Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    .line 12
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->a1:Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/CamDevice;->E(Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V

    .line 13
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->V:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v7, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    .line 14
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/CamCapability;->m()Ljava/util/List;

    move-result-object v7

    .line 15
    invoke-static {v4, v7}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object v4

    .line 16
    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v7, v7, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Jpeg thumbnail size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 17
    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v8, v7, Lcom/samsung/android/camera/core2/maker/MakerBase;->g:Ljava/util/Map;

    iget-object v7, v7, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v4, :cond_1

    .line 18
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v6, v6}, Landroid/util/Size;-><init>(II)V

    .line 19
    :cond_1
    invoke-static {v8, v7, v9, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 20
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 21
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-static {v4, v3}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->F2(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;Z)V

    .line 22
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-static {v4, v3}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->E2(Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;Z)V

    .line 23
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->resumePPP()V

    .line 25
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 26
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v5, v5, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigured - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 27
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iput-boolean v5, v4, Lcom/samsung/android/camera/core2/maker/MakerBase;->n:Z

    .line 28
    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "[CAMFWKPI] onConfigured X - sessionStateCallback(%s) - %d ms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 29
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v3

    .line 30
    invoke-static {v4, v5, v7}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
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
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->g:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 7
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->i0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;->resumePPP()V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigureFailed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "onConfigureFailed X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->k:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 7
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->E0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->c0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->F0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->G0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceClosed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "onDeviceClosed X - sessionStateCallback(%s)"

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

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onDisconnected()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->G1()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    sget-object v2, Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;->b:Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/MakerBase;->X1(Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->h1()Lcom/samsung/android/camera/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v1

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-releaseMaker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->B3(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 8
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->b0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->E0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->c0:Lcom/samsung/android/camera/core2/callback/forwarder/PreviewBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->F0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->G0:Lcom/samsung/android/camera/core2/util/MutableReference;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/camera/core2/maker/MakerBase;->W1(Lcom/samsung/android/camera/core2/callback/forwarder/BufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/MutableReference;)V

    .line 12
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v2, v2, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnected - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 14
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$8;->a:Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->I0:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "onDisconnected X - sessionStateCallback(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
