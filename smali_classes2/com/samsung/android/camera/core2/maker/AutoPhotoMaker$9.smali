.class Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;
.super Ljava/lang/Object;
.source "AutoPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->g(ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->h(ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V

    return-void
.end method

.method private synthetic g(ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;->onAgifBurstPictureStarted(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic h(ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;->onAgifBurstPictureCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BurstPictureCallback onBurstRequestRemoved - sequenceId %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;->b:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getAgifEventCallback()Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/d7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/d7;-><init>(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;I)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v2, p1, v1}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;->c(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "BurstPictureCallback onBurstPictureTaken - pictureData %s, hasThumbnailImage %b"

    invoke-static {p2, v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;->b:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object p2, p2, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->L4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Lcom/samsung/android/camera/core2/node/AgifNode;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "BurstPictureCallback onBurstPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p3, :cond_2

    .line 11
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->C3(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    .line 12
    :cond_2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p2, p3, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamDevice;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "BurstPictureCallback onBurstPictureTaken fail - captureResult is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BurstPictureCallback onBurstRequestApplied - sequenceId %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;->b:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->j:Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/maker/MakerCallbackManager;->getAgifEventCallback()Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/maker/c7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/c7;-><init>(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;I)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->M4(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$BURST_MODE;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$9;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->d0:Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/forwarder/BurstPictureBufferCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker;->P4()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "BurstPictureCallback onBurstRequestError - sequenceId %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
