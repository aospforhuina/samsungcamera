.class public Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;
.super Ljava/lang/Object;
.source "PictureDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/PictureDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private final b:Landroid/util/Size;

.field private final c:Landroid/hardware/camera2/CaptureResult;

.field private d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/util/ImgFormat;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;->a:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->e:I

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->c:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->k(Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/util/Size;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->b:Landroid/util/Size;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->c:Landroid/hardware/camera2/CaptureResult;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "ImageFormat(%s) is not supported for PictureDataInfo"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->e:I

    return p0
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->c:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->b:Landroid/util/Size;

    return-object p0
.end method


# virtual methods
.method public f()Lcom/samsung/android/camera/core2/container/PictureDataInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;-><init>(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;Lcom/samsung/android/camera/core2/container/h1;)V

    return-object v0
.end method

.method public g(Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public h(I)Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;
    .locals 0

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->e:I

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "processedOption should not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
