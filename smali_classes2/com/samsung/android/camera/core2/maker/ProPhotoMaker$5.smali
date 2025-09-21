.class Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;
.super Ljava/lang/Object;
.source "ProPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->P1()V
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

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;->a(IJ)V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;->c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;II)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;->d(Landroid/hardware/camera2/CaptureFailure;II)V

    return-void
.end method

.method public e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->i1:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v2}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget v4, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->n1:I

    if-eq v2, v4, :cond_0

    .line 4
    monitor-exit v1

    return-void

    .line 5
    :cond_0
    iget-object v2, v3, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->o1:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v1, v3, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 9
    sget-object v3, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$11;->a:[I

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 10
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->f5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiPictureCallback onPictureTaken fail - unsupported pictureFormat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->f:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;->c5(Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/util/Size;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v1, v0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->m1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/BasketCollector;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->p4(Lcom/samsung/android/camera/core2/util/BasketCollector;Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw p1

    .line 15
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ProPhotoMaker$5;->a:Lcom/samsung/android/camera/core2/maker/ProPhotoMaker;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->b1:Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;->e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V

    return-void

    :catchall_1
    move-exception p0

    .line 16
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
