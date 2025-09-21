.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;
.super Ljava/lang/Object;
.source "SEFParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

.field private static final SEF_FORMAT_VERSION:I = 0x6a

.field private static final SEF_SDR_DEFAULT_SIZE:I = 0xc

.field private static final SEF_SIGNATURE_HEAD:Ljava/lang/String; = "SEFH"

.field private static final SEF_SIGNATURE_TAIL:Ljava/lang/String; = "SEFT"

.field private static final TAG:Ljava/lang/String;

.field private static final payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final dataPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;",
            ">;"
        }
    .end annotation
.end field

.field private fd:Ljava/io/FileDescriptor;

.field private fileSize:J

.field private numOfData:I

.field private sefHeadOffset:J

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    .line 1
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;

    invoke-static {v0}, Lkotlin/jvm/internal/x;->b(Ljava/lang/Class;)Lz6/c;

    move-result-object v0

    invoke-interface {v0}, Lz6/c;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SEFParser"

    :cond_0
    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Lk6/j;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SIGNATURE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SEF_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v2

    aput-object v2, v0, v1

    .line 4
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->VERSION:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 5
    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->NUM_OF_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v4

    aput-object v4, v0, v1

    .line 6
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SUB_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    .line 7
    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_TYPE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 8
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 10
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->KEY_LENGTH:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object v2

    aput-object v2, v0, v1

    .line 11
    invoke-static {v0}, Ll6/i0;->i([Lk6/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->payload:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;-><init>(Ljava/io/FileDescriptor;ILkotlin/jvm/internal/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fd:Ljava/io/FileDescriptor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->parse(Ljava/io/FileDescriptor;)V

    .line 3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataInfos:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/FileDescriptor;ILkotlin/jvm/internal/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static final synthetic access$getPayload$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->payload:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->getOffset()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;->getLength()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1, v0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, p0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getDataPosition(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    return-wide v0
.end method

.method public final parse(Ljava/io/FileDescriptor;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    const-string v3, "fd"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fd:Ljava/io/FileDescriptor;

    .line 2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    .line 4
    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->payload:Ljava/util/Map;

    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SIGNATURE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v4, v5}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iget-wide v8, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    int-to-long v10, v6

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 6
    invoke-static {v4, v5}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v7}, Ljava/io/FileInputStream;->read([BII)I

    const-string v7, "SEFT"

    .line 7
    sget-object v9, Lb7/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "This file was not SEF format"

    if-eqz v7, :cond_6

    .line 8
    :try_start_1
    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SEF_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v4, v7}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int/2addr v6, v11

    .line 9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    iget-wide v12, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    int-to-long v14, v6

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 10
    sget-object v11, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    invoke-static {v11, v3, v1, v7}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v7

    add-int/2addr v6, v7

    .line 11
    iget-wide v12, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->fileSize:J

    int-to-long v6, v6

    sub-long/2addr v12, v6

    iput-wide v12, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    .line 12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    iget-wide v12, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v6, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 13
    invoke-static {v4, v5}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v1, v8, v4}, Ljava/io/FileInputStream;->read([BII)I

    const-string v4, "SEFH"

    .line 14
    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->VERSION:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v11, v3, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->versionCode:I

    .line 16
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->NUM_OF_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v11, v3, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->numOfData:I

    if-ltz v2, :cond_1

    move v4, v8

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 17
    iget-object v6, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataInfos:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;

    .line 18
    sget-object v9, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    sget-object v10, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SUB_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v9, v3, v1, v10}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v10

    int-to-short v10, v10

    .line 19
    sget-object v11, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_TYPE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v9, v3, v1, v11}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v11

    int-to-short v11, v11

    .line 20
    sget-object v12, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_OFFSET:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v9, v3, v1, v12}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v12

    .line 21
    sget-object v13, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_LENGTH:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v9, v3, v1, v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v9

    .line 22
    invoke-direct {v7, v10, v11, v12, v9}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;-><init>(SSII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v4, v2, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataInfos:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;

    .line 25
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iget-wide v6, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getOffset()I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 26
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->SUB_DATA:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v5, v3, v1, v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    .line 27
    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->DATA_TYPE:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v5, v3, v1, v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v6

    int-to-short v6, v6

    .line 28
    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getType()S

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v8

    :goto_3
    if-eqz v7, :cond_3

    .line 29
    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;->KEY_LENGTH:Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;

    invoke-static {v5, v3, v1, v6}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result v5

    .line 30
    invoke-virtual {v3, v1, v8, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 31
    invoke-virtual {v1}, [B->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->TAG:Ljava/lang/String;

    const-string v7, "found key="

    invoke-static {v7, v5}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v6, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->dataPositions:Ljava/util/Map;

    new-instance v7, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;

    .line 34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    .line 35
    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getLength()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v13

    move-wide v15, v9

    iget-wide v8, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->sefHeadOffset:J

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getOffset()I

    move-result v4

    move-object/from16 v17, v1

    int-to-long v0, v4

    sub-long/2addr v8, v0

    sub-long/2addr v13, v8

    sub-long/2addr v11, v13

    move-wide v0, v15

    .line 36
    invoke-direct {v7, v0, v1, v11, v12}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataPosition;-><init>(JJ)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    goto :goto_2

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type mismatch between info("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$DataInfo;->getType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") & data("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_4
    sget-object v0, Lk6/q;->a:Lk6/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 40
    invoke-static {v3, v0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 41
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 43
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
