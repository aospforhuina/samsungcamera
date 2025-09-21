.class Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;
.super Ljava/lang/Object;
.source "BeautyPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    const-string p1, "PictureCallback onPictureSequenceCompleted - sequenceId %d, frameNumber %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "PictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$18;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v5, :cond_4

    if-eq v2, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PictureCallback onPictureTaken fail - unsupported pictureFormat"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget v1, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->A0:I

    const v2, 0x48454946

    if-ne v1, v2, :cond_1

    .line 7
    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->G5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/SecHeifNode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/node/Node;->isInitialized()Z

    move-result p4

    if-nez p4, :cond_2

    .line 8
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->G5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/SecHeifNode;

    move-result-object p4

    invoke-virtual {p4, v5, v3}, Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZ)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->H5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/node/Node;->isInitialized()Z

    move-result p4

    if-nez p4, :cond_2

    .line 10
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->H5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object p4

    invoke-virtual {p4, v5, v3}, Lcom/samsung/android/camera/core2/node/Node;->initialize(ZZ)V

    .line 11
    :cond_2
    :goto_0
    new-instance p4, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {p4, p3, v0}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 12
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->E5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->E5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/node/Node;->isActivated()Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x2a

    .line 13
    iput p3, p4, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->format:I

    .line 14
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->G5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/SecHeifNode;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 15
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->H5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->F5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/faceRestoration/FaceRestoNodeBase;

    move-result-object p3

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p4

    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p4, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 18
    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 20
    invoke-static {p4}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->b(I)Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    .line 21
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->F5(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;)Lcom/samsung/android/camera/core2/node/faceRestoration/FaceRestoNodeBase;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez p4, :cond_5

    .line 22
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    invoke-virtual {p3, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->C3(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    .line 23
    :cond_5
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object v0, p4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p3, v0, p1, p2, p4}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    throw p1

    .line 26
    :cond_6
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "PictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v3, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :goto_2
    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PictureCallback onError %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;->J5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$14;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
