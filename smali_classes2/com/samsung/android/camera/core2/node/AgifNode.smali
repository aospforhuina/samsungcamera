.class public Lcom/samsung/android/camera/core2/node/AgifNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "AgifNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;,
        Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    }
.end annotation


# static fields
.field private static final AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mAgifResultSize:Landroid/util/Size;

.field private final mAgifThreadPool:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

.field private mCaptureCount:I

.field private final mContext:Landroid/content/Context;

.field mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

.field private final mJpegDataHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile mLastFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private volatile mLatestAgifBitmap:Landroid/graphics/Bitmap;

.field private volatile mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mMaxCaptureCount:I

.field private final mNodeCallback:Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;

.field private mPlaySpeed:I

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mResultHeight:I

.field private mResultUri:Landroid/net/Uri;

.field private mResultWidth:I

.field private mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

.field private volatile mThumbnailSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "AgifNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;ILcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mJpegDataHashMap:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifThreadPool:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    const-string v0, "agifImageSize"

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 6
    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "context"

    .line 7
    invoke-static {p4, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    .line 9
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;

    .line 10
    iput p2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mMaxCaptureCount:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mThumbnailSize:Landroid/util/Size;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/node/AgifNode;ILandroid/hardware/camera2/CaptureResult;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/AgifNode;->lambda$processAgif$0(ILandroid/hardware/camera2/CaptureResult;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$processAgif$0(ILandroid/hardware/camera2/CaptureResult;I)Ljava/lang/Boolean;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAgif E: count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mJpegDataHashMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    .line 4
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    .line 5
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 6
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/util/ImageUtils;->convertYuvToRGB(Landroid/renderscript/RenderScript;[BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez p1, :cond_0

    .line 7
    iput-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLatestAgifBitmap:Landroid/graphics/Bitmap;

    .line 8
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 9
    :cond_0
    iget p2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultWidth:I

    iget v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultHeight:I

    invoke-static {v1, p2, v2, p3}, Lcom/samsung/android/camera/core2/util/ImageUtils;->rotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 10
    iget-object p3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-virtual {p3, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->addFrameTP(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "QURAM : addFrame error"

    .line 11
    invoke-static {v0, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mJpegDataHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processAgif X: count "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 14
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private makeAgif()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "makeAgif E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->finishURI(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "QURAM : finish error"

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mThumbnailSize:Landroid/util/Size;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLatestAgifBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x62

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-interface {v3, v2, v1, v4}, Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;->a(Ljava/nio/ByteBuffer;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "thumbnailSize is null"

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 15
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;

    new-instance v3, Landroid/util/Size;

    iget v4, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultWidth:I

    iget v5, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultHeight:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;->b(Landroid/net/Uri;Landroid/util/Size;)V

    .line 16
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mJpegDataHashMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const-string p0, "makeAgif X"

    .line 17
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private prepareAgifEncoder(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLastOrientation:I

    if-eqz v0, :cond_1

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultWidth:I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultHeight:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultWidth:I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultHeight:I

    .line 6
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mThumbnailSize:Landroid/util/Size;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setMaxTaskTP(I)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mPlaySpeed:I

    invoke-virtual {p1, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDelay(I)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-virtual {p1, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDispose(I)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-virtual {p1, v1, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setPosition(II)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-virtual {p1, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setRepeat(I)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultWidth:I

    iget v3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setGlobalSize(II)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    iget v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultWidth:I

    iget v3, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setTransparent(I)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setWriteFunc(I)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDither(I)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-virtual {p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->startByteArray()Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    sget-object p1, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "QURAM : start error"

    invoke-static {p1, v4}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 19
    :cond_2
    sget-object p1, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mThumbnailSize:Landroid/util/Size;

    aput-object v1, v4, v3

    iget v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mMaxCaptureCount:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    iget v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLastOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultUri:Landroid/net/Uri;

    aput-object p0, v4, v0

    const-string p0, "prepareAgifEncoder: AgifImageSize %s, ThumbnailSize %s, MaxCaptureCount %d, Orientation %d, resultUri %s"

    .line 21
    invoke-static {p1, p0, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private processAgif(IILandroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/a;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/camera/core2/node/a;-><init>(Lcom/samsung/android/camera/core2/node/AgifNode;ILandroid/hardware/camera2/CaptureResult;I)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifThreadPool:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->d(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLastFuture:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelPicture()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "cancelPicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentCaptureCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCapturing()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "isCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    sget-object v1, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->c:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepareTakePicture(Landroid/net/Uri;I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "prepareTakePicture"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    sget-object v1, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a(Lcom/samsung/android/camera/core2/node/AgifNode$STATE;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    const-string v0, "resultUri"

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-direct {v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mEncoder:Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mResultUri:Landroid/net/Uri;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mJpegDataHashMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 8
    sget-object p1, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->b:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    .line 9
    iput v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    .line 10
    iput p2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mPlaySpeed:I

    .line 11
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mRenderScript:Landroid/renderscript/RenderScript;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x1

    .line 13
    monitor-exit p0

    return p1

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

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v2, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "processPictureYuv E"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v3, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    sget-object v4, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a(Lcom/samsung/android/camera/core2/node/AgifNode$STATE;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPictureYuv X: skip - invalid state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/util/Size;

    .line 8
    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 9
    invoke-static {v6}, Lcom/samsung/android/camera/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const-string v6, "processPictureYuv: Valid Image Region is null or invalid. so, it made by input picture size."

    .line 10
    invoke-static {v2, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v6, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    const-string v7, "processPictureYuv: Picture Size = %s, StrideInfo = %s, Valid Image Region = %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    .line 12
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object v6, v9, v10

    .line 13
    invoke-static {v2, v7, v9}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget v6, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    if-nez v6, :cond_2

    .line 15
    invoke-direct {v1, v4}, Lcom/samsung/android/camera/core2/node/AgifNode;->prepareAgifEncoder(Landroid/hardware/camera2/CaptureResult;)V

    .line 16
    :cond_2
    iget v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    iget v6, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mMaxCaptureCount:I

    if-ge v4, v6, :cond_4

    .line 17
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 19
    iget-object v7, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    invoke-static {v7}, Lcom/samsung/android/camera/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 20
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    .line 21
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v16

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v17

    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    .line 22
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v18

    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifResultSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v19

    new-array v4, v8, [Lcom/samsung/android/camera/core2/util/ImageUtils$QuramResizeType;

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v4

    .line 23
    invoke-static/range {v12 .. v20}, Lcom/samsung/android/camera/core2/util/ImageUtils;->quramResizeNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[Lcom/samsung/android/camera/core2/util/ImageUtils$QuramResizeType;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v3, "processPictureYuv X: failed to process quramResizeNV21"

    .line 24
    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v6}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-object v0

    .line 27
    :cond_3
    :try_start_2
    invoke-virtual {v0, v6}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 28
    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mJpegDataHashMap:Ljava/util/Map;

    iget v5, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    iget v5, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mLastOrientation:I

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    invoke-direct {v1, v4, v5, v3}, Lcom/samsung/android/camera/core2/node/AgifNode;->processAgif(IILandroid/hardware/camera2/CaptureResult;)V

    .line 30
    sget-object v3, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->c:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    iput-object v3, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    .line 31
    iget v3, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    add-int/2addr v3, v11

    iput v3, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mCaptureCount:I

    .line 32
    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/AgifNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;

    invoke-interface {v4, v3}, Lcom/samsung/android/camera/core2/node/AgifNode$NodeCallback;->onProgress(I)V

    :cond_4
    const-string v3, "processPictureYuv X"

    .line 33
    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mAgifThreadPool:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;J)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->release()V

    return-void
.end method

.method public declared-synchronized stopPicture()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    sget-object v1, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->c:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a(Lcom/samsung/android/camera/core2/node/AgifNode$STATE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agif is not capturing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mState:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/AgifNode;->mLastFuture:Ljava/util/concurrent/Future;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/AgifNode;->makeAgif()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_3
    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode;->AGIF_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "agif task future error"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
