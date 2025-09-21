.class public Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;
.super Ljava/lang/Object;
.source "BufferForwarder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;,
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferCopyRunnable;,
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;,
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;,
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardMode;,
        Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;
    }
.end annotation


# static fields
.field private static final l:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private final e:Lcom/samsung/android/camera/core2/util/BufferDeque;

.field private final f:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

.field private final g:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

.field private j:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "BufferForwarder"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->h:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "BufferForwarder - bufferSize(%d), maxConcurrentThread(%d), forwardMode(%d)"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->o(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->n(ILjava/lang/String;)I

    const-string v0, "maxConcurrentThread"

    .line 7
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->n(ILjava/lang/String;)I

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "forwardMode"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->c(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->a:I

    .line 10
    iput p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->b:I

    .line 11
    iput p3, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    if-ne p3, v1, :cond_0

    .line 12
    new-instance p3, Lcom/samsung/android/camera/core2/util/BlockingBufferDeque;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p3, v0, p1}, Lcom/samsung/android/camera/core2/util/BlockingBufferDeque;-><init>(II)V

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->e:Lcom/samsung/android/camera/core2/util/BufferDeque;

    goto :goto_0

    .line 13
    :cond_0
    new-instance p3, Lcom/samsung/android/camera/core2/util/BufferDeque;

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p3, v0, p1}, Lcom/samsung/android/camera/core2/util/BufferDeque;-><init>(II)V

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->e:Lcom/samsung/android/camera/core2/util/BufferDeque;

    .line 14
    :goto_0
    new-instance p1, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->f:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    .line 15
    new-instance p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;-><init>(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;Lcom/samsung/android/camera/core2/callbackutil/c;)V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->g:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/util/BufferDeque;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->e:Lcom/samsung/android/camera/core2/util/BufferDeque;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->j:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->g:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;

    return-object p0
.end method

.method static bridge synthetic e()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->h:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/camera/core2/callbackutil/a;->a:Lcom/samsung/android/camera/core2/callbackutil/a;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 13

    const-string v0, "forward(mode %d) fail - %s"

    .line 1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->k:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "forward fail - already released"

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p2, "forward(mode %d) skip - over the max concurrent threads %d"

    new-array v0, v4, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;->a()Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    new-instance v1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;-><init>()V

    .line 9
    iget-object v5, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    invoke-virtual {v5, v1}, Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;->a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    iget-object v11, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->f:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    new-instance v12, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferCopyRunnable;

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, p0

    move-object v7, v1

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferCopyRunnable;-><init>(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callbackutil/b;)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :try_start_5
    iget p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    if-nez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception p2

    .line 14
    :try_start_6
    sget-object v5, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p2, v6, v2

    invoke-static {v5, v0, v6}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    invoke-virtual {p2, v1}, Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;->d(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    :try_start_7
    iget-object p2, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->e:Lcom/samsung/android/camera/core2/util/BufferDeque;

    invoke-virtual {p2, p1}, Lcom/samsung/android/camera/core2/util/BufferDeque;->f(Lcom/samsung/android/camera/core2/util/BufferDeque$BufferSlot;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    :try_start_8
    sget-object p2, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v1, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 18
    sget-object p2, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v1, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    throw p1
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->m()V

    return-void
.end method

.method public g(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;-><init>(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public h(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;-><init>(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;Lcom/samsung/android/camera/core2/util/ImageBuffer;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$BufferSlotGetter;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public j(III)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->a:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->b:I

    if-ne p1, p2, :cond_0

    iget p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->c:I

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    throw v0
.end method

.method public l(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->k:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "notify fail - already released"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    new-instance v1, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;

    invoke-direct {v1, p1}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;->a(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardData;)Z

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->g:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw p1
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->k:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->l:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->e:Lcom/samsung/android/camera/core2/util/BufferDeque;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/BufferDeque;->c()V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->f:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;J)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->g:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardThread;->a(I)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->i:Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/callbackutil/ForwardDataQueue;->b()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 10
    throw v0
.end method

.method public n(Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder;->j:Lcom/samsung/android/camera/core2/callbackutil/BufferForwarder$ForwardCallback;

    return-void
.end method
