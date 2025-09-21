.class public abstract Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;
.super Ljava/lang/Object;
.source "PostProcessorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Logic"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsNotRunByWorkManager:Z

.field private volatile mIsStopped:Z

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final mWorkParams:Landroidx/work/WorkerParameters;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mWorkParams:Landroidx/work/WorkerParameters;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mIsNotRunByWorkManager:Z

    return-void
.end method

.method public static synthetic a(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->lambda$isBackOffSupported$4(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->lambda$isSyncWork$0(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/work/WorkerParameters;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->lambda$getMaxRunAttemptCount$2(Landroidx/work/WorkerParameters;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->lambda$isPeriodicWork$1(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/work/WorkerParameters;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->lambda$getMaxWaitTimeForSyncLogic$3(Landroidx/work/WorkerParameters;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMaxRunAttemptCount$2(Landroidx/work/WorkerParameters;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "PPWorkerConfigurationKey_MaxRunAttemptCount"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMaxWaitTimeForSyncLogic$3(Landroidx/work/WorkerParameters;)Ljava/lang/Long;
    .locals 3

    invoke-virtual {p0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "PPWorkerConfigurationKey_MaxWaitTimeForSyncWork"

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isBackOffSupported$4(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "PPWorkerConfigurationKey_BackoffIsSupported"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isPeriodicWork$1(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "PPWorkerConfigurationKey_IsPeriodicWork"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isSyncWork$0(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Landroidx/work/WorkerParameters;->getInputData()Landroidx/work/Data;

    move-result-object p0

    const-string v0, "PPWorkerConfigurationKey_IsSyncWork"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final checkIfNeedBackOff()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isBackOffSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "checkIfNeedBackOff false : back off policy is not supported"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "checkIfNeedBackOff false : getWorkParameters is null"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getRunAttemptCount()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getMaxRunAttemptCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getMaxRunAttemptCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "checkIfNeedBackOff false : current run attempt count is reached to max count(%d)"

    .line 9
    invoke-static {v0, p0, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "checkIfNeedBackOff true : current run attempt count(%d)"

    invoke-static {p0, v0, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isSyncWork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->work()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getMaxWaitTimeForSyncLogic()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "doWork is failed : wait time(%d ms) for acquiring lock to sync logic is expired"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getMaxWaitTimeForSyncLogic()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6
    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->checkIfNeedBackOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 8
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->work()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0

    .line 11
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "doWork is failed : got interrupt while waiting for acquiring lock to sync logic"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->checkIfNeedBackOff()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method protected final getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected final getMaxRunAttemptCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/d;->a:Lcom/samsung/android/camera/core2/processor/work/worker/d;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected final getMaxWaitTimeForSyncLogic()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/f;->a:Lcom/samsung/android/camera/core2/processor/work/worker/f;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x1388

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getWorkParameters()Landroidx/work/WorkerParameters;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mWorkParams:Landroidx/work/WorkerParameters;

    return-object p0
.end method

.method protected final isBackOffSupported()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isPeriodicWork()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isNotRunByWorkManager()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/b;->a:Lcom/samsung/android/camera/core2/processor/work/worker/b;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final isNotRunByWorkManager()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mIsNotRunByWorkManager:Z

    return p0
.end method

.method protected final isPeriodicWork()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isNotRunByWorkManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/e;->a:Lcom/samsung/android/camera/core2/processor/work/worker/e;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected final isStopped()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mIsStopped:Z

    return p0
.end method

.method protected final isSyncWork()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isNotRunByWorkManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getWorkParameters()Landroidx/work/WorkerParameters;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/c;->a:Lcom/samsung/android/camera/core2/processor/work/worker/c;

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final onStopped()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->mIsStopped:Z

    return-void
.end method

.method protected abstract work()Landroidx/work/ListenableWorker$Result;
.end method
