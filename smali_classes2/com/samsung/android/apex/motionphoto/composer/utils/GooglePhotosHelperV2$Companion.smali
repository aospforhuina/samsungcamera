.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;-><init>()V

    return-void
.end method

.method private final isHeifFormat([B)Z
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/utils/ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-string v3, "BIG_ENDIAN"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3
    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    new-array v5, v1, [B

    .line 4
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getHEIF_TYPE_FTYP$cp()[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x8

    if-nez v7, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v10, 0x10

    cmp-long v7, v3, v10

    if-gez v7, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_1
    const/16 v7, 0x8

    int-to-long v10, v7

    add-long/2addr v10, v8

    goto :goto_0

    :cond_2
    move-wide v10, v8

    .line 9
    :goto_0
    :try_start_3
    array-length v7, p1

    int-to-long v12, v7

    cmp-long v7, v3, v12

    if-lez v7, :cond_3

    .line 10
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p1

    :cond_3
    sub-long/2addr v3, v10

    cmp-long p1, v3, v8

    if-gez p1, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_4
    :try_start_4
    new-array p1, v1, [B

    const-wide/16 v7, 0x0

    int-to-long v9, v1

    .line 12
    div-long/2addr v3, v9

    cmp-long v9, v7, v3

    if-gez v9, :cond_b

    move v9, v0

    move v10, v9

    :goto_1
    add-long v11, v7, v5

    .line 13
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v13, v1, :cond_5

    .line 14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_5
    cmp-long v7, v7, v5

    if-nez v7, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getHEIF_BRAND_MIF1$cp()[B

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    move v9, v8

    goto :goto_2

    .line 16
    :cond_7
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getHEIF_BRAND_HEIC$cp()[B

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_8

    move v10, v8

    :cond_8
    :goto_2
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v8

    :cond_9
    :goto_3
    cmp-long v7, v11, v3

    if-ltz v7, :cond_a

    goto :goto_4

    :cond_a
    move-wide v7, v11

    goto :goto_1

    :cond_b
    :goto_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_7

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p1

    .line 18
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;->getTAG$motionphoto_composer_v3_1_9_release()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Exception parsing HEIF file type box."

    invoke-static {p0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_c

    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    :goto_6
    return v0

    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 20
    :cond_d
    throw p0
.end method

.method private final isJpegFormat([B)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getJPEG_SIGNATURE$cp()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 2
    aget-byte v3, p1, v1

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getJPEG_SIGNATURE$cp()[B

    move-result-object v4

    aget-byte v1, v4, v1

    if-eq v3, v1, :cond_0

    return v0

    :cond_0
    if-le v2, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final create(Ljava/io/FileDescriptor;)Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;
    .locals 3

    const-string p0, "fd"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1388

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v1, v1, [B

    .line 5
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 7
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;->isJpegFormat([B)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2$Companion;->isHeifFormat([B)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;-><init>(Ljava/io/FileDescriptor;)V

    .line 9
    :goto_0
    sget-object p1, Lk6/q;->a:Lk6/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 10
    invoke-static {p0, p1}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 11
    new-instance p0, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;-><init>(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;Lkotlin/jvm/internal/g;)V

    return-object p0

    .line 12
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "supports JPEG and HEIF image formats only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getTAG$motionphoto_composer_v3_1_9_release()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
