.class Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;
.super Ljava/lang/Object;
.source "CamDevicePicTypeImgAvailableCallback.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

.field private final b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

.field private final d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "camDeviceImpl"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "blockingImageReader"

    .line 3
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    .line 7
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->b(Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private synthetic b(Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->A(J)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->q(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->v(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->i()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->w(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;)V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->j()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->y(I)V

    .line 8
    new-instance p0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/media/Image;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 14

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->a()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v6, "PicTypeImgAvailableCallback(%s) onImageAvailable - timeStamp(%d), width(%d), height(%d), format(%s) streamOption(%d)"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    aput-object v8, v7, v1

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, p1

    const/4 v8, 0x3

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    invoke-virtual {v9}, Lcom/samsung/android/camera/core2/util/BlockingImageReader;->j()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 5
    invoke-static {v5, v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 6
    new-instance v5, Lcom/samsung/android/camera/core2/device/v1;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/camera/core2/device/v1;-><init>(Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;Landroid/media/Image;)V

    invoke-static {v5}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v5

    .line 7
    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/NativeUtils;->getDirectBufferfromImage(Landroid/media/Image;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v9

    .line 8
    sget-object v6, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Priority;->c:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Priority;

    .line 9
    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    sget-object v8, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;->b:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    if-ne v7, v8, :cond_0

    const-string v7, "ThumbnailImage"

    .line 10
    invoke-static {v9, v7, v5}, Lcom/samsung/android/camera/core2/util/FileUtils;->o(Lcom/samsung/android/camera/core2/util/DirectBuffer;Ljava/lang/String;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object v8, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;->a:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    if-ne v7, v8, :cond_1

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v7

    const/16 v8, 0x100

    if-ne v7, v8, :cond_1

    const-string v6, "DraftJpegImage"

    .line 12
    invoke-static {v9, v6, v5}, Lcom/samsung/android/camera/core2/util/FileUtils;->o(Lcom/samsung/android/camera/core2/util/DirectBuffer;Ljava/lang/String;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 13
    sget-object v5, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Priority;->a:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Priority;

    move-object v10, v5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v10, v6

    .line 14
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->P1()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    move-object v3, v13

    move-object v5, v2

    move-object v6, v9

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;-><init>(Lcom/samsung/android/camera/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Priority;)V

    invoke-interface {v11, v12, v13}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    if-eqz v3, :cond_4

    .line 15
    iget-object v11, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->c:Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    move-object v5, v2

    move-object v6, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;->a(Lcom/samsung/android/camera/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Priority;)Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->n2(Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v5, "PicTypeImgAvailableCallback(%s) onImageAvailable - timeStamp(%d) is invalid"

    new-array v6, p1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    aput-object v7, v6, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v2, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "PicTypeImgAvailableCallback(%s) onImageAvailable - no new image is available"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 18
    iget-object v3, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDevicePicTypeImgAvailableCallback;->d:Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureData$ImageStream$Type;

    aput-object p0, p1, v1

    aput-object v2, p1, v0

    const-string p0, "PicTypeImgAvailableCallback(%s) onImageAvailable - %s"

    invoke-static {v3, p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
