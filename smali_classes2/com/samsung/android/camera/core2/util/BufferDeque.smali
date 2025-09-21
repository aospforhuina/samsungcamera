.class public Lcom/samsung/android/camera/core2/util/BufferDeque;
.super Ljava/lang/Object;
.source "BufferDeque.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;
    }
.end annotation


# static fields
.field private static final h:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field protected final a:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:I

.field protected final f:I

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BufferDeque"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/BufferDeque;->h:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->d:Ljava/util/List;

    const-string v0, "capacity"

    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->n(ILjava/lang/String;)I

    const-string/jumbo v0, "size"

    .line 7
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->n(ILjava/lang/String;)I

    .line 8
    iput p1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->e:I

    .line 9
    iput p2, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->f:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    new-instance v2, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    int-to-long v3, v0

    const/4 v5, 0x0

    invoke-static {p2, v5}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->a(ILcom/samsung/android/camera/core2/util/ImageInfo;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;-><init>(JLcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/util/j;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Object;Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;->a()Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 3
    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put([B)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    if-eqz v1, :cond_2

    .line 8
    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->g(Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, p1, Landroid/media/Image;

    if-eqz v1, :cond_3

    .line 10
    check-cast p1, Landroid/media/Image;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->f(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 11
    :cond_3
    instance-of p3, p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    if-eqz p3, :cond_4

    .line 12
    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->put(Lcom/samsung/android/camera/core2/util/BufferBase;)V

    :goto_0
    return-void

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Not supported buffer type"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 14
    iget-object p3, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 15
    :try_start_1
    iget-boolean p3, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez p3, :cond_5

    .line 16
    iget-object p3, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    invoke-interface {p3, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18
    throw p1

    :catchall_0
    move-exception p1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    const-string v0, "buffer"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferDeque;->d()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/camera/core2/util/BufferDeque;->e(Ljava/lang/Object;Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_0
    iget-boolean p1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addLastBuffer is fail - bufferDeque is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez v0, :cond_1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "clear is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
.end method

.method protected d()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 5
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "findBufferSlot is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
.end method

.method public f(Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;)V
    .locals 1

    const-string v0, "bufferSlot"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "releaseBuffer is fail - buffer is not taken from this"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "releaseBuffer is fail - bufferDeque is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    throw p1
.end method

.method public g()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeFirstBuffer is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
.end method

.method public h()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->g:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferDeque;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeLastBufferAndClear is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/BufferDeque;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method
