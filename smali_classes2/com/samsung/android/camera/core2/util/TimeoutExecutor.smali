.class public Lcom/samsung/android/camera/core2/util/TimeoutExecutor;
.super Ljava/lang/Object;
.source "TimeoutExecutor.java"


# static fields
.field private static final f:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "TimeoutExecutor"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->f:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-string/jumbo v0, "timeoutTask"

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "expireTime"

    .line 4
    invoke-static {p2, p3, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->h(JLjava/lang/String;)J

    const-string/jumbo v0, "timeUnit"

    .line 5
    invoke-static {p4, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->b:Ljava/lang/Runnable;

    .line 7
    iput-wide p2, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->c:J

    .line 8
    iput-object p4, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->c:J

    iget-object v4, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->d:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->e:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    sget-object v1, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->f:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "submitting timeout task is rejected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->f:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "executor service can\'t be terminated in 3000 millis, try to shutdown forcefully"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->f:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "getting interrupt during wait for shutdown executor service, try to shutdown forcefully"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/TimeoutExecutor;->c()V

    return-void
.end method
