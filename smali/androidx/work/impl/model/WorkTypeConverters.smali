.class public final Landroidx/work/impl/model/WorkTypeConverters;
.super Ljava/lang/Object;
.source "WorkTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkTypeConverters$StateIds;,
        Landroidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$NetworkTypeIds;,
        Landroidx/work/impl/model/WorkTypeConverters$OutOfPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/model/WorkTypeConverters;

    invoke-direct {v0}, Landroidx/work/impl/model/WorkTypeConverters;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I
    .locals 2

    const-string v0, "backoffPolicy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lk6/i;

    invoke-direct {p0}, Lk6/i;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final byteArrayToSetOfTriggers([B)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    .line 8
    new-instance v7, Landroidx/work/Constraints$ContentUriTrigger;

    const-string v8, "uri"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v5, v6}, Landroidx/work/Constraints$ContentUriTrigger;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    sget-object v2, Lk6/q;->a:Lk6/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-static {v3, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v3, v2}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 11
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 12
    :goto_2
    sget-object v2, Lk6/q;->a:Lk6/q;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 13
    invoke-static {v1, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to BackoffPolicy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    :goto_0
    return-object p0
.end method

.method public static final intToNetworkType(I)Landroidx/work/NetworkType;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to NetworkType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    goto :goto_0

    .line 7
    :cond_5
    sget-object p0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    :goto_0
    return-object p0
.end method

.method public static final intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->DROP_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to OutOfQuotaPolicy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    :goto_0
    return-object p0
.end method

.method public static final intToState(I)Landroidx/work/WorkInfo$State;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to State"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p0, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    goto :goto_0

    .line 7
    :cond_5
    sget-object p0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    :goto_0
    return-object p0
.end method

.method public static final networkTypeToInt(Landroidx/work/NetworkType;)I
    .locals 6

    const-string v0, "networkType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 2
    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final outOfQuotaPolicyToInt(Landroidx/work/OutOfQuotaPolicy;)I
    .locals 2

    const-string v0, "policy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lk6/i;

    invoke-direct {p0}, Lk6/i;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final setOfTriggersToByteArray(Ljava/util/Set;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "triggers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/Constraints$ContentUriTrigger;

    .line 6
    invoke-virtual {v2}, Landroidx/work/Constraints$ContentUriTrigger;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lk6/q;->a:Lk6/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 9
    :try_start_2
    invoke-static {v1, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    invoke-static {v0, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "outputStream.toByteArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 13
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p0}, Ls6/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final stateToInt(Landroidx/work/WorkInfo$State;)I
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Lk6/i;

    invoke-direct {p0}, Lk6/i;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
