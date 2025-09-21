.class public Lcom/samsung/android/camera/core2/util/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field private a:Landroid/util/Size;

.field private b:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private c:J

.field private d:Landroid/hardware/camera2/TotalCaptureResult;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field private i:I

.field private j:Lcom/samsung/android/camera/core2/util/StrideInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    return-void
.end method

.method public static d()Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;-><init>()V

    return-object v0
.end method

.method public static e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;",
            ">;)",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;-><init>()V

    .line 2
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;",
            ">;)",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public A(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string/jumbo p0, "size(%s), format(%s), %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/util/ImgFormat;->c:Lcom/samsung/android/camera/core2/util/ImgFormat;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    .line 10
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    return-void
.end method

.method public b(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    .line 2
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    .line 4
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    .line 8
    sget-object p2, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    .line 10
    new-instance p2, Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/media/Image;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    return-void
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    .line 2
    iget-object v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    iget-wide v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    .line 4
    iget-object v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    .line 5
    iget-object v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    .line 6
    iget-object v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    .line 9
    iget v0, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    iput v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    .line 10
    iget-object p1, p1, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;->wrap(Lcom/samsung/android/camera/core2/util/StrideInfo;)Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method public i()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public j()Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public l()Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public m()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    return-object p0
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    return p0
.end method

.method public o()Lcom/samsung/android/camera/core2/util/StrideInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->wrap(Lcom/samsung/android/camera/core2/util/StrideInfo;)Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p0

    return-object p0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    return-wide v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public r(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public s([B)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->a([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    :cond_2
    :goto_0
    return-void
.end method

.method public t(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->c:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->d:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->e:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    aput-object p0, v1, v2

    const-string p0, "ImageInfo - size(%s), format(%s), timeStamp(%d), captureResult(%s), extraDebugInfoApp4(%s), cameraId(%s), physicalId(%s), picType(%s), streamOption(%d), %s"

    .line 4
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lcom/samsung/android/camera/core2/util/ImgFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public w(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->h:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-void
.end method

.method public x(Landroid/util/Size;)V
    .locals 2

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->a:Landroid/util/Size;

    return-void
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->i:I

    return-void
.end method

.method public z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/StrideInfo;->wrap(Lcom/samsung/android/camera/core2/util/StrideInfo;)Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/ImageInfo;->j:Lcom/samsung/android/camera/core2/util/StrideInfo;

    return-void
.end method
