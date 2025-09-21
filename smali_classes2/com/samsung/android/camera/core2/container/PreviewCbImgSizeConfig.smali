.class public Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;
.super Ljava/lang/Object;
.source "PreviewCbImgSizeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Landroid/util/Size;

.field private final b:Lcom/samsung/android/camera/core2/util/ImgFormat;


# direct methods
.method public constructor <init>(Landroid/util/Size;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;-><init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImgFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/ImgFormat;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;->a:Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/util/ImgFormat;->k(Lcom/samsung/android/camera/core2/util/ImgFormat$Usage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->a:Landroid/util/Size;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "ImageFormat(%s) is not supported for PreviewCbImgSizeConfig"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size must not be null for PreviewCbImgSizeConfig"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/camera/core2/util/ImgFormat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    return-object p0
.end method

.method public b()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->a:Landroid/util/Size;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->a:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->b()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->a()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewCbImgSizeConfig{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->a:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/PreviewCbImgSizeConfig;->b:Lcom/samsung/android/camera/core2/util/ImgFormat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
