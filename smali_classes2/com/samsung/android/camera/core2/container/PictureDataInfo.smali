.class public Lcom/samsung/android/camera/core2/container/PictureDataInfo;
.super Ljava/lang/Object;
.source "PictureDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;,
        Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;,
        Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicFormat;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private final b:Landroid/util/Size;

.field private final c:Landroid/hardware/camera2/CaptureResult;

.field private final d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->a(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->e(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b:Landroid/util/Size;

    .line 4
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->d(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->c:Landroid/hardware/camera2/CaptureResult;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->b(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->d:Lcom/samsung/android/camera/core2/container/PictureDataInfo$PicType;

    .line 6
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;->c(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;Lcom/samsung/android/camera/core2/container/h1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;-><init>(Lcom/samsung/android/camera/core2/container/PictureDataInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->c:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result p0

    return p0
.end method
