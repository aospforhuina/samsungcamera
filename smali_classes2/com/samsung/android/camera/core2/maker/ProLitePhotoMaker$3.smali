.class Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;
.super Ljava/lang/Object;
.source "ProLitePhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->O3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->O3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v4, v4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v7, v7, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v2, v4, v6, v7}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->Q3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Z)V

    .line 7
    :cond_0
    sget-object v2, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$6;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v5, :cond_2

    if-eq v2, v1, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    goto :goto_0

    .line 9
    :cond_1
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-static {p4, v0, p3, p2}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->R3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 10
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-static {p4, v0, p3, p2}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->S3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 11
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->P3(Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p3

    const-class p4, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p3, p4, p1, p2}, Lcom/samsung/android/camera/core2/node/NodeChain;->s(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    .line 12
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    invoke-virtual {p3, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->C3(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v0, p4, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p3, v0, p1, p2, p4}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    throw p1

    .line 16
    :cond_4
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "PictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v3, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :goto_1
    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;->T3()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker$3;->a:Lcom/samsung/android/camera/core2/maker/ProLitePhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
