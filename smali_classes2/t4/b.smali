.class public Lt4/b;
.super Ljava/lang/Object;
.source "IsoInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/b$a;
    }
.end annotation


# static fields
.field private static final c:Z


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IsoInterface"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lt4/b;->c:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5

    const-string v0, "IsoInterface"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt4/b;->a:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lt4/b;->b:Ljava/util/List;

    const-wide/16 v1, 0x4

    .line 4
    :try_start_0
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, v1, v2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-static {p1}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ftyp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    const v3, 0x66747970

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    if-nez v1, :cond_2

    .line 7
    :try_start_2
    sget-boolean p1, Lt4/b;->c:Z

    if-eqz p1, :cond_1

    const-string p1, "Missing \'ftyp\' header"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 9
    :cond_2
    sget v0, Landroid/system/OsConstants;->SEEK_END:I

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v3

    .line 10
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    :goto_0
    const-string v0, ""

    .line 11
    invoke-static {p1, v3, v4, v0}, Lt4/b;->h(Ljava/io/FileDescriptor;JLjava/lang/String;)Lt4/b$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lt4/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 13
    :catch_1
    :cond_3
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lt4/b;->a:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 14
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/b$a;

    .line 16
    iget-object v1, p0, Lt4/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, v0, Lt4/b$a;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static a(Ljava/io/FileDescriptor;)Lt4/b;
    .locals 1

    new-instance v0, Lt4/b;

    invoke-direct {v0, p0}, Lt4/b;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method private static g(I)Z
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64696e66 -> :sswitch_0
        0x65647473 -> :sswitch_0
        0x68696e66 -> :sswitch_0
        0x686e7469 -> :sswitch_0
        0x696c7374 -> :sswitch_0
        0x6970726f -> :sswitch_0
        0x6a703268 -> :sswitch_0
        0x6d646961 -> :sswitch_0
        0x6d657461 -> :sswitch_0
        0x6d667261 -> :sswitch_0
        0x6d696e66 -> :sswitch_0
        0x6d6f6f66 -> :sswitch_0
        0x6d6f6f76 -> :sswitch_0
        0x73696e66 -> :sswitch_0
        0x7374626c -> :sswitch_0
        0x74726166 -> :sswitch_0
        0x7472616b -> :sswitch_0
        0x74726566 -> :sswitch_0
        0x75647461 -> :sswitch_0
    .end sparse-switch
.end method

.method private static h(Ljava/io/FileDescriptor;JLjava/lang/String;)Lt4/b$a;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    sget v4, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v5, 0x0

    invoke-static {v0, v5, v6, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v7

    sub-long v9, v1, v7

    const/16 v4, 0x8

    int-to-long v11, v4

    cmp-long v11, v9, v11

    const/4 v12, 0x0

    if-gez v11, :cond_0

    return-object v12

    .line 2
    :cond_0
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v13

    .line 3
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v11

    cmp-long v5, v13, v5

    const/16 v6, 0x10

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x1

    cmp-long v5, v13, v9

    if-nez v5, :cond_2

    .line 4
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v4

    int-to-long v4, v4

    .line 5
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v9

    int-to-long v9, v9

    const/16 v13, 0x20

    shl-long/2addr v4, v13

    const-wide v13, 0xffffffffL

    and-long/2addr v9, v13

    or-long/2addr v9, v4

    move v4, v6

    goto :goto_0

    :cond_2
    move-wide v9, v13

    :goto_0
    int-to-long v13, v4

    cmp-long v5, v9, v13

    const-string v13, "IsoInterface"

    if-ltz v5, :cond_10

    add-long v14, v7, v9

    cmp-long v16, v14, v1

    if-lez v16, :cond_3

    goto/16 :goto_4

    .line 6
    :cond_3
    new-instance v1, Lt4/b$a;

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v12, 0x0

    aput-wide v7, v2, v12

    const/16 v17, 0x1

    aput-wide v9, v2, v17

    invoke-direct {v1, v11, v2}, Lt4/b$a;-><init>(I[J)V

    .line 7
    iput v4, v1, Lt4/b$a;->g:I

    const v2, 0x68646c72    # 4.3148E24f

    if-ne v11, v2, :cond_5

    const-wide/16 v17, 0x14

    cmp-long v4, v9, v17

    if-ltz v4, :cond_5

    const-wide/16 v17, 0x10

    move-object v4, v13

    add-long v12, v7, v17

    .line 8
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v12, v13, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 9
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v2

    const v12, 0x76696465

    if-ne v2, v12, :cond_4

    .line 10
    iput v12, v1, Lt4/b$a;->h:I

    goto :goto_1

    :cond_4
    const v12, 0x736f756e

    if-ne v2, v12, :cond_6

    .line 11
    iput v12, v1, Lt4/b$a;->h:I

    goto :goto_1

    :cond_5
    move-object v4, v13

    :cond_6
    :goto_1
    const v2, 0x75756964

    const-wide/32 v12, 0x7fffffff

    if-ne v11, v2, :cond_9

    .line 12
    iget v2, v1, Lt4/b$a;->g:I

    add-int/2addr v2, v6

    iput v2, v1, Lt4/b$a;->g:I

    .line 13
    invoke-static/range {p0 .. p0}, Lt4/b;->j(Ljava/io/FileDescriptor;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v1, Lt4/b$a;->c:Ljava/util/UUID;

    .line 14
    sget-boolean v2, Lt4/b;->c:Z

    if-eqz v2, :cond_7

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  UUID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lt4/b$a;->c:Ljava/util/UUID;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    cmp-long v2, v9, v12

    if-lez v2, :cond_8

    const-string v0, "Skipping abnormally large uuid box"

    .line 16
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 17
    :cond_8
    :try_start_0
    iget v2, v1, Lt4/b$a;->g:I

    int-to-long v5, v2

    sub-long v5, v9, v5

    long-to-int v2, v5

    new-array v2, v2, [B

    iput-object v2, v1, Lt4/b$a;->d:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t read large uuid box"

    .line 19
    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_9
    const/4 v2, 0x0

    const v6, 0x584d505f

    if-ne v11, v6, :cond_b

    cmp-long v5, v9, v12

    if-lez v5, :cond_a

    const-string v0, "Skipping abnormally large xmp box"

    .line 20
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 21
    :cond_a
    :try_start_1
    iget v2, v1, Lt4/b$a;->g:I

    int-to-long v5, v2

    sub-long v5, v9, v5

    long-to-int v2, v5

    new-array v2, v2, [B

    iput-object v2, v1, Lt4/b$a;->d:[B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t read large xmp box"

    .line 23
    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_b
    const v2, 0x6d657461

    if-ne v11, v2, :cond_d

    if-eqz v5, :cond_d

    .line 24
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    .line 25
    invoke-static/range {p0 .. p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v2

    const v5, 0x68646c72    # 4.3148E24f

    if-eq v2, v5, :cond_c

    .line 26
    iget v2, v1, Lt4/b$a;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v1, Lt4/b$a;->g:I

    .line 27
    :cond_c
    iget v2, v1, Lt4/b$a;->g:I

    int-to-long v5, v2

    add-long/2addr v5, v7

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 28
    :cond_d
    :goto_2
    sget-boolean v2, Lt4/b;->c:Z

    if-eqz v2, :cond_e

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Found box "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lt4/b;->k(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " hdr "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lt4/b$a;->g:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_e
    invoke-static {v11}, Lt4/b;->g(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lt4/b$a;->e:Ljava/util/List;

    .line 32
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v14, v15, v2}, Lt4/b;->h(Ljava/io/FileDescriptor;JLjava/lang/String;)Lt4/b$a;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 33
    iget-object v4, v1, Lt4/b$a;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iput-object v1, v2, Lt4/b$a;->f:Lt4/b$a;

    goto :goto_3

    .line 35
    :cond_f
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v14, v15, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    return-object v1

    :cond_10
    :goto_4
    move-object v4, v13

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid box at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " of length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ". End of parent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static i(Ljava/io/FileDescriptor;)I
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p0}, Lt4/d;->a([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static j(Ljava/io/FileDescriptor;)Ljava/util/UUID;
    .locals 9

    .line 1
    invoke-static {p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 2
    invoke-static {p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result v3

    int-to-long v3, v3

    shl-long v2, v3, v2

    invoke-static {p0}, Lt4/b;->i(Ljava/io/FileDescriptor;)I

    move-result p0

    int-to-long v7, p0

    and-long v4, v7, v5

    or-long/2addr v2, v4

    .line 3
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method public static k(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lt4/d;->b([BIILjava/nio/ByteOrder;)V

    .line 2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public b(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lt4/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/b$a;

    .line 2
    iget v1, v0, Lt4/b$a;->a:I

    if-ne v1, p1, :cond_0

    .line 3
    iget p0, v0, Lt4/b$a;->g:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public c(I)[J
    .locals 8

    .line 1
    new-instance v0, Lt4/c;

    invoke-direct {v0}, Lt4/c;-><init>()V

    .line 2
    iget-object p0, p0, Lt4/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b$a;

    .line 3
    iget v2, v1, Lt4/b$a;->a:I

    if-ne v2, p1, :cond_0

    .line 4
    iget-object v2, v1, Lt4/b$a;->b:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget v2, v1, Lt4/b$a;->g:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lt4/c;->b(J)V

    .line 5
    iget-object v1, v1, Lt4/b$a;->b:[J

    aget-wide v2, v1, v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lt4/c;->b(J)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0
.end method

.method public d(I)[J
    .locals 6

    .line 1
    new-instance v0, Lt4/c;

    invoke-direct {v0}, Lt4/c;-><init>()V

    .line 2
    iget-object p0, p0, Lt4/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b$a;

    .line 3
    iget v2, v1, Lt4/b$a;->a:I

    if-ne v2, p1, :cond_0

    .line 4
    iget-object v2, v1, Lt4/b$a;->b:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-virtual {v0, v4, v5}, Lt4/c;->b(J)V

    .line 5
    iget-object v1, v1, Lt4/b$a;->b:[J

    aget-wide v2, v1, v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lt4/c;->b(J)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0
.end method

.method public e(I)[J
    .locals 8

    .line 1
    new-instance v0, Lt4/c;

    invoke-direct {v0}, Lt4/c;-><init>()V

    .line 2
    new-instance v1, Lt4/c;

    invoke-direct {v1}, Lt4/c;-><init>()V

    const v2, -0x56878686

    if-eq p1, v2, :cond_0

    const v2, 0x75647461

    if-eq p1, v2, :cond_0

    const v2, 0x68646c72    # 4.3148E24f

    if-eq p1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    iget-object p0, p0, Lt4/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b$a;

    .line 5
    iget v3, v2, Lt4/b$a;->a:I

    if-ne v3, p1, :cond_1

    .line 6
    iget-object p0, v2, Lt4/b$a;->b:[J

    const/4 p1, 0x0

    aget-wide v3, p0, p1

    invoke-virtual {v0, v3, v4}, Lt4/c;->b(J)V

    .line 7
    iget-object p0, v2, Lt4/b$a;->b:[J

    aget-wide v3, p0, p1

    const/4 v5, 0x1

    aget-wide v6, p0, v5

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lt4/c;->b(J)V

    .line 8
    iget-object p0, v2, Lt4/b$a;->f:Lt4/b$a;

    :goto_0
    if-eqz p0, :cond_3

    .line 9
    iget-object v2, p0, Lt4/b$a;->b:[J

    aget-wide v2, v2, p1

    invoke-virtual {v0, v2, v3}, Lt4/c;->b(J)V

    .line 10
    iget-object v2, p0, Lt4/b$a;->b:[J

    aget-wide v3, v2, p1

    aget-wide v6, v2, v5

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lt4/c;->b(J)V

    .line 11
    iget v2, p0, Lt4/b$a;->a:I

    const v3, 0x6d646174

    if-ne v2, v3, :cond_2

    .line 12
    invoke-virtual {v0}, Lt4/c;->e()V

    .line 13
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0

    :cond_2
    int-to-long v2, v2

    .line 14
    invoke-virtual {v1, v2, v3}, Lt4/c;->b(J)V

    .line 15
    iget-object p0, p0, Lt4/b$a;->f:Lt4/b$a;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0

    .line 17
    :cond_4
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0
.end method

.method public f(I)[J
    .locals 6

    .line 1
    new-instance v0, Lt4/c;

    invoke-direct {v0}, Lt4/c;-><init>()V

    .line 2
    iget-object p0, p0, Lt4/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b$a;

    .line 3
    iget v2, v1, Lt4/b$a;->a:I

    const v3, 0x68646c72    # 4.3148E24f

    if-ne v2, v3, :cond_0

    iget v2, v1, Lt4/b$a;->h:I

    if-ne v2, p1, :cond_0

    .line 4
    iget-object v1, v1, Lt4/b$a;->f:Lt4/b$a;

    if-eqz v1, :cond_1

    .line 5
    iget v2, v1, Lt4/b$a;->a:I

    const v3, 0x6d646961

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v1, v1, Lt4/b$a;->f:Lt4/b$a;

    :cond_1
    if-eqz v1, :cond_0

    .line 7
    iget v2, v1, Lt4/b$a;->a:I

    const v3, 0x7472616b

    if-ne v2, v3, :cond_0

    .line 8
    iget-object v2, v1, Lt4/b$a;->b:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-virtual {v0, v4, v5}, Lt4/c;->b(J)V

    .line 9
    iget-object v1, v1, Lt4/b$a;->b:[J

    aget-wide v2, v1, v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lt4/c;->b(J)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Lt4/c;->i()[J

    move-result-object p0

    return-object p0
.end method
