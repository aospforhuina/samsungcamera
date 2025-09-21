.class Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailProcessor"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Lcom/sec/android/app/camera/engine/x6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->lambda$sendThumbnailTakenEvent$4(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->lambda$processJpegThumbnail$2([BLandroid/util/Size;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->lambda$processYuvThumbnail$3([BLcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->lambda$process$0(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/util/Size;Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->lambda$processFlexRgbaThumbnail$1(Landroid/util/Size;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->initialize()V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->release()V

    return-void
.end method

.method private initialize()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0x1e

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private synthetic lambda$process$0(Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->sendThumbnailTakenEvent(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private synthetic lambda$processFlexRgbaThumbnail$1(Landroid/util/Size;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    .line 5
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->sendThumbnailTakenEvent(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private synthetic lambda$processJpegThumbnail$2([BLandroid/util/Size;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->sendThumbnailTakenEvent(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private synthetic lambda$processYuvThumbnail$3([BLcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->c()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->c()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->sendThumbnailTakenEvent(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private synthetic lambda$sendThumbnailTakenEvent$4(Landroid/graphics/Bitmap;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onThumbnailTaken(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private processFlexRgbaThumbnail(Ljava/nio/ByteBuffer;Landroid/util/Size;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sec/android/app/camera/engine/u6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/android/app/camera/engine/u6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/util/Size;Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processJpegThumbnail(Ljava/nio/ByteBuffer;Landroid/util/Size;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sec/android/app/camera/engine/v6;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/sec/android/app/camera/engine/v6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processYuvThumbnail(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sec/android/app/camera/engine/w6;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/sec/android/app/camera/engine/w6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "ThumbnailProcessor.release : returned because executor has not been initialized."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThumbnailProcessor.release : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tasks will be discarded."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private sendThumbnailTakenEvent(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->f(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/t6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/t6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method process(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "ThumbnailProcessor.process : cannot execute."

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/engine/s6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/s6;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public process(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "ThumbnailProcessor.process : cannot execute."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->b()I

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x100

    if-eq v0, v2, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ThumbnailProcessor.process : unsupported thumbnail format("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->c()Landroid/util/Size;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->processJpegThumbnail(Ljava/nio/ByteBuffer;Landroid/util/Size;I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;->c()Landroid/util/Size;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->processFlexRgbaThumbnail(Ljava/nio/ByteBuffer;Landroid/util/Size;I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->processYuvThumbnail(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V

    :goto_0
    return-void
.end method
