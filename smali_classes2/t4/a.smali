.class public Lt4/a;
.super Ljava/lang/Object;
.source "ISOEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/a$b;
    }
.end annotation


# static fields
.field private static final e:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lt4/a;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6d766864
        0x746b6864
        0x6d646864
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "filename cannot be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lt4/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lt4/a;->b:I

    .line 5
    iput-boolean v0, p0, Lt4/a;->c:Z

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lt4/a;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 9
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "video/mp4"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "audio/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "image/heif"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/avif"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lt4/a;->b:I

    const/16 p1, 0x21

    .line 13
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iput-boolean v2, p0, Lt4/a;->c:Z

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    iput v2, p0, Lt4/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 17
    :cond_4
    throw p0
.end method

.method private static A(Ljava/io/RandomAccessFile;JI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 p3, p3, 0x8

    .line 2
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const p1, 0x75647461

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method

.method private static B(Ljava/io/RandomAccessFile;[BJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    array-length p2, p1

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const p2, 0x75756964

    .line 3
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method private static C(Ljava/io/RandomAccessFile;IIJJZ)V
    .locals 8

    const/16 v0, 0x1e

    if-eqz p7, :cond_0

    .line 1
    invoke-virtual {p0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const p7, -0x56878686

    .line 3
    invoke-virtual {p0, p7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    .line 4
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    const p7, 0x1215c7

    .line 5
    invoke-virtual {p0, p7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 6
    div-int/lit16 p7, p1, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    mul-int/lit16 v4, p7, 0x2710

    sub-int/2addr p1, v4

    if-gez p1, :cond_2

    neg-int p1, p1

    :cond_2
    if-gez p7, :cond_3

    neg-int p7, p7

    :cond_3
    const/16 v4, 0x2d

    const/16 v5, 0x2b

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->writeByte(I)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 9
    :goto_2
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, v6, v2

    const-string p7, "%02d."

    invoke-static {v3, p7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 10
    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object p7

    invoke-virtual {p0, p7}, Ljava/io/RandomAccessFile;->write([B)V

    new-array p7, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p7, v2

    const-string p1, "%04d"

    invoke-static {v3, p1, p7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 12
    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object p7

    invoke-virtual {p0, p7}, Ljava/io/RandomAccessFile;->write([B)V

    if-gez p2, :cond_5

    move p7, v1

    goto :goto_3

    :cond_5
    move p7, v2

    .line 13
    :goto_3
    div-int/lit16 v6, p2, 0x2710

    mul-int/lit16 v7, v6, 0x2710

    sub-int/2addr p2, v7

    if-gez p2, :cond_6

    neg-int p2, p2

    :cond_6
    if-gez v6, :cond_7

    neg-int v6, v6

    :cond_7
    if-eqz p7, :cond_8

    .line 14
    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->writeByte(I)V

    goto :goto_4

    .line 15
    :cond_8
    invoke-virtual {p0, v5}, Ljava/io/RandomAccessFile;->writeByte(I)V

    :goto_4
    new-array p7, v1, [Ljava/lang/Object;

    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p7, v2

    const-string v4, "%03d."

    invoke-static {v3, v4, p7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 17
    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object p7

    invoke-virtual {p0, p7}, Ljava/io/RandomAccessFile;->write([B)V

    new-array p7, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p7, v2

    invoke-static {v3, p1, p7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 p1, 0x2f

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    long-to-int p1, p5

    long-to-int p2, p3

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    if-lez p1, :cond_9

    .line 21
    new-array p2, p1, [B

    .line 22
    invoke-static {p2, v2, p1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 23
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_9
    return-void
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    new-array v5, v4, [B

    .line 1
    fill-array-data v5, :array_0

    new-array v6, v4, [B

    .line 2
    fill-array-data v6, :array_1

    new-array v7, v4, [B

    .line 3
    fill-array-data v7, :array_2

    .line 4
    array-length v8, v0

    add-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addnewExifData() current exif size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISOEditor"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 6
    invoke-static {v5, v9, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-static {v6, v9, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length v5, v0

    add-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x4

    aput-byte v5, v8, v6

    .line 9
    array-length v5, v0

    add-int/2addr v5, v4

    ushr-int/2addr v5, v9

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x5

    aput-byte v5, v8, v6

    .line 10
    array-length v5, v0

    const/4 v6, 0x6

    invoke-static {v0, v9, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v0, v0

    add-int/2addr v0, v6

    invoke-static {v7, v9, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "tempJpeg"

    const-string/jumbo v5, "tmp"

    .line 12
    invoke-static {v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 13
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {v5}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 16
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/File;)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const-string v7, "Remove"

    .line 17
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "GPSLongitudeRef"

    const-string v12, "GPSLongitude"

    const-string v13, "GPSLatitudeRef"

    const-string v14, "GPSLatitude"

    if-eqz v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 18
    invoke-virtual {v5, v14, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5, v13, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, v12, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5, v11, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 23
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 24
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lt4/a;->u(D)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lt4/a;->u(D)Ljava/lang/String;

    move-result-object v7

    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "change exif. latitude : "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", longitude"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v5, v14, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v1, v14, v16

    if-lez v1, :cond_1

    const-string v1, "N"

    goto :goto_0

    :cond_1
    const-string v1, "S"

    :goto_0
    invoke-virtual {v5, v13, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v12, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, v16

    if-lez v1, :cond_2

    const-string v1, "E"

    goto :goto_1

    :cond_2
    const-string v1, "W"

    :goto_1
    invoke-virtual {v5, v11, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    const-string v1, "Restore"

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DateTimeDigitized"

    .line 32
    invoke-virtual {v5, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v3

    .line 33
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change exif, time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DateTime"

    .line 34
    invoke-virtual {v5, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DateTimeOriginal"

    .line 35
    invoke-virtual {v5, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_5
    invoke-virtual {v5}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    .line 38
    array-length v2, v1

    add-int/lit8 v2, v2, -0x8

    new-array v3, v2, [B

    .line 39
    invoke-static {v1, v6, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v3

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 41
    :goto_4
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to write temp jpeg file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :goto_5
    invoke-static {v4}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 43
    throw v0

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method private static b(Ljava/io/RandomAccessFile;JJIJ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 1
    invoke-virtual/range {p0 .. p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    const-string/jumbo v3, "unsupported iloc box version"

    const/4 v4, 0x2

    if-gt v2, v4, :cond_18

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    and-int/lit8 v6, v5, 0xf

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v9, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    and-int/lit8 v3, v8, 0xf

    shr-int/2addr v8, v7

    if-ge v2, v4, :cond_2

    move v10, v4

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    if-ne v10, v4, :cond_3

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v11

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    :goto_2
    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :goto_3
    if-ge v15, v11, :cond_17

    if-ne v10, v4, :cond_4

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    goto :goto_4

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    :goto_4
    if-eq v2, v9, :cond_5

    if-ne v2, v4, :cond_6

    .line 10
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    .line 11
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v18

    if-nez v18, :cond_16

    if-lez v8, :cond_8

    if-ne v8, v7, :cond_7

    .line 12
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    int-to-long v13, v12

    move-wide/from16 v16, v13

    goto :goto_5

    .line 13
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v16

    .line 14
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v12

    if-le v12, v9, :cond_9

    const-string v13, "ISOEditor"

    const-string v14, "cannot support multi extent_count"

    .line 15
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_15

    if-eq v2, v9, :cond_a

    if-ne v2, v4, :cond_c

    :cond_a
    if-lez v3, :cond_c

    if-ne v3, v7, :cond_b

    .line 16
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    goto :goto_7

    .line 17
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    :cond_c
    :goto_7
    if-lez v5, :cond_f

    move v14, v10

    .line 18
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    if-ne v5, v7, :cond_d

    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    move/from16 v20, v8

    int-to-long v7, v4

    goto :goto_8

    :cond_d
    move/from16 v20, v8

    .line 20
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    :goto_8
    add-long v21, v16, v7

    cmp-long v4, v21, p6

    if-lez v4, :cond_10

    .line 21
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x4

    if-ne v5, v4, :cond_e

    long-to-int v4, v7

    add-int/2addr v4, v1

    .line 22
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_9

    :cond_e
    int-to-long v9, v1

    add-long/2addr v9, v7

    .line 23
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->writeLong(J)V

    goto :goto_9

    :cond_f
    move/from16 v20, v8

    move v14, v10

    const-wide/16 v7, 0x0

    :cond_10
    :goto_9
    if-lez v6, :cond_13

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    cmp-long v4, v7, p6

    if-nez v4, :cond_11

    .line 24
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    const/4 v4, 0x4

    goto :goto_a

    :cond_11
    const/4 v4, 0x4

    const-wide/16 v7, 0x0

    :goto_a
    if-ne v6, v4, :cond_12

    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v21, 0x0

    cmp-long v19, v7, v21

    if-eqz v19, :cond_14

    .line 26
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v7, v9

    add-int/2addr v7, v1

    .line 27
    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_b

    :cond_12
    const-wide/16 v21, 0x0

    .line 28
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v9

    cmp-long v19, v7, v21

    if-eqz v19, :cond_14

    .line 29
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    int-to-long v7, v1

    add-long/2addr v9, v7

    .line 30
    invoke-virtual {v0, v9, v10}, Ljava/io/RandomAccessFile;->writeLong(J)V

    goto :goto_b

    :cond_13
    const/4 v4, 0x4

    const-wide/16 v21, 0x0

    :cond_14
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move v7, v4

    move v10, v14

    move/from16 v8, v20

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_15
    move v4, v7

    move/from16 v20, v8

    move v14, v10

    const-wide/16 v21, 0x0

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 31
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support data_reference_index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-void

    .line 32
    :cond_18
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/String;)J
    .locals 4

    .line 1
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/icu/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7c25b080

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static e(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 2
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static f(D)I
    .locals 3

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-gez v0, :cond_0

    sub-double/2addr p0, v1

    goto :goto_0

    :cond_0
    add-double/2addr p0, v1

    :goto_0
    double-to-int p0, p0

    return p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Restore"

    .line 1
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 3
    invoke-static {v5}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object v5

    const v6, 0x75647461

    .line 4
    invoke-virtual {v5, v6}, Lt4/b;->e(I)[J

    move-result-object v6

    const v7, 0x6d646174

    .line 5
    invoke-virtual {v5, v7}, Lt4/b;->d(I)[J

    move-result-object v7

    const v8, 0x6d6f6f76

    .line 6
    invoke-virtual {v5, v8}, Lt4/b;->d(I)[J

    move-result-object v8

    const v9, 0x6d6f6f66

    .line 7
    invoke-virtual {v5, v9}, Lt4/b;->d(I)[J

    move-result-object v9

    const v10, 0x6d766864

    .line 8
    invoke-virtual {v5, v10}, Lt4/b;->d(I)[J

    move-result-object v10

    const v11, 0x736f6374

    .line 9
    invoke-virtual {v5, v11}, Lt4/b;->d(I)[J

    move-result-object v5

    .line 10
    array-length v9, v9

    if-gtz v9, :cond_11

    .line 11
    array-length v9, v8

    if-ltz v9, :cond_10

    array-length v9, v8

    const/4 v11, 0x2

    if-gt v9, v11, :cond_10

    .line 12
    array-length v9, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v9, :cond_0

    move/from16 v16, v11

    goto :goto_0

    :cond_0
    move/from16 v16, v12

    .line 13
    :goto_0
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v13, "rw"

    invoke-direct {v9, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 14
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v13, 0x8

    if-eqz v0, :cond_2

    .line 15
    array-length v0, v5

    if-eqz v0, :cond_1

    .line 16
    aget-wide v17, v5, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v19, v4

    add-long v3, v17, v13

    :try_start_3
    invoke-virtual {v9, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-object/from16 v19, v4

    .line 18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support. This file has no original creation time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v19, v4

    .line 19
    invoke-static/range {p1 .. p1}, Lt4/a;->d(Ljava/lang/String;)J

    move-result-wide v3

    .line 20
    :goto_1
    array-length v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v13, "ISOEditor"

    const-wide/16 v20, 0x4

    if-nez v0, :cond_c

    move v0, v12

    move v1, v0

    .line 21
    :goto_2
    :try_start_4
    array-length v2, v7

    if-ge v0, v2, :cond_4

    .line 22
    aget-wide v22, v7, v0

    aget-wide v24, v8, v12

    cmp-long v2, v22, v24

    if-lez v2, :cond_3

    move v1, v11

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_8

    .line 23
    array-length v0, v7

    sub-int/2addr v0, v11

    aget-wide v0, v7, v0

    .line 24
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v22

    sub-long v14, v22, v0

    .line 25
    aget-wide v22, v8, v11

    aget-wide v26, v8, v12

    move-object/from16 v28, v6

    sub-long v5, v22, v26

    .line 26
    aget-wide v22, v8, v12

    sub-long v22, v0, v22

    add-long v26, v14, v5

    const-wide/32 v29, 0x4000000

    cmp-long v2, v26, v29

    if-gtz v2, :cond_7

    move-wide/from16 v26, v3

    .line 27
    aget-wide v2, v7, v12

    move-object/from16 v29, v13

    aget-wide v12, v7, v11

    invoke-static {v9, v2, v3, v12, v13}, Lt4/a;->w(Ljava/io/RandomAccessFile;JJ)V

    const-wide/16 v2, 0x0

    cmp-long v7, v14, v2

    if-lez v7, :cond_5

    long-to-int v2, v14

    .line 28
    new-array v3, v2, [B

    .line 29
    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x0

    .line 30
    invoke-virtual {v9, v3, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    long-to-int v2, v5

    .line 31
    new-array v5, v2, [B

    const/4 v4, 0x0

    .line 32
    aget-wide v12, v8, v4

    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    invoke-virtual {v9, v5, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 34
    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 35
    invoke-virtual {v9, v5, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    if-lez v7, :cond_6

    long-to-int v0, v14

    .line 36
    invoke-virtual {v9, v3, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 37
    :cond_6
    aget-wide v0, v8, v4

    add-long v0, v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const v0, 0x66726565

    .line 38
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 39
    invoke-static {v5, v4, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    add-int/lit8 v2, v2, -0x8

    .line 40
    invoke-virtual {v9, v5, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_4

    .line 41
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movie header or extra data size is too big. moov("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "), extra data("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-wide/from16 v26, v3

    move-object/from16 v28, v6

    move-object/from16 v29, v13

    const-wide/16 v22, 0x0

    :goto_4
    if-eqz v16, :cond_9

    const/16 v0, 0x10

    move-object/from16 v3, v28

    goto :goto_5

    :cond_9
    const/16 v0, 0x18

    move-object v3, v8

    :goto_5
    const-wide/16 v1, 0x0

    cmp-long v1, v22, v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    .line 42
    :goto_6
    array-length v2, v3

    if-ge v1, v2, :cond_a

    .line 43
    aget-wide v5, v3, v1

    add-long v5, v5, v22

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 44
    :cond_a
    array-length v1, v3

    if-le v1, v11, :cond_b

    move v1, v11

    move-object/from16 v6, v29

    goto :goto_7

    :cond_b
    const-string v1, "The file is abnormal. no moov box"

    move-object/from16 v6, v29

    .line 45
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_7
    move v4, v1

    move-wide/from16 v14, v22

    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    move-wide/from16 v26, v3

    move-object v6, v13

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 47
    aget-wide v1, v5, v0

    add-long v1, v1, v20

    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const v0, 0x66726565

    .line 48
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v0, 0x0

    .line 49
    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    goto :goto_8

    :cond_d
    const-wide/16 v0, 0x0

    :goto_8
    move-wide v14, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 50
    :goto_9
    aget-wide v1, v10, v1

    add-long v1, v1, v20

    add-long/2addr v1, v14

    add-long v7, v1, v20

    .line 51
    invoke-virtual {v9, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 52
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    const-wide/16 v7, 0x8

    add-long/2addr v1, v7

    .line 53
    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    if-ne v5, v11, :cond_e

    .line 54
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    .line 55
    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide/from16 v10, v26

    .line 56
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 57
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->writeLong(J)V

    goto :goto_a

    :cond_e
    move-wide/from16 v10, v26

    .line 58
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    int-to-long v7, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v7, v12

    .line 59
    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v1, v10

    .line 60
    invoke-virtual {v9, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 61
    invoke-virtual {v9, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_a
    move-wide v14, v7

    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    move-object v1, v6

    move-object v13, v9

    move-object/from16 v17, v3

    move/from16 v18, v0

    .line 62
    :try_start_5
    invoke-static/range {v13 .. v18}, Lt4/a;->x(Ljava/io/RandomAccessFile;JZ[JI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    :catch_0
    :try_start_6
    const-string v0, "failed to update soct box"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 64
    :cond_f
    :goto_b
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 65
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v9

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v3, v9

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v19, v4

    :goto_c
    move-object v1, v0

    move-object v3, v9

    goto :goto_e

    :cond_10
    move-object/from16 v19, v4

    .line 66
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "moov must be 1. the file is abnormal"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v19, v4

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support. The file has moof box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v19, v4

    :goto_d
    move-object v1, v0

    const/4 v3, 0x0

    .line 68
    :goto_e
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catch_2
    move-exception v0

    goto :goto_10

    :catchall_6
    move-exception v0

    const/4 v3, 0x0

    goto :goto_11

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    .line 69
    :goto_10
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to edit creation time"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    :goto_11
    if-eqz v3, :cond_12

    .line 70
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 71
    :cond_12
    throw v0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x21

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    .line 4
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7
    new-array v2, v0, [B

    .line 8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    int-to-long v4, v1

    .line 9
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 12
    invoke-static {v2, p2, p3, p1}, Lt4/a;->a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    array-length p2, p1

    if-ge p2, v0, :cond_1

    const-string p2, "ISOEditor"

    const-string p3, "edited Exif data size is smaller than original Exif data size"

    .line 14
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 15
    :try_start_1
    new-instance p3, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p3, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-virtual {p3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    invoke-virtual {p3, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 18
    array-length p0, p1

    sub-int/2addr v0, p0

    .line 19
    new-array p0, v0, [B

    .line 20
    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 21
    invoke-virtual {p3, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 22
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p2, p3

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 24
    :cond_0
    throw p0

    .line 25
    :cond_1
    invoke-static {p0, p1, v4, v5, v0}, Lt4/a;->y(Ljava/lang/String;[BJI)V

    :goto_1
    return-void

    .line 26
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to add Exif data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p0

    .line 27
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 28
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "cannot support this image file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object v3

    const v4, -0x56878686

    .line 4
    invoke-virtual {v3, v4}, Lt4/b;->e(I)[J

    move-result-object v4

    const v5, 0x75647461

    .line 5
    invoke-virtual {v3, v5}, Lt4/b;->e(I)[J

    move-result-object v5

    const v6, 0x6d646174

    .line 6
    invoke-virtual {v3, v6}, Lt4/b;->d(I)[J

    move-result-object v6

    const v7, 0x6d6f6f76

    .line 7
    invoke-virtual {v3, v7}, Lt4/b;->d(I)[J

    move-result-object v7

    const v8, 0x6d6f6f66

    .line 8
    invoke-virtual {v3, v8}, Lt4/b;->d(I)[J

    move-result-object v3

    .line 9
    array-length v3, v3

    if-gtz v3, :cond_10

    .line 10
    array-length v3, v7

    if-ltz v3, :cond_f

    array-length v3, v7

    const/4 v8, 0x2

    if-gt v3, v8, :cond_f

    .line 11
    array-length v3, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v9

    .line 12
    :goto_0
    array-length v10, v5

    if-lez v10, :cond_1

    move v14, v8

    goto :goto_1

    :cond_1
    move v14, v9

    :goto_1
    move v10, v9

    move v11, v10

    .line 13
    :goto_2
    array-length v12, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-ge v10, v12, :cond_3

    .line 14
    :try_start_2
    aget-wide v12, v6, v10

    aget-wide v15, v7, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v12, v12, v15

    if-lez v12, :cond_2

    move v11, v8

    :cond_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v2

    const/4 v1, 0x0

    move-object v2, v0

    goto/16 :goto_c

    .line 15
    :cond_3
    :try_start_3
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v10, v0, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v11, :cond_7

    .line 16
    :try_start_4
    array-length v0, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-int/2addr v0, v8

    move-object/from16 v23, v2

    :try_start_5
    aget-wide v1, v6, v0

    .line 17
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    sub-long v11, v15, v1

    .line 18
    aget-wide v15, v7, v9

    sub-long v15, v1, v15

    .line 19
    aget-wide v19, v7, v8

    aget-wide v21, v7, v9

    sub-long v8, v19, v21

    add-long v19, v11, v8

    const-wide/32 v21, 0x4000000

    cmp-long v19, v19, v21

    if-gtz v19, :cond_6

    move-wide/from16 v19, v1

    const/4 v13, 0x0

    .line 20
    aget-wide v0, v6, v13

    move/from16 v21, v14

    const/4 v2, 0x1

    aget-wide v13, v6, v2

    invoke-static {v10, v0, v1, v13, v14}, Lt4/a;->w(Ljava/io/RandomAccessFile;JJ)V

    const-wide/16 v0, 0x0

    cmp-long v6, v11, v0

    if-lez v6, :cond_4

    long-to-int v0, v11

    .line 21
    new-array v1, v0, [B

    move-wide/from16 v13, v19

    .line 22
    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v10, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_3

    :cond_4
    move-wide/from16 v13, v19

    const/4 v1, 0x0

    :goto_3
    long-to-int v0, v8

    .line 24
    new-array v2, v0, [B

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    const/4 v8, 0x0

    .line 25
    aget-wide v4, v7, v8

    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    invoke-virtual {v10, v2, v8, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 27
    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 28
    invoke-virtual {v10, v2, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    if-lez v6, :cond_5

    long-to-int v4, v11

    .line 29
    invoke-virtual {v10, v1, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 30
    :cond_5
    aget-wide v4, v7, v8

    const-wide/16 v11, 0x4

    add-long/2addr v4, v11

    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const v1, 0x66726565

    .line 31
    invoke-virtual {v10, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 32
    invoke-static {v2, v8, v0, v8}, Ljava/util/Arrays;->fill([BIIB)V

    add-int/lit8 v0, v0, -0x8

    .line 33
    invoke-virtual {v10, v2, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_5

    .line 34
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movie header or extra data size is too big. moov("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "), extra data("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v23, v2

    :goto_4
    move-object v2, v0

    move-object v1, v10

    goto/16 :goto_c

    :cond_7
    move-object/from16 v23, v2

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move/from16 v21, v14

    const-wide/16 v15, 0x0

    :goto_5
    if-eqz v3, :cond_9

    const/4 v1, 0x0

    .line 35
    aget-wide v4, v20, v1

    const/4 v0, 0x1

    .line 36
    aget-wide v8, v20, v0

    sub-long v11, v8, v4

    const-wide/16 v13, 0x1e

    cmp-long v2, v13, v11

    if-gtz v2, :cond_8

    .line 37
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt4/a;->f(D)I

    move-result v16

    .line 38
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt4/a;->f(D)I

    move-result v17

    const/16 v22, 0x0

    move-object v15, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    .line 39
    invoke-static/range {v15 .. v22}, Lt4/a;->C(Ljava/io/RandomAccessFile;IIJJZ)V

    .line 40
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 41
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 42
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :cond_8
    sub-long/2addr v13, v11

    long-to-int v2, v13

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    if-eqz v21, :cond_a

    const/16 v2, 0x1e

    goto :goto_6

    :cond_a
    const/16 v2, 0x26

    :goto_6
    if-eqz v3, :cond_c

    move-object/from16 v7, v20

    :cond_b
    :goto_7
    const-wide/16 v3, 0x0

    goto :goto_8

    :cond_c
    if-eqz v21, :cond_b

    move-object/from16 v7, v22

    goto :goto_7

    :goto_8
    cmp-long v3, v15, v3

    if-lez v3, :cond_d

    move v9, v1

    .line 43
    :goto_9
    :try_start_7
    array-length v1, v7

    if-ge v9, v1, :cond_d

    .line 44
    aget-wide v3, v7, v9

    add-long/2addr v3, v15

    aput-wide v3, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 45
    :cond_d
    array-length v1, v7

    const/4 v0, 0x1

    if-le v1, v0, :cond_e

    move-object v11, v10

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, v21

    move-object v15, v7

    move/from16 v16, v2

    .line 46
    invoke-static/range {v11 .. v16}, Lt4/a;->v(Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/lang/String;Z[JI)V

    goto :goto_a

    :cond_e
    const-string v0, "ISOEditor"

    const-string v1, "The file has no moov Box"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 48
    :goto_a
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 49
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_3
    move-exception v0

    move-object v1, v10

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v1, v10

    goto :goto_e

    :cond_f
    move-object/from16 v23, v2

    .line 50
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abnormal file. the number of moov box must be one"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v23, v2

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support. The file has moof box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 v23, v2

    :goto_b
    move-object v2, v0

    const/4 v1, 0x0

    .line 52
    :goto_c
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catch_1
    move-exception v0

    goto :goto_e

    :catchall_7
    move-exception v0

    const/4 v1, 0x0

    goto :goto_f

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 53
    :goto_e
    :try_start_c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to edit location"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    :goto_f
    if-eqz v1, :cond_11

    .line 54
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 55
    :cond_11
    throw v0
.end method

.method private static j(Ljava/lang/String;[B)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3
    invoke-static {v4}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object v4

    const v5, 0x76696465

    .line 4
    invoke-virtual {v4, v5}, Lt4/b;->f(I)[J

    move-result-object v5

    .line 5
    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_e

    const v6, 0x6d646174

    .line 6
    invoke-virtual {v4, v6}, Lt4/b;->d(I)[J

    move-result-object v6

    const v8, 0x6d6f6f76

    .line 7
    invoke-virtual {v4, v8}, Lt4/b;->d(I)[J

    move-result-object v8

    const v9, 0x6d6f6f66

    .line 8
    invoke-virtual {v4, v9}, Lt4/b;->d(I)[J

    move-result-object v4

    .line 9
    array-length v4, v4

    if-gtz v4, :cond_d

    .line 10
    array-length v4, v8

    if-ltz v4, :cond_c

    array-length v4, v8

    const/4 v9, 0x2

    if-gt v4, v9, :cond_c

    const/4 v4, 0x0

    move v10, v4

    move v11, v10

    .line 11
    :goto_0
    array-length v12, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-ge v10, v12, :cond_1

    .line 12
    :try_start_2
    aget-wide v12, v6, v10

    aget-wide v14, v8, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    move v11, v7

    :cond_0
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v3

    goto/16 :goto_9

    .line 13
    :cond_1
    :try_start_3
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v10, v0, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const-wide/32 v12, 0x4000000

    if-eqz v11, :cond_5

    .line 14
    :try_start_4
    array-length v0, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    sub-int/2addr v0, v7

    move-object/from16 v16, v3

    :try_start_5
    aget-wide v2, v6, v0

    .line 15
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v17

    sub-long v14, v17, v2

    .line 16
    aget-wide v17, v8, v4

    sub-long v17, v2, v17

    .line 17
    aget-wide v19, v8, v7

    aget-wide v21, v8, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v23, v10

    sub-long v9, v19, v21

    add-long v19, v14, v9

    cmp-long v19, v19, v12

    if-gtz v19, :cond_4

    .line 18
    :try_start_6
    aget-wide v0, v6, v4

    aget-wide v11, v6, v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v6, v23

    :try_start_7
    invoke-static {v6, v0, v1, v11, v12}, Lt4/a;->w(Ljava/io/RandomAccessFile;JJ)V

    const-wide/16 v0, 0x0

    cmp-long v11, v14, v0

    if-lez v11, :cond_2

    long-to-int v0, v14

    .line 19
    new-array v1, v0, [B

    .line 20
    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 21
    invoke-virtual {v6, v1, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    long-to-int v0, v9

    .line 22
    new-array v9, v0, [B

    move-wide/from16 v21, v14

    .line 23
    aget-wide v13, v8, v4

    invoke-virtual {v6, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 24
    invoke-virtual {v6, v9, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 25
    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 26
    invoke-virtual {v6, v9, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    if-lez v11, :cond_3

    move-wide/from16 v2, v21

    long-to-int v2, v2

    .line 27
    invoke-virtual {v6, v1, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 28
    :cond_3
    aget-wide v1, v8, v4

    const-wide/16 v10, 0x4

    add-long/2addr v1, v10

    invoke-virtual {v6, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const v1, 0x66726565

    .line 29
    invoke-virtual {v6, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 30
    invoke-static {v9, v4, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    add-int/lit8 v0, v0, -0x8

    .line 31
    invoke-virtual {v6, v9, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v6, v23

    goto/16 :goto_7

    :cond_4
    move-wide v2, v14

    move-object/from16 v6, v23

    .line 32
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Movie header or extra data size is too big. moov("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), extra data("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    :goto_2
    move-object v6, v10

    goto/16 :goto_7

    :cond_5
    move-object/from16 v16, v3

    move-object v6, v10

    const-wide/16 v17, 0x0

    .line 33
    :goto_3
    array-length v0, v5

    array-length v1, v8

    add-int/2addr v0, v1

    .line 34
    new-array v1, v0, [J

    .line 35
    aget-wide v2, v5, v4

    aput-wide v2, v1, v4

    .line 36
    aget-wide v2, v5, v7

    aput-wide v2, v1, v7

    .line 37
    aget-wide v2, v8, v4

    const/4 v5, 0x2

    aput-wide v2, v1, v5

    const/4 v2, 0x3

    .line 38
    aget-wide v8, v8, v7

    aput-wide v8, v1, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v17, v2

    if-lez v5, :cond_6

    move v2, v4

    :goto_4
    if-ge v2, v0, :cond_6

    .line 39
    aget-wide v8, v1, v2

    add-long v8, v8, v17

    aput-wide v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 40
    :cond_6
    aget-wide v2, v1, v7

    .line 41
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/32 v9, 0x4000000

    cmp-long v5, v7, v9

    if-gtz v5, :cond_b

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_7

    long-to-int v5, v7

    .line 42
    new-array v9, v5, [B

    .line 43
    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 44
    invoke-virtual {v6, v9, v4, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-object/from16 v5, p1

    goto :goto_5

    :cond_7
    move-object/from16 v5, p1

    const/4 v9, 0x0

    .line 45
    :goto_5
    array-length v10, v5

    add-int/lit8 v10, v10, 0x8

    .line 46
    invoke-static {v6, v5, v2, v3}, Lt4/a;->B(Ljava/io/RandomAccessFile;[BJ)V

    move v5, v4

    :goto_6
    if-ge v5, v0, :cond_9

    .line 47
    aget-wide v11, v1, v5

    invoke-virtual {v6, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v11, v5, 0x1

    .line 48
    aget-wide v11, v1, v11

    aget-wide v13, v1, v5

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v11, v13

    if-gtz v13, :cond_8

    long-to-int v11, v11

    add-int/2addr v11, v10

    .line 49
    invoke-virtual {v6, v11}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 50
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file has too big udta box. size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v9, :cond_a

    int-to-long v0, v10

    add-long/2addr v2, v0

    .line 51
    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v7

    .line 52
    invoke-virtual {v6, v9, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 53
    :cond_a
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 54
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_4
    move-exception v0

    move-object v2, v6

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v2, v6

    goto :goto_c

    .line 55
    :cond_b
    :try_start_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file has too big data except mdat. size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v2, v6

    goto :goto_a

    :cond_c
    move-object/from16 v16, v3

    .line 56
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abnormal file. the number of moov box must be one"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v16, v3

    .line 57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support. The file has moof box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v16, v3

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "video track not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    :goto_8
    move-object v1, v0

    :goto_9
    const/4 v2, 0x0

    .line 59
    :goto_a
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catch_1
    move-exception v0

    goto :goto_c

    :catchall_9
    move-exception v0

    const/4 v2, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    .line 60
    :goto_c
    :try_start_d
    new-instance v1, Ljava/io/IOException;

    const-string v3, "failed to edit location"

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :catchall_a
    move-exception v0

    :goto_d
    if-eqz v2, :cond_f

    .line 61
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 62
    :cond_f
    throw v0
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "ISOEditor"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object p0

    const v2, 0x76696465

    .line 4
    invoke-virtual {p0, v2}, Lt4/b;->f(I)[J

    move-result-object p0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video track range : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    array-length p0, p0

    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    const-string/jumbo p0, "video track not found"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return v1

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return v2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_2
    const-string p0, "file not found"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    return v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 11
    :cond_2
    throw p0
.end method

.method private l(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lt4/a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lt4/a;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 3
    :cond_1
    iget-object v0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lt4/a;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lt4/a;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_2
    if-ne v0, v2, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-boolean v0, p0, Lt4/a;->c:Z

    if-eqz v0, :cond_4

    return v3

    .line 5
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit cannot support. keyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMimeType : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lt4/a;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ISOEditor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static n(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "ISOEditor"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object p0

    const v2, 0x6d6f6f66

    .line 4
    invoke-virtual {p0, v2}, Lt4/b;->c(I)[J

    move-result-object v2

    const v4, 0x6d6f6f76

    .line 5
    invoke-virtual {p0, v4}, Lt4/b;->c(I)[J

    move-result-object p0

    .line 6
    array-length p0, p0

    const/4 v4, 0x2

    if-eq p0, v4, :cond_0

    const-string p0, "moov is not one"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return v1

    .line 9
    :cond_0
    :try_start_2
    array-length p0, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return p0

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_3
    const-string p0, "file not found"

    .line 11
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_1
    return v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 13
    :cond_3
    throw p0
.end method

.method private o(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lt4/a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lt4/a;->c:Z

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove cannot support. keyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMimeType : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lt4/a;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ISOEditor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private p(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lt4/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lt4/a;->r(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lt4/a;->q(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private q(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/media/ExifInterface;

    iget-object p0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-direct {p1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "DateTimeOriginal"

    .line 2
    invoke-virtual {p1, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DateTimeDigitized"

    .line 3
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ISOEditor"

    const-string p1, "creation time info of this file is restorable"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private r(I)Z
    .locals 2

    const-string p1, "ISOEditor"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object p0

    const v0, 0x736f6374

    .line 4
    invoke-virtual {p0, v0}, Lt4/b;->c(I)[J

    move-result-object p0

    .line 5
    array-length p0, p0

    if-lez p0, :cond_0

    const-string p0, "creation time info of this file is restorable"

    .line 6
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return p0

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string p0, "file not found"

    .line 8
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 10
    :cond_2
    throw p0
.end method

.method private static u(D)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-long v0, p0

    long-to-double v2, v0

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, p0, v2

    double-to-long v4, v4

    long-to-double v6, v4

    div-double/2addr v6, v2

    sub-double/2addr p0, v6

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr p0, v2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/10000000"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static v(Ljava/io/RandomAccessFile;Ljava/lang/String;Ljava/lang/String;Z[JI)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt4/a;->f(D)I

    move-result v1

    .line 2
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lt4/a;->f(D)I

    move-result v2

    const/4 v11, 0x1

    .line 3
    aget-wide v12, v9, v11

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long v14, v3, v12

    const-wide/32 v3, 0x4000000

    cmp-long v0, v14, v3

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    const/4 v7, 0x0

    if-lez v3, :cond_0

    long-to-int v0, v14

    .line 5
    new-array v3, v0, [B

    .line 6
    invoke-virtual {v8, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    invoke-virtual {v8, v3, v7, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    const-string v6, "file has too big udta box. size : "

    const-wide/32 v16, 0x7fffffff

    const-wide/16 v3, 0x1e

    if-eqz p3, :cond_3

    add-long v18, v12, v3

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-wide v3, v12

    move-wide/from16 p1, v12

    move-object v12, v5

    move-object v13, v6

    move-wide/from16 v5, v18

    move v7, v11

    .line 8
    invoke-static/range {v0 .. v7}, Lt4/a;->C(Ljava/io/RandomAccessFile;IIJJZ)V

    const/4 v7, 0x0

    .line 9
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_2

    .line 10
    aget-wide v0, v9, v7

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v0, v7, 0x1

    .line 11
    aget-wide v0, v9, v0

    aget-wide v2, v9, v7

    sub-long/2addr v0, v2

    cmp-long v2, v0, v16

    if-gtz v2, :cond_1

    long-to-int v0, v0

    add-int/2addr v0, v10

    .line 12
    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v12, :cond_4

    int-to-long v0, v10

    move-wide/from16 v5, p1

    add-long/2addr v0, v5

    .line 14
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v14

    const/4 v7, 0x0

    .line 15
    invoke-virtual {v8, v12, v7, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_2

    :cond_3
    move-wide/from16 v23, v12

    move-object v12, v5

    move-object v13, v6

    move-wide/from16 v5, v23

    const/16 v0, 0x1e

    .line 16
    invoke-static {v8, v5, v6, v0}, Lt4/a;->A(Ljava/io/RandomAccessFile;JI)V

    const-wide/16 v18, 0x8

    add-long v18, v5, v18

    add-long v20, v18, v3

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, v18

    move-wide/from16 v18, v5

    move-wide/from16 v5, v20

    move/from16 v7, v22

    .line 17
    invoke-static/range {v0 .. v7}, Lt4/a;->C(Ljava/io/RandomAccessFile;IIJJZ)V

    .line 18
    aget-wide v0, v9, v11

    const/4 v2, 0x0

    aget-wide v3, v9, v2

    sub-long/2addr v0, v3

    .line 19
    aget-wide v3, v9, v2

    invoke-virtual {v8, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    cmp-long v3, v0, v16

    if-gtz v3, :cond_5

    long-to-int v0, v0

    add-int/2addr v0, v10

    .line 20
    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-eqz v12, :cond_4

    int-to-long v0, v10

    add-long v0, v18, v0

    .line 21
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v0, v14

    .line 22
    invoke-virtual {v8, v12, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_4
    :goto_2
    return-void

    .line 23
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file has too big data except mdat. size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static w(Ljava/io/RandomAccessFile;JJ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sub-long/2addr p3, p1

    const-wide v0, 0xffffffffL

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int p1, p3

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mdat box size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ". This file cannot be supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static x(Ljava/io/RandomAccessFile;JZ[JI)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x1

    .line 1
    aget-wide v6, v3, v5

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v10, 0x4000000

    cmp-long v10, v8, v10

    if-gtz v10, :cond_6

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    const/4 v12, 0x0

    if-lez v11, :cond_0

    long-to-int v10, v8

    .line 3
    new-array v11, v10, [B

    .line 4
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    invoke-virtual {v0, v11, v12, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-object v10, v11

    :cond_0
    const-string v11, "file has too big udta box. size : "

    if-eqz p3, :cond_3

    .line 6
    invoke-static {v0, v1, v2, v6, v7}, Lt4/a;->z(Ljava/io/RandomAccessFile;JJ)V

    move v1, v12

    .line 7
    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_2

    .line 8
    aget-wide v12, v3, v1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v1, 0x1

    .line 9
    aget-wide v12, v3, v2

    aget-wide v17, v3, v1

    sub-long v12, v12, v17

    const-wide/32 v15, 0x7fffffff

    cmp-long v2, v12, v15

    if-gtz v2, :cond_1

    long-to-int v2, v12

    add-int/2addr v2, v4

    .line 10
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v1, v1, 0x2

    const/4 v12, 0x0

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v10, :cond_4

    int-to-long v1, v4

    add-long/2addr v6, v1

    .line 12
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v1, v8

    const/4 v12, 0x0

    .line 13
    invoke-virtual {v0, v10, v12, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1

    :cond_3
    const/16 v13, 0x10

    .line 14
    invoke-static {v0, v6, v7, v13}, Lt4/a;->A(Ljava/io/RandomAccessFile;JI)V

    const-wide/16 v13, 0x8

    add-long/2addr v13, v6

    .line 15
    invoke-static {v0, v1, v2, v13, v14}, Lt4/a;->z(Ljava/io/RandomAccessFile;JJ)V

    .line 16
    aget-wide v1, v3, v5

    aget-wide v13, v3, v12

    sub-long/2addr v1, v13

    .line 17
    aget-wide v13, v3, v12

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/32 v12, 0x7fffffff

    cmp-long v3, v1, v12

    if-gtz v3, :cond_5

    long-to-int v1, v1

    add-int/2addr v1, v4

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-eqz v10, :cond_4

    int-to-long v1, v4

    add-long/2addr v6, v1

    .line 19
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v1, v8

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v10, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_4
    :goto_1
    return-void

    .line 21
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file has too big data except mdat. size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static y(Ljava/lang/String;[BJI)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v8, p2

    move/from16 v2, p4

    const-string v3, "ISOEditor"

    .line 1
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c

    .line 2
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3
    invoke-static {v4}, Lt4/b;->a(Ljava/io/FileDescriptor;)Lt4/b;

    move-result-object v4

    const v5, 0x6d646174

    .line 4
    invoke-virtual {v4, v5}, Lt4/b;->c(I)[J

    move-result-object v6

    .line 5
    array-length v7, v6

    const/4 v11, 0x2

    if-gt v7, v11, :cond_8

    .line 6
    invoke-virtual {v4, v5}, Lt4/b;->b(I)I

    move-result v5

    const/16 v7, 0x10

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lt v5, v7, :cond_0

    move v5, v12

    goto :goto_0

    :cond_0
    move v5, v13

    .line 7
    :goto_0
    aget-wide v6, v6, v13

    const-wide/16 v14, 0x8

    sub-long/2addr v6, v14

    const v14, 0x696c6f63

    .line 8
    invoke-virtual {v4, v14}, Lt4/b;->c(I)[J

    move-result-object v4

    .line 9
    array-length v14, v4

    if-gt v14, v11, :cond_7

    .line 10
    aget-wide v14, v4, v13

    .line 11
    aget-wide v11, v4, v12

    aget-wide v16, v4, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    sub-long v11, v11, v16

    :try_start_2
    const-string/jumbo v4, "temp"

    const-string/jumbo v13, "tmp"

    .line 12
    invoke-static {v4, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 13
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    move-object/from16 v18, v10

    .line 14
    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    .line 15
    :try_start_4
    invoke-static {v4, v10}, Lt4/a;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    .line 16
    :try_start_5
    invoke-static {v4}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 17
    invoke-static {v10}, Lt4/a;->c(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    .line 18
    :try_start_6
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 19
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 v19, v10

    .line 20
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v20, v4

    :try_start_9
    const-string v4, "rw"

    invoke-direct {v10, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 21
    :try_start_a
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v4, v13, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 22
    :try_start_b
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 23
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v23, v13

    :try_start_c
    array-length v13, v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-wide/from16 v24, v11

    int-to-long v11, v13

    cmp-long v11, v21, v11

    if-lez v11, :cond_1

    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    long-to-int v11, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v4

    move-object/from16 v4, v19

    move-object/from16 v11, v20

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object v12, v4

    move-object/from16 v4, v19

    move-object/from16 v11, v20

    goto/16 :goto_e

    :cond_1
    :try_start_e
    array-length v11, v0

    .line 24
    :goto_1
    new-array v11, v11, [B

    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exifOffset : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", new exif data size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v12, v8

    const/4 v13, 0x0

    .line 26
    invoke-virtual {v4, v11, v13, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 27
    invoke-virtual {v10, v11, v13, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 28
    array-length v13, v0

    move-wide/from16 v21, v14

    const/4 v14, 0x0

    invoke-virtual {v10, v0, v14, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v14, v2

    add-long v13, v8, v14

    .line 29
    invoke-virtual {v4, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    long-to-int v0, v13

    sub-int/2addr v0, v12

    sub-int/2addr v0, v2

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v13, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 31
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v0, v14

    sub-int/2addr v0, v12

    sub-int/2addr v0, v2

    invoke-virtual {v10, v11, v13, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 32
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v5, :cond_2

    .line 33
    :try_start_f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v11
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2

    .line 34
    :cond_2
    :try_start_10
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v11, v0

    .line 35
    :goto_2
    invoke-virtual {v10, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v5, :cond_3

    int-to-long v5, v1

    add-long/2addr v5, v11

    .line 36
    :try_start_11
    invoke-virtual {v10, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_3

    :cond_3
    long-to-int v0, v11

    add-int/2addr v0, v1

    .line 37
    :try_start_12
    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 38
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdat size changed. before : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", after : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v1

    add-long/2addr v11, v5

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    cmp-long v0, v21, v8

    if-lez v0, :cond_4

    add-long v14, v21, v5

    goto :goto_4

    :cond_4
    move-wide/from16 v14, v21

    :goto_4
    move-object v2, v10

    move-object v12, v4

    move-object/from16 v11, v20

    move-wide v3, v14

    move-wide/from16 v5, v24

    move v7, v1

    move-wide/from16 v8, p2

    .line 39
    :try_start_13
    invoke-static/range {v2 .. v9}, Lt4/a;->b(Ljava/io/RandomAccessFile;JJIJ)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 40
    :try_start_14
    invoke-static/range {v19 .. v19}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 41
    invoke-static {v11}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 42
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 43
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 44
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    .line 45
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_c

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v12, v4

    move-object/from16 v11, v20

    :goto_5
    move-object/from16 v4, v19

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object v12, v4

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v12, v4

    move-object/from16 v11, v20

    move-object v2, v13

    move-object/from16 v4, v19

    goto/16 :goto_11

    :catch_3
    move-exception v0

    move-object v12, v4

    move-object/from16 v23, v13

    :goto_6
    move-object/from16 v11, v20

    :goto_7
    move-object/from16 v4, v19

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v11, v20

    move-object v2, v13

    move-object/from16 v4, v19

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v11, v20

    move-object/from16 v4, v19

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 v11, v20

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v11, v20

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v11, v4

    :goto_8
    move-object v2, v13

    move-object/from16 v4, v19

    const/4 v10, 0x0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v11, v4

    move-object/from16 v23, v13

    :goto_9
    move-object/from16 v4, v19

    const/4 v10, 0x0

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object/from16 v19, v10

    move-object v2, v13

    move-object/from16 v4, v19

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v19, v10

    move-object/from16 v23, v13

    move-object/from16 v4, v19

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v2, v13

    const/4 v4, 0x0

    :goto_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    const/4 v12, 0x0

    goto :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v23, v13

    const/4 v4, 0x0

    :goto_c
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    const/4 v12, 0x0

    .line 46
    :goto_e
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    move-object/from16 v2, v23

    :try_start_17
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 47
    :try_start_18
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v3, p0

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 48
    :try_start_19
    invoke-static {v1, v4}, Lt4/a;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 49
    invoke-static {v1}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v4}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 51
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Failed to write new Exif"

    invoke-direct {v3, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :catchall_9
    move-exception v0

    move-object v11, v4

    goto :goto_f

    :catchall_a
    move-exception v0

    :goto_f
    move-object v4, v1

    goto :goto_11

    :catchall_b
    move-exception v0

    goto :goto_11

    :catchall_c
    move-exception v0

    :goto_10
    move-object/from16 v2, v23

    .line 52
    :goto_11
    :try_start_1a
    invoke-static {v4}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 53
    invoke-static {v11}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    if-eqz v12, :cond_5

    .line 55
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    :cond_5
    if-eqz v10, :cond_6

    .line 56
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 57
    :cond_6
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    :catchall_d
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_15

    :catch_9
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_14

    :catchall_e
    move-exception v0

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object/from16 v18, v10

    const/4 v4, 0x0

    :goto_12
    const/16 v16, 0x0

    goto :goto_15

    :catch_b
    move-exception v0

    move-object/from16 v18, v10

    const/4 v4, 0x0

    :goto_13
    const/16 v16, 0x0

    .line 58
    :goto_14
    :try_start_1b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to copy original file to temp file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    :catchall_10
    move-exception v0

    .line 59
    :goto_15
    :try_start_1c
    invoke-static {v4}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 60
    invoke-static/range {v16 .. v16}, Lt4/a;->c(Ljava/io/Closeable;)V

    .line 61
    throw v0

    :cond_7
    move-object/from16 v18, v10

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support multi iloc box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v18, v10

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot support multi mdat box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_16

    :catchall_12
    move-exception v0

    move-object/from16 v18, v10

    :goto_16
    move-object v1, v0

    .line 64
    :try_start_1d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    move-object v2, v0

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v1
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_c

    .line 65
    :catch_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static z(Ljava/io/RandomAccessFile;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 p3, 0x10

    .line 2
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const p3, 0x736f6374

    .line 3
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 4
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public m(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lt4/a;->o(I)Z

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lt4/a;->p(I)Z

    move-result p0

    return p0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lt4/a;->l(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public s()V
    .locals 9

    .line 1
    iget v0, p0, Lt4/a;->b:I

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 2
    :goto_0
    iget-object v5, p0, Lt4/a;->d:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v0, v5, :cond_5

    .line 3
    :try_start_0
    iget-object v5, p0, Lt4/a;->d:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt4/a$b;

    if-eqz v5, :cond_4

    .line 4
    iget v8, v5, Lt4/a$b;->a:I

    if-eq v8, v7, :cond_3

    if-eq v8, v6, :cond_2

    const/4 v6, 0x3

    if-eq v8, v6, :cond_1

    const/16 v6, 0x64

    if-eq v8, v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, v5, Lt4/a$b;->c:[B

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, v5, Lt4/a$b;->b:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v2, v5, Lt4/a$b;->b:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_3
    iget-object v1, v5, Lt4/a$b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to saveAttributes"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_5
    iget v0, p0, Lt4/a;->b:I

    if-ne v0, v7, :cond_8

    if-eqz v1, :cond_6

    .line 11
    iget-object v0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lt4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 12
    iget-object v0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lt4/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v4, :cond_9

    .line 13
    iget-object p0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {p0, v4}, Lt4/a;->j(Ljava/lang/String;[B)V

    goto :goto_2

    :cond_8
    if-ne v0, v6, :cond_9

    .line 14
    iget-object p0, p0, Lt4/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lt4/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void

    .line 15
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "this file is unsupported file format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lt4/a;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    const/4 v1, 0x3

    if-gt p1, v1, :cond_3

    if-nez p2, :cond_2

    const/4 p2, 0x2

    if-ne v0, p2, :cond_1

    if-eq p1, v1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    const-string p2, "Remove"

    goto :goto_0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "remove cannot support"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    :goto_0
    new-instance v0, Lt4/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lt4/a$b;-><init>(ILjava/lang/String;Lt4/a$a;)V

    .line 4
    iget-object p0, p0, Lt4/a;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid keyCode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "this file is unsupported file format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
