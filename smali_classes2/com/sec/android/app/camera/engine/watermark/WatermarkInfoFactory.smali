.class public Lcom/sec/android/app/camera/engine/watermark/WatermarkInfoFactory;
.super Ljava/lang/Object;
.source "WatermarkInfoFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertAlignment(I)Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->f:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong alignment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->d:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->c:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    return-object p0
.end method

.method public static create(Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;)Lcom/samsung/android/camera/core2/container/WatermarkInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/camera/core2/container/WatermarkInfo;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;->getAlign()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/watermark/WatermarkInfoFactory;->convertAlignment(I)Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    move-result-object v2

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;->getSideMargin()I

    move-result v3

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;->getBottomMargin()I

    move-result p0

    invoke-static {v3, p0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkMarginFactory;->create(II)Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/camera/core2/container/WatermarkInfo;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;Lcom/samsung/android/camera/core2/container/WatermarkInfo$Margin;)V

    return-object v0
.end method
