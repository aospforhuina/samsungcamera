.class public Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;
.super Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;
.source "ExternalJpegNode.java"


# static fields
.field private static final EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final NATIVE_CALLBACK_ENCODING_PROGRESS:I = 0x1

.field private static final NATIVE_CALLBACK_THUMBNAIL:I = 0x2

.field private static final NATIVE_COMMAND_JPEG_NODE_START_DECODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_JPEG_NODE_START_ENCODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_TYPE_BGRA8888:I = 0x8

.field private static final OUTPUT_TYPE_NV12:I = 0x13

.field private static final OUTPUT_TYPE_NV21:I = 0x12

.field private static final OUTPUT_TYPE_RGBA8888:I = 0x7

.field private static final OUTPUT_TYPE_YUV420:I = 0x2

.field private static final OUTPUT_TYPE_YUYV:I = 0x11


# instance fields
.field private mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    new-instance v1, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "ExternalJpegNode"

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$1;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-class v6, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    const/4 v7, 0x2

    aput-object v6, v3, v7

    invoke-direct {v1, v5, v3}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_ENCODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$2;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v5

    const-class v0, Landroid/util/Size;

    aput-object v0, v2, v4

    const-class v0, Ljava/lang/Integer;

    aput-object v0, v2, v7

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_DECODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v1, 0xdbc04

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$3;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$4;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    return-void
.end method

.method private convertImageFormatToNativeFormat(I)I
    .locals 0

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    const/16 p0, 0x23

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/16 p0, 0x12

    return p0
.end method

.method private convertNativeFormatToImageFormat(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x12

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x2a

    return p0

    :cond_1
    const/16 p0, 0x23

    return p0
.end method

.method private decode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_DECODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "decode failed"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V

    :cond_0
    return-object p1
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->lambda$encode$0(Ljava/lang/String;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    move-result-object p0

    return-object p0
.end method

.method private encode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->getInputImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->rawSize:I

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->convertImageFormatToNativeFormat(I)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->format:I

    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->G:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {p2, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    sget-object v5, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode: physicalCameraId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget-object v5, v5, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->camCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 13
    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/camera/core2/node/jpeg/d;

    invoke-direct {v7, v0}, Lcom/samsung/android/camera/core2/node/jpeg/d;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget-object v5, v5, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->extJpegMetadata:Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;

    .line 16
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget-boolean v3, v3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->addThumbnail:Z

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v2

    .line 17
    :goto_1
    invoke-static {v1, v0, v5, p2, v3}, Lcom/samsung/android/camera/core2/util/JpegUtils;->b0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Lcom/samsung/android/camera/core2/ExtraBundle;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    move-result-object p2

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    .line 19
    new-instance v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {v0, v1, p2, v6}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;-><init>(IIZ)V

    move-object p2, v0

    .line 20
    :goto_2
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_ENCODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    aput-object v3, v1, v2

    aput-object p1, v1, v6

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez p2, :cond_3

    .line 21
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "encode failed"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V

    :cond_3
    return-object p2
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->encode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->decode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getInputImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->L:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->getValidImageRegionBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v0

    iput v0, p2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->rowStride:I

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->heightSlice:I

    return-object p1
.end method

.method private getValidImageRegionBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "getValidImageRegionBuffer: Crop Input Image to Valid Image Region"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 4
    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "getValidImageRegionBuffer: Valid Image Region is null or invalid. so, it made by input picture size."

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->rowStride:I

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->heightSlice:I

    return-object p1

    .line 8
    :cond_0
    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 9
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->rowStride:I

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->heightSlice:I

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Landroid/util/Size;

    .line 12
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "getValidImageRegionBuffer: Valid Image Region and input picture size are the same."

    .line 13
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1

    .line 14
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result p2

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 16
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 17
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 18
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/camera/core2/node/jpeg/c;

    invoke-direct {p2, v2, v1}, Lcom/samsung/android/camera/core2/node/jpeg/c;-><init>(Landroid/util/Size;Landroid/graphics/Rect;)V

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->f(Lcom/samsung/android/camera/core2/util/ImageInfo;Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 24
    invoke-static {v4, p2, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->l(Ljava/nio/ByteBuffer;ZLcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, p2

    const/4 p0, 0x1

    aput-object v1, v2, p0

    const-string p0, "getValidImageRegionBuffer: Picture Size=%s, Valid Image Region=%s"

    .line 26
    invoke-static {v0, p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic h(Landroid/util/Size;Landroid/graphics/Rect;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->lambda$getValidImageRegionBuffer$1(Landroid/util/Size;Landroid/graphics/Rect;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->convertNativeFormatToImageFormat(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$encode$0(Ljava/lang/String;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->g(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->i(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->j()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->k()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->e()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getValidImageRegionBuffer$1(Landroid/util/Size;Landroid/graphics/Rect;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    .line 2
    new-instance p0, Lcom/samsung/android/camera/core2/util/StrideInfo;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method

.method private processForResultImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;ILjava/util/function/BiFunction;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            "I",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;)",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "processForResultImageBuffer"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-interface {p4, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    return-object p0
.end method

.method private putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget-boolean v0, v0, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->isSupportedKeepOriginImage:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->W:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    .line 2
    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "putExtraImageBuffer E"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImgFormat;->h()I

    move-result v4

    .line 6
    sget-object v5, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode$5;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v2, v2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-nez v2, :cond_3

    .line 8
    new-instance v3, Lcom/samsung/android/camera/core2/node/jpeg/b;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/jpeg/b;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    const/16 v4, 0x23

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v2, v2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-ne v2, v5, :cond_3

    .line 10
    new-instance v3, Lcom/samsung/android/camera/core2/node/jpeg/a;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/jpeg/a;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    const/16 v4, 0x100

    .line 11
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    if-eqz v3, :cond_5

    .line 12
    invoke-interface {v3, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez p0, :cond_4

    const-string p0, "putExtraImageBuffer X - failed"

    .line 13
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 16
    sget-object p1, Lcom/samsung/android/camera/core2/ExtraBundle;->h:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 17
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    const-string p0, "putExtraImageBuffer X"

    .line 18
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDeinitialized()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->onDeinitialized()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    return-void
.end method

.method protected declared-synchronized onInitialized(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "processPictureJpeg E: picture [%s], strideInfo [%s]"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    if-nez v1, :cond_0

    const-string p1, "processPictureJpeg X: failed because compressConfiguration is null"

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {p0, v3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v1, v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-ne v1, v3, :cond_1

    const/16 v1, 0x23

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/node/jpeg/b;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/jpeg/b;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->processForResultImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;ILjava/util/function/BiFunction;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    :cond_1
    const-string p0, "processPictureJpeg X"

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "processPictureRgba E: picture [%s], strideInfo [%s]"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    if-nez v1, :cond_0

    const-string p1, "processPictureRgba X: failed because compressConfiguration is null"

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {p0, v3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v1, v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-nez v1, :cond_1

    const/16 v1, 0x100

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/node/jpeg/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/jpeg/a;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->processForResultImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;ILjava/util/function/BiFunction;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    :cond_1
    const-string p0, "processPictureRgba X"

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "processPictureYuv E: picture [%s], strideInfo [%s]"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    if-nez v1, :cond_0

    const-string p1, "processPictureYuv X: failed because compressConfiguration is null"

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {p0, v3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v1, v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-nez v1, :cond_1

    const/16 v1, 0x100

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/node/jpeg/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/jpeg/a;-><init>(Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;)V

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->processForResultImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;ILjava/util/function/BiFunction;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    :cond_1
    const-string p0, "processPictureYuv X"

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "compressConfiguration"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
