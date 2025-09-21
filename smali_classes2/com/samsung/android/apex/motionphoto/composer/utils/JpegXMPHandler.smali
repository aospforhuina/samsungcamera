.class final Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;

.field public static final JPEG_LENGTH_SIZE:I = 0x2

.field public static final JPEG_MARKER_SIZE:I = 0x2

.field public static final JPEG_SEF_XMP_PADDING:I = 0x3b

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private xmpPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private final seekToXmpStartPosition(Ljava/io/FileInputStream;)V
    .locals 7

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_5

    .line 4
    new-instance v2, Lk6/j;

    aget-byte v3, p0, v0

    const/16 v4, 0xff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v6, p0, v5

    and-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lk6/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v2}, Lk6/j;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v2}, Lk6/j;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v6, 0xd0

    if-gt v6, v3, :cond_2

    const/16 v6, 0xd7

    if-gt v3, v6, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 8
    invoke-virtual {v2}, Lk6/j;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v6, 0xdd

    if-eq v3, v6, :cond_0

    aget-byte v3, p0, v0

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    aget-byte v5, p0, v5

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    .line 9
    invoke-virtual {p1, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 10
    invoke-virtual {v2}, Lk6/j;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0xe1

    if-ne v2, v3, :cond_0

    return-void

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "this is not valid markers"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed \'JPEG\' image"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final getXmpPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    return-wide v0
.end method

.method public removeXmp()V
    .locals 11

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->seekToXmpStartPosition(Ljava/io/FileInputStream;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->setXmpPosition(J)V

    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 4
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    and-int/2addr v2, v5

    const/16 v7, 0xe1

    if-ne v2, v7, :cond_2

    new-array v2, v1, [B

    .line 5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    aget-byte v7, v2, v3

    and-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x8

    aget-byte v2, v2, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v7

    add-int/2addr v2, v1

    .line 6
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "xmp size : "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getXmpPosition()J

    move-result-wide v9

    sub-long/2addr v7, v9

    int-to-long v1, v2

    sub-long/2addr v7, v1

    long-to-int v5, v7

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getXmpPosition()J

    move-result-wide v8

    add-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 10
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    sget-object v1, Lk6/q;->a:Lk6/q;

    goto :goto_0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read bytes("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") differ from buffer size("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v5, v6

    .line 15
    :goto_0
    sget-object v1, Lk6/q;->a:Lk6/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    invoke-static {v0, v6}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getFd()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getXmpPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 19
    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 20
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const/16 p0, 0x500

    int-to-long v3, p0

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {v0, v6}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception p0

    .line 22
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reserveXmp()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler$DefaultImpls;->reserveXmp(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V

    return-void
.end method

.method public reserveXmp(I)V
    .locals 5

    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->seekToXmpStartPosition(Ljava/io/FileInputStream;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->setXmpPosition(J)V

    .line 5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getXmpPosition()J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, -0x1f

    .line 7
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    int-to-byte v2, v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0xfe

    int-to-byte v2, v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 12
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->TAG:Ljava/lang/String;

    const-string v3, "reserveXmp: read bytes: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    sget-object p1, Lk6/q;->a:Lk6/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x0

    .line 15
    invoke-static {v0, p1}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getXmpPosition()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {v0, p1}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catchall_2
    move-exception p0

    .line 19
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v0, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setXmpPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    return-void
.end method

.method public writeXmp(JJJJJ)V
    .locals 14

    const/16 v0, 0x500

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, -0x1f

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    int-to-byte v1, v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, 0xfe

    int-to-byte v1, v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/16 v3, 0x3b

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->access$getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lc/d;

    move-result-object v1

    .line 7
    new-instance v2, Lf/d;

    invoke-direct {v2}, Lf/d;-><init>()V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lf/d;->y(Z)Lf/d;

    .line 9
    invoke-virtual {v2, v3}, Lf/d;->A(Z)Lf/d;

    .line 10
    sget-object v3, Lb7/c;->b:Ljava/nio/charset/Charset;

    const-string v4, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {v1, v2}, Lc/e;->e(Lc/d;Lf/d;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    new-instance v1, Ljava/io/FileOutputStream;

    move-object v2, p0

    iget-object v3, v2, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v3, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->getXmpPosition()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 17
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1, v3}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method
