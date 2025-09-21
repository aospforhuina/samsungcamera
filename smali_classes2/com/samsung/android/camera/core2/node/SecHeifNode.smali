.class public Lcom/samsung/android/camera/core2/node/SecHeifNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "SecHeifNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_JPEG_THUMBNAIL_HEIGHT:I = 0x200

.field private static final DEFAULT_JPEG_THUMBNAIL_WIDTH:I = 0x200

.field private static final ERROR_UNKNOWN:I = 0x0

.field private static final NATIVE_CALLBACK_EXIF_DATA:I = 0x1

.field private static final NATIVE_COMMAND_HEIF_NODE_START_DECODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/camera/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_MAKE_EXIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final THUMBNAIL_RATIO_TOLERANCE:F = 0.1f


# instance fields
.field private mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

.field private mEnableThumbnailCallback:Z

.field private mExifBuffer:[B

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

.field private mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "SecHeifNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/node/SecHeifNode$1;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/SecHeifNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->NATIVE_COMMAND_MAKE_EXIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/node/SecHeifNode$2;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    aput-object v3, v2, v4

    const-class v3, Landroid/util/Size;

    aput-object v3, v2, v1

    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/camera/core2/node/SecHeifNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->NATIVE_COMMAND_HEIF_NODE_START_DECODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v1, 0x12c

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mEnableThumbnailCallback:Z

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node;->mNativeCallbacks:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/core2/node/SecHeifNode$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/SecHeifNode$3;-><init>(Lcom/samsung/android/camera/core2/node/SecHeifNode;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 4
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    return-void
.end method

.method private decode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "decode failed : imageSize is null"

    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-interface {p0, v0}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onError(I)V

    return-object p1

    .line 4
    :cond_0
    sget-object p2, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "decode : picture [%s] "

    invoke-static {p2, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/samsung/android/camera/core2/node/SecHeifNode;->NATIVE_COMMAND_HEIF_NODE_START_DECODING:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-nez p1, :cond_1

    const-string v1, "decode failed"

    .line 7
    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-interface {p0, v0}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onError(I)V

    :cond_1
    return-object p1
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->lambda$makeHeif$1(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method

.method private encode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "encode E: picture [%s]"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->storeOriginalImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    .line 4
    sget-object v4, Lcom/samsung/android/camera/core2/util/ImgFormat;->o:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/samsung/android/camera/core2/util/ImgFormat;->l:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-eq v2, v4, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    aput-object v2, p0, v3

    const-string p2, "encode X: failed due to unsupported format(%s)"

    .line 5
    invoke-static {v0, p2, p0}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p2, "encode X: failed because imageSize is null"

    .line 7
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-interface {p0, v3}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onError(I)V

    return-object p1

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->makeHeif(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    const-string p1, "encode X"

    .line 10
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic f(Ljava/nio/ByteBuffer;Lcom/samsung/android/media/heif/SemInputImage;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->lambda$makeHeif$0(Ljava/nio/ByteBuffer;Lcom/samsung/android/media/heif/SemInputImage;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/node/SecHeifNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->encode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/node/SecHeifNode;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->decode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i([B)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->lambda$setDebugInfo$2([B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j([B)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->lambda$setDebugInfo$3([B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic k(Lcom/samsung/android/camera/core2/node/SecHeifNode;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mExifBuffer:[B

    return-void
.end method

.method static bridge synthetic l()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private static synthetic lambda$makeHeif$0(Ljava/nio/ByteBuffer;Lcom/samsung/android/media/heif/SemInputImage;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/media/heif/SemInputImage;->setIccProfile(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static synthetic lambda$makeHeif$1(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->x(Landroid/util/Size;)V

    const v0, 0x48454946

    .line 2
    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->t(I)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->p()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core2/util/ImageInfo;->A(J)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->r(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5
    sget-object p0, Lcom/samsung/android/camera/core2/util/StrideInfo;->EMPTY_STRIDE_INFO:Lcom/samsung/android/camera/core2/util/StrideInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->z(Lcom/samsung/android/camera/core2/util/StrideInfo;)V

    return-void
.end method

.method private static synthetic lambda$setDebugInfo$2([B)Ljava/lang/Integer;
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDebugInfo$3([B)Ljava/lang/Integer;
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private makeHeif(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v3, Landroid/util/TimingLogger;

    const-string v0, "SecHeifNodeTiming"

    const-string v4, "process heif"

    invoke-direct {v3, v0, v4}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/util/Size;

    .line 5
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v7

    .line 6
    sget-object v8, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core2/CamCapability;

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v9

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v10

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v10, v11}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    const-string v11, "makeHeif - JPEG_THUMBNAIL_SIZE is null"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v11, v10

    check-cast v11, Landroid/util/Size;

    .line 9
    sget-object v11, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processPicture - jpegThumbnailSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v13

    div-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v14

    div-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3dcccccd    # 0.1f

    cmpl-float v12, v12, v13

    const/16 v13, 0x200

    if-gtz v12, :cond_0

    .line 11
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    if-ge v12, v13, :cond_4

    :cond_0
    const-string v10, "processPicture - Original picture ratio is different with thumbnail ratio or too small"

    .line 12
    invoke-static {v11, v10}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-lt v10, v12, :cond_2

    .line 14
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int/2addr v10, v13

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    div-int/2addr v10, v12

    .line 15
    rem-int/lit8 v12, v10, 0x2

    if-eqz v12, :cond_1

    add-int/lit8 v10, v10, -0x1

    .line 16
    :cond_1
    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v13, v10}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    mul-int/2addr v10, v13

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v12

    div-int/2addr v10, v12

    .line 18
    rem-int/lit8 v12, v10, 0x2

    if-eqz v12, :cond_3

    add-int/lit8 v10, v10, -0x1

    .line 19
    :cond_3
    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v10, v13}, Landroid/util/Size;-><init>(II)V

    :goto_0
    move-object v10, v12

    .line 20
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processPicture - Thumbnail size is changed to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    const/4 v12, 0x5

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v6, v13, v5

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v15, 0x2

    aput-object v9, v13, v15

    const/16 v16, 0x3

    aput-object v10, v13, v16

    const/16 v16, 0x4

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v16

    const-string v12, "processPicture - imageSize %s, %s, format %s, thumbnailSize %s, orientation %d"

    .line 22
    invoke-static {v11, v12, v13}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    const-string v13, "get picture buffer"

    .line 24
    invoke-virtual {v3, v13}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 25
    sget-object v13, Lcom/samsung/android/camera/core2/util/ImgFormat;->l:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const-string v15, "allocate thumbnailBuffer"

    const/4 v14, 0x0

    if-ne v9, v13, :cond_6

    .line 26
    invoke-virtual {v13, v10, v14}, Lcom/samsung/android/camera/core2/util/ImgFormat;->b(Landroid/util/Size;Lcom/samsung/android/camera/core2/util/StrideInfo;)I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 27
    invoke-virtual {v3, v15}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v19

    .line 29
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v20

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v21

    const/16 v22, 0x0

    new-array v13, v5, [Lcom/samsung/android/camera/core2/util/ImageUtils$QuramResizeType;

    move-object/from16 v16, v12

    move-object/from16 v17, v9

    move-object/from16 v23, v13

    .line 30
    invoke-static/range {v16 .. v23}, Lcom/samsung/android/camera/core2/util/ImageUtils;->quramResizeRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIZ[Lcom/samsung/android/camera/core2/util/ImageUtils$QuramResizeType;)Z

    move-result v13

    const-string v15, "quramResizeRGBA for thumbnail"

    .line 31
    invoke-virtual {v3, v15}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    if-eqz v13, :cond_5

    .line 32
    iget-boolean v13, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mEnableThumbnailCallback:Z

    if-eqz v13, :cond_5

    .line 33
    invoke-static {v9, v5}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->wrap(Ljava/nio/ByteBuffer;Z)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v13

    .line 34
    invoke-virtual {v13}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 35
    iget-object v15, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    const/16 v14, 0x2a

    invoke-interface {v15, v13, v14, v10}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v9, 0x0

    :goto_1
    move-object v13, v9

    const/4 v9, 0x5

    goto :goto_2

    .line 37
    :cond_6
    invoke-static {v10}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 38
    invoke-virtual {v3, v15}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 39
    invoke-static {v12, v5}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->wrap(Ljava/nio/ByteBuffer;Z)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v24

    .line 40
    invoke-static {v9, v5}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->wrap(Ljava/nio/ByteBuffer;Z)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v25

    .line 41
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v26

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v27

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v28

    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v29

    .line 42
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v31

    new-array v13, v5, [Lcom/samsung/android/camera/core2/util/ImageUtils$QuramResizeType;

    move-object/from16 v32, v13

    .line 43
    invoke-static/range {v24 .. v32}, Lcom/samsung/android/camera/core2/util/ImageUtils;->quramResizeNV21ToPackedNV21(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/DirectBuffer;IIIIII[Lcom/samsung/android/camera/core2/util/ImageUtils$QuramResizeType;)Z

    move-result v13

    const-string v14, "quramResizeNV21 for thumbnail"

    .line 44
    invoke-virtual {v3, v14}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    if-eqz v13, :cond_7

    .line 45
    iget-boolean v13, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mEnableThumbnailCallback:Z

    if-eqz v13, :cond_7

    .line 46
    invoke-static {v9, v5}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->wrap(Ljava/nio/ByteBuffer;Z)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v13

    .line 47
    invoke-virtual {v13}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 48
    iget-object v14, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    const/16 v15, 0x23

    invoke-interface {v14, v13, v15, v10}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V

    move-object v13, v9

    const/4 v9, 0x2

    goto :goto_2

    .line 49
    :cond_7
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v9, 0x2

    const/4 v13, 0x0

    :goto_2
    const-string v14, "send thumbnail to app"

    .line 50
    invoke-virtual {v3, v14}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 51
    new-instance v14, Lcom/samsung/android/media/heif/SemInputImage;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v14, v12, v15, v6, v9}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(Ljava/nio/ByteBuffer;III)V

    .line 52
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/samsung/android/media/heif/SemInputImage;->setStride(I)V

    .line 53
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/samsung/android/media/heif/SemInputImage;->setSliceHeight(I)V

    .line 54
    invoke-virtual {v14, v0}, Lcom/samsung/android/media/heif/SemInputImage;->setRotationDegree(I)V

    .line 55
    new-instance v6, Lcom/samsung/android/media/heif/SemHeifConfig;

    invoke-direct {v6, v14}, Lcom/samsung/android/media/heif/SemHeifConfig;-><init>(Lcom/samsung/android/media/heif/SemInputImage;)V

    if-eqz v13, :cond_8

    const-string v7, "processPicture - add thumbnail"

    .line 56
    invoke-static {v11, v7}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 57
    new-instance v7, Lcom/samsung/android/media/heif/SemInputImage;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v7, v13, v15, v10, v9}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(Ljava/nio/ByteBuffer;III)V

    .line 58
    invoke-virtual {v7, v0}, Lcom/samsung/android/media/heif/SemInputImage;->setRotationDegree(I)V

    .line 59
    invoke-virtual {v6, v7}, Lcom/samsung/android/media/heif/SemHeifConfig;->setThumbnailImage(Lcom/samsung/android/media/heif/SemInputImage;)V

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    const-string v0, "make HeifImage.Builder and set thumbnail"

    .line 60
    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    invoke-direct {v0, v8}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->f()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->h()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->j()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->k()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability$Builder;->e()Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;

    move-result-object v0

    const/4 v10, 0x0

    .line 67
    invoke-static {v4, v0, v10, v5}, Lcom/samsung/android/camera/core2/util/JpegUtils;->c0(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegCamCapability;Lcom/samsung/android/camera/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 68
    sget-object v10, Lcom/samsung/android/camera/core2/node/SecHeifNode;->NATIVE_COMMAND_MAKE_EXIF:Lcom/samsung/android/camera/core2/node/NativeNode$Command;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v0, v13, v5

    invoke-virtual {v1, v10, v13}, Lcom/samsung/android/camera/core2/node/Node;->nativeCall(Lcom/samsung/android/camera/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v10, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mExifBuffer:[B

    if-eqz v10, :cond_9

    array-length v10, v10

    if-lez v10, :cond_9

    const-string v10, "processPicture - add exif"

    .line 70
    invoke-static {v11, v10}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v10, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mExifBuffer:[B

    array-length v13, v10

    invoke-virtual {v6, v10, v5, v13}, Lcom/samsung/android/media/heif/SemHeifConfig;->setExifData([BII)V

    .line 72
    :cond_9
    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/CamCapability;->e1()[B

    move-result-object v8

    if-eqz v8, :cond_a

    const-string v10, "processPicture - add iccProfile"

    .line 73
    invoke-static {v11, v10}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 74
    array-length v10, v8

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 75
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v14, v10}, Lcom/samsung/android/media/heif/SemInputImage;->setIccProfile(Ljava/nio/ByteBuffer;)V

    .line 77
    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/camera/core2/node/q0;

    invoke-direct {v8, v10}, Lcom/samsung/android/camera/core2/node/q0;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 78
    :cond_a
    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->f()I

    move-result v7

    const v8, 0xc3b4

    if-lt v7, v8, :cond_b

    .line 79
    invoke-direct {v1, v6, v0}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->setDebugInfo(Lcom/samsung/android/media/heif/SemHeifConfig;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V

    :cond_b
    const-string v0, "make & set Exif data"

    .line 80
    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 81
    :try_start_0
    invoke-static {v9, v0}, Lcom/samsung/android/media/heif/SemHeifConverter$Factory;->create(II)Lcom/samsung/android/media/heif/SemHeifConverter;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "HeifCapture create"

    .line 82
    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 83
    invoke-interface {v7}, Lcom/samsung/android/media/heif/SemHeifConverter;->initialize()V

    const-string v0, "HeifCapture start"

    .line 84
    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 85
    invoke-interface {v7, v6, v12}, Lcom/samsung/android/media/heif/SemHeifConverter;->convert(Lcom/samsung/android/media/heif/SemHeifConfig;Ljava/nio/ByteBuffer;)I

    move-result v5

    const-string v0, "HeifCapture stop"

    .line 86
    invoke-virtual {v3, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 87
    invoke-interface {v7}, Lcom/samsung/android/media/heif/SemHeifConverter;->deinitialize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-interface {v7}, Lcom/samsung/android/media/heif/SemHeifConverter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v7, :cond_c

    .line 89
    :try_start_3
    invoke-interface {v7}, Lcom/samsung/android/media/heif/SemHeifConverter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 90
    sget-object v6, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processPicture : Error in SemHeifConverter - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_5
    if-gtz v5, :cond_d

    .line 91
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "processPicture X: failed to encode HEIF"

    invoke-static {v0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v12}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 93
    iget-object v0, v1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-interface {v0, v5}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onError(I)V

    const/4 v1, 0x0

    return-object v1

    .line 94
    :cond_d
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPicture - HEIF , size = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/samsung/android/camera/core2/node/p0;

    invoke-direct {v0, v4}, Lcom/samsung/android/camera/core2/node/p0;-><init>(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/ImageInfo;->e(Ljava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v0

    .line 96
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v12}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Ljava/nio/ByteBuffer;)V

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 99
    invoke-virtual {v2, v12}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    const-string v1, "return heif"

    .line 100
    invoke-virtual {v3, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Landroid/util/TimingLogger;->dumpToLog()V

    return-object v0
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
    sget-object p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

.method private processPictureEncode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "processPictureEncode E: picture [%s], strideInfo [%s]"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    if-nez v1, :cond_0

    const-string p1, "processPictureEncode X: failed because compressConfiguration is null"

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-interface {p0, v2}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onError(I)V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v1, v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-nez v1, :cond_1

    const v1, 0x48454946

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/node/n0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/n0;-><init>(Lcom/samsung/android/camera/core2/node/SecHeifNode;)V

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->processForResultImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;ILjava/util/function/BiFunction;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    :cond_1
    const-string p0, "processPictureEncode X"

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

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
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    sget-object v5, Lcom/samsung/android/camera/core2/node/SecHeifNode$4;->a:[I

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
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v2, v2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-nez v2, :cond_3

    .line 8
    new-instance v3, Lcom/samsung/android/camera/core2/node/o0;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/o0;-><init>(Lcom/samsung/android/camera/core2/node/SecHeifNode;)V

    const/16 v4, 0x23

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v2, v2, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-ne v2, v5, :cond_3

    .line 10
    new-instance v3, Lcom/samsung/android/camera/core2/node/n0;

    invoke-direct {v3, p0}, Lcom/samsung/android/camera/core2/node/n0;-><init>(Lcom/samsung/android/camera/core2/node/SecHeifNode;)V

    const v4, 0x48454946

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

.method private setDebugInfo(Lcom/samsung/android/media/heif/SemHeifConfig;Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->getDebugInfoApp4()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/node/r0;->a:Lcom/samsung/android/camera/core2/node/r0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->getDebugInfoApp5()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/node/s0;->a:Lcom/samsung/android/camera/core2/node/s0;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez p0, :cond_0

    add-int/lit8 v2, p0, 0x4

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    .line 3
    :cond_1
    sget-object v3, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string v6, "debugInfoApp4Size(%d), debugInfoApp5Size(%d), totalDebugInfoSize(%d)"

    .line 5
    invoke-static {v3, v6, v5}, Lcom/samsung/android/camera/core2/util/CLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v2, :cond_4

    .line 6
    new-array v5, v2, [B

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->getDebugInfoApp4()[B

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, 0x4

    if-eqz v6, :cond_2

    .line 8
    aput-byte v9, v5, v0

    const/16 v6, -0x1c

    .line 9
    aput-byte v6, v5, v7

    shr-int/lit8 v6, p0, 0x8

    int-to-byte v6, v6

    .line 10
    aput-byte v6, v5, v8

    int-to-byte v6, p0

    .line 11
    aput-byte v6, v5, v4

    .line 12
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->getDebugInfoApp4()[B

    move-result-object v4

    invoke-static {v4, v0, v5, v10, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p0, v10

    goto :goto_1

    :cond_2
    move p0, v0

    .line 13
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->getDebugInfoApp5()[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 14
    aput-byte v9, v5, p0

    add-int/lit8 v4, p0, 0x1

    const/16 v6, -0x1b

    .line 15
    aput-byte v6, v5, v4

    add-int/lit8 v4, p0, 0x2

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    .line 16
    aput-byte v6, v5, v4

    add-int/lit8 v4, p0, 0x3

    int-to-byte v6, v1

    .line 17
    aput-byte v6, v5, v4

    .line 18
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->getDebugInfoApp5()[B

    move-result-object p2

    add-int/2addr p0, v10

    invoke-static {p2, v0, v5, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :try_start_0
    const-string p0, "processPicture - add debugInfo (size %d)"

    new-array p2, v7, [Ljava/lang/Object;

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v3, p0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 21
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    const-class p2, Lcom/samsung/android/media/heif/SemHeifConfig;

    const-string v1, "setCameraInfo"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/nio/ByteBuffer;

    aput-object v3, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to setCameraInfo : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private storeOriginalImage(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->W:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "alloc original image for store"

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/camera/core2/util/DirectBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->get(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "picture.getImageInfo() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->h:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->k(Lcom/samsung/android/camera/core2/util/DirectBuffer;Lcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    :goto_0
    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->deinitialize()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mExifBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mExifBuffer:[B

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz v0, :cond_1

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mOriginBuffer:Lcom/samsung/android/camera/core2/util/DirectBuffer;

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized enableThumbnailCallback(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mEnableThumbnailCallback:Z
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

.method public processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->SEC_HEIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "processPictureHeic E: picture [%s], strideInfo [%s]"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    if-nez v1, :cond_0

    const-string p1, "processPictureHeic X: failed because compressConfiguration is null."

    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-interface {p0, v2}, Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;->onError(I)V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->putExtraImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    iget v1, v1, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    if-ne v1, v4, :cond_1

    const/16 v1, 0x23

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/node/o0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/node/o0;-><init>(Lcom/samsung/android/camera/core2/node/SecHeifNode;)V

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->processForResultImageBuffer(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;ILjava/util/function/BiFunction;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    :cond_1
    const-string p0, "processPictureHeic X"

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
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

.method public declared-synchronized processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->processPictureEncode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->processPictureEncode(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reconfigure(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    return-void
.end method

.method public declared-synchronized setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "compressConfiguration"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/SecHeifNode;->mCompressConfiguration:Lcom/samsung/android/camera/core2/container/CompressConfiguration;
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
