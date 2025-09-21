.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;
.super Ljava/lang/Object;
.source "MotionPhotoParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;

.field public static final MOTION_PHOTO_DATA_TYPE:J = 0xa30L

.field public static final MOTION_PHOTO_KEY_NAME:Ljava/lang/String; = "MotionPhoto_Data"


# instance fields
.field private final f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;-><init>(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;-><init>(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 1

    const-string v0, "inStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;-><init>(Ljava/io/FileInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private final read(I)J
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readBuffer(I)[B

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    .line 2
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v0, v3

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method

.method private final readBuffer(I)[B
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    new-array v0, v0, [B

    .line 1
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->read([BII)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "support size in range 1 to 8"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final readString(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readBuffer(I)[B

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lb7/c;->b:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public final getFileSize()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final parseSef()Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->size()J

    move-result-wide v1

    const/4 v3, 0x4

    int-to-long v4, v3

    sub-long/2addr v1, v4

    .line 2
    iget-object v6, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    .line 3
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SEFT"

    .line 4
    invoke-static {v6, v7}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    sub-long/2addr v1, v4

    .line 5
    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    .line 6
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 7
    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    .line 8
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SEFH"

    .line 9
    invoke-static {v4, v5}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v7

    .line 10
    :cond_1
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    .line 11
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v4

    if-gez v8, :cond_3

    :goto_0
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const/4 v8, 0x2

    .line 12
    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    .line 13
    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v9

    .line 14
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v11

    .line 15
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v13

    const-wide/16 v15, 0xa30

    cmp-long v15, v9, v15

    if-nez v15, :cond_2

    sub-long/2addr v1, v11

    .line 16
    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    .line 17
    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    .line 18
    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_3

    .line 19
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionPhoto_Data"

    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->position()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v13, v14}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;-><init>(JJ)V

    return-object v1

    :cond_2
    cmp-long v8, v6, v4

    if-gez v8, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t get position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
