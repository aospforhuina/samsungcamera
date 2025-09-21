.class public Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;
.super Ljava/lang/Object;
.source "ThumbnailCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfo"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/util/ImgFormat;

.field private final b:Landroid/util/Size;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroid/util/Size;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImgFormat;->n(I)Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;-><init>(Lcom/samsung/android/camera/core2/util/ImgFormat;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/util/ImgFormat;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->b:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->k(Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->b:Landroid/util/Size;

    .line 6
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lp3/a;->a:Lp3/a;

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->c:I

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "ImageFormat(%s) is not supported for ThumbnailCallback"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->d(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->a:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result p0

    return p0
.end method

.method public c()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->b:Landroid/util/Size;

    return-object p0
.end method
