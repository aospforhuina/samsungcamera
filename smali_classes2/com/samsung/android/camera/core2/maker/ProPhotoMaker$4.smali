.class Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;
.super Ljava/lang/Object;
.source "ProPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->R4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v5, 0x1

    aput-object p4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p4

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->R4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v6, v6, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, v3, v6}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0, v4}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->X4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Z)V

    .line 7
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$11;->a:[I

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PictureCallback onPictureTaken fail - unsupported pictureFormat"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->W4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Landroid/util/LongSparseArray;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p3

    .line 11
    sget-object p4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 12
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->W4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Landroid/util/LongSparseArray;

    move-result-object p4

    invoke-virtual {p4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;

    if-nez p4, :cond_2

    .line 13
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {p4, p3}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->c5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/util/Size;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->Y4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/util/Size;)V

    .line 14
    new-instance p4, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-direct {p4, v2, p3}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;-><init>(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 15
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->V4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p4, p1, p3, v2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->f(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->W4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->c()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0, p3}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->c5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/util/Size;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->Y4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/util/Size;)V

    .line 19
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/MakerBase;->W:Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/container/PicCbImgSizeConfig;->e()Landroid/util/Size;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->V4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p4, p1, p3, v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$RawData;->f(Lcom/samsung/android/camera/core2/util/DirectBuffer;Landroid/util/Size;Landroid/util/Size;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p3, "PictureCallback onPictureTaken fail - can not find same capture result data from data map."

    invoke-static {p1, p3}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p4, p3, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p4, v4, p3}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    .line 22
    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0, p4, p3, p2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->Z4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {v0, p4, p3, p2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->b5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 25
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->T4(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p3

    const-class v0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p3, v0, p1, p2}, Lcom/samsung/android/camera/core2/node/NodeChain;->s(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->e5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    goto :goto_1

    .line 27
    :cond_5
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-virtual {p3, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->C3(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    .line 28
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p3, v1, p1, p2, v0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamDevice;)V

    .line 29
    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-static {p2, p1, p4}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->d5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    throw p1

    .line 32
    :cond_6
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "PictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v4, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :goto_2
    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$4;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
