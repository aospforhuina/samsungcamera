.class Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;
.super Ljava/lang/Object;
.source "SingleBokehPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;Lcom/samsung/android/camera/core2/ExtraBundle;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->i(Lcom/samsung/android/camera/core2/ExtraBundle;[B)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/util/Size;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->j(Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/util/Size;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/ExtraBundle;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->h(Lcom/samsung/android/camera/core2/ExtraBundle;[Landroid/hardware/camera2/params/Face;)V

    return-void
.end method

.method private static synthetic h(Lcom/samsung/android/camera/core2/ExtraBundle;[Landroid/hardware/camera2/params/Face;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->K:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    return-void
.end method

.method private synthetic i(Lcom/samsung/android/camera/core2/ExtraBundle;[B)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->O:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 2
    sget-object p2, Lcom/samsung/android/camera/core2/ExtraBundle;->P:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Y4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    return-void
.end method

.method private static synthetic j(Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/util/Size;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->I:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/CamCapability;Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v4, 0x1

    aput-object p4, v2, v4

    const-string p4, "PictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b"

    invoke-static {v0, p4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p4, p4, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/FlagLock;->b()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 5
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/util/Size;

    .line 6
    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v5, "PictureCallback onPictureTaken: Valid Image Region is null or invalid. so, it made by input picture size."

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v0, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v5

    const-string v6, "PictureCallback onPictureTaken: Picture Size=%s, Valid Image Region=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v5, v6, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    .line 12
    :goto_0
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v0, v1, :cond_7

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->d5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {v1, p3, p4, v4}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->W4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {v1, p3, p4, v3}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 15
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->p5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {p4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 17
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->L:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 18
    :cond_2
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->W:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 19
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->J:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Q4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 20
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->Z4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/hardware/camera2/params/Face;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/pl;

    invoke-direct {p4, p2}, Lcom/samsung/android/camera/core2/maker/pl;-><init>(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 21
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I

    move-result-object p3

    if-eqz p3, :cond_3

    .line 22
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->M:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->R4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 23
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->N:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->S4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[[I

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 24
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->X4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[B

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/ql;

    invoke-direct {p4, p0, p2}, Lcom/samsung/android/camera/core2/maker/ql;-><init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 25
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[I

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->b5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 26
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->R:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->a5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[I

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 27
    sget-object p3, Lcom/samsung/android/camera/core2/ExtraBundle;->S:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p4, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p4}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->b5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)[Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 28
    :cond_4
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/camera/core2/maker/MakerBase;->B:Landroid/util/Size;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/camera/core2/maker/ol;

    invoke-direct {p4, p2}, Lcom/samsung/android/camera/core2/maker/ol;-><init>(Lcom/samsung/android/camera/core2/ExtraBundle;)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 29
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->W4(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_5
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->c5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 31
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->d5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_1

    .line 32
    :cond_6
    iget-object p3, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->e5(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;)Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/camera/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/camera/core2/node/Node$InputPort;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->set(Lcom/samsung/android/camera/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_7
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->b:Lcom/samsung/android/camera/core2/util/FlagLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    throw p1

    .line 36
    :cond_8
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "PictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {p1, p2, v3, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    :goto_2
    return-void
.end method

.method public d(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;->q5()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->Q0:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->u:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->n(Lcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
