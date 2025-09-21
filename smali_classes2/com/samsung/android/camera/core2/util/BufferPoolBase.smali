.class public abstract Lcom/samsung/android/camera/core2/util/BufferPoolBase;
.super Ljava/lang/Object;
.source "BufferPoolBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Buffer_T:",
        "Lcom/samsung/android/camera/core2/util/BufferBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final g:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final h:I


# instance fields
.field protected final a:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "TBuffer_T;>;>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TBuffer_T;>;"
        }
    .end annotation
.end field

.field protected final c:Landroid/app/ActivityManager;

.field protected final d:I

.field protected e:I

.field protected f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BufferPoolBase"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->g:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->a()I

    move-result v0

    sput v0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->h:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->h:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const-string v2, "activity"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->c:Landroid/app/ActivityManager;

    .line 6
    iput p2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d:I

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "bufferPool(hash %d), created : bufferPoolSize max %d"

    .line 9
    invoke-static {p1, p0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "maxBufferPoolSize(%d) must not be less than 1"

    .line 12
    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract a(I)Lcom/samsung/android/camera/core2/util/BufferBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuffer_T;"
        }
    .end annotation
.end method

.method public declared-synchronized b(ILjava/util/function/Consumer;)Lcom/samsung/android/camera/core2/util/BufferBase;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)TBuffer_T;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/util/BufferBase;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_7

    .line 6
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->c:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->f(Landroid/app/ActivityManager;J)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object p2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {p2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/BufferBase;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a(I)Lcom/samsung/android/camera/core2/util/BufferBase;

    move-result-object v0

    goto/16 :goto_0

    .line 15
    :cond_4
    iget v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    iget v5, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d:I

    const/4 v6, 0x3

    if-ge v1, v5, :cond_5

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a(I)Lcom/samsung/android/camera/core2/util/BufferBase;

    move-result-object v0

    .line 17
    iget p2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    const-string v1, "bufferPool(hash %d) - allocate new buffer(size %d) : bufferPoolSize %d/%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    iget v2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 20
    invoke-static {p2, v1, v5}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v5, "bufferPool(hash %d) - fail to get buffer(size %d) : over max bufferPoolSize(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    iget v2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    .line 23
    invoke-static {v1, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v5, "bufferPool(hash %d) - fail to get buffer(size %d) : available memory not enough"

    new-array v6, v3, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    .line 27
    invoke-static {v1, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 29
    iget-object p2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_8
    iput p1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/util/BufferBase;

    .line 3
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/util/BufferBase;

    .line 5
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 6
    :cond_2
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract d()Lcom/samsung/android/camera/core2/util/CLog$Tag;
.end method

.method protected abstract e(Lcom/samsung/android/camera/core2/util/BufferBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuffer_T;)V"
        }
    .end annotation
.end method

.method public declared-synchronized f()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/util/BufferBase;

    .line 3
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "bufferPool(hash %d) - releaseBuffers : bufferPoolSize %d/%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget v4, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 9
    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "bufferPool(hash %d) - %d buffers are not returned yet, release the buffers"

    new-array v4, v6, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 13
    invoke-static {v2, v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    iput v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Lcom/samsung/android/camera/core2/util/BufferBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuffer_T;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->g:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "%s doesn\'t belong to this bufferPool(hash %d), ignore"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v0

    .line 5
    iget v4, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->f:I

    if-lt v0, v4, :cond_2

    const/high16 v4, 0x3000000

    if-gt v0, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->c:Landroid/app/ActivityManager;

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->c()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->f(Landroid/app/ActivityManager;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->a:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    .line 12
    iget p1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    const-string v4, "bufferPool(hash %d), delete buffer(size %d) : bufferPoolSize %d/%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    iget v0, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x3

    iget v1, p0, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 15
    invoke-static {p1, v4, v5}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
