.class public Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;
.super Ljava/lang/Object;
.source "PostProcessorWorkManager.java"


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;


# instance fields
.field private final mWorkManager:Landroidx/work/WorkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PPWorkManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "WorkManager initialization is failed by unknown issue : %s"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    return-void
.end method

.method public static synthetic a(Landroidx/work/WorkContinuation;Landroidx/work/WorkContinuation;)Landroidx/work/WorkContinuation;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->lambda$enqueueOneTimeWork$0(Landroidx/work/WorkContinuation;Landroidx/work/WorkContinuation;)Landroidx/work/WorkContinuation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;Landroidx/work/OneTimeWorkRequest;)Ljava/util/UUID;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->lambda$cancelNonUniqueWork$1(Landroidx/work/OneTimeWorkRequest;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method private cancelNonUniqueWork(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager$1;->$SwitchMap$com$samsung$android$camera$core2$processor$work$PostProcessorWorkRequest$OperationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getOperationType()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "cancelNonUniqueWork - work %s, UUID %s"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;->getPeriodicWorkRequest()Landroidx/work/PeriodicWorkRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getWork()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not supported work operation type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;->getOneTimeWorkRequestChain()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/camera/core2/processor/work/h;->a:Lcom/samsung/android/camera/core2/processor/work/h;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/camera/core2/processor/work/g;

    invoke-direct {v5, p0}, Lcom/samsung/android/camera/core2/processor/work/g;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 8
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 9
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getWork()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    move-result-object p1

    aput-object p1, v3, v1

    aput-object p0, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private cancelUniqueWork(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getWork()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "cancelUniqueWork - work %s, uniqueWorkName %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    return-void
.end method

.method private enqueueOneTimeWork(Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getWork()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "enqueueOneTimeWork - work %s, uniqueWorkName %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;->getOneTimeWorkRequestChain()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->isUniqueWork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkExistingWorkPolicy()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/ExistingWorkPolicy;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    invoke-virtual {p0, v1, p1, v2}, Landroidx/work/WorkManager;->beginUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/WorkContinuation;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->beginWith(Ljava/util/List;)Landroidx/work/WorkContinuation;

    move-result-object p0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/e;->a:Lcom/samsung/android/camera/core2/processor/work/e;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/f;->a:Lcom/samsung/android/camera/core2/processor/work/f;

    invoke-interface {p1, p0, v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/WorkContinuation;

    .line 9
    invoke-virtual {p0}, Landroidx/work/WorkContinuation;->enqueue()Landroidx/work/Operation;

    return-void
.end method

.method private enqueuePeriodicWork(Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getWork()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "enqueuePeriodicWork - work %s, uniqueWorkName %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getUniqueWorkExistingWorkPolicy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;->getPeriodicWorkRequest()Landroidx/work/PeriodicWorkRequest;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;
    .locals 2

    const-class v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$cancelNonUniqueWork$1(Landroidx/work/OneTimeWorkRequest;)Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    invoke-virtual {p1}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    .line 2
    invoke-virtual {p1}, Landroidx/work/WorkRequest;->getId()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$enqueueOneTimeWork$0(Landroidx/work/WorkContinuation;Landroidx/work/WorkContinuation;)Landroidx/work/WorkContinuation;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public varargs declared-synchronized cancelWorks([Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "cancelWorks is failed - WorkManager initialization was failed before"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->isUniqueWork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->cancelUniqueWork(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->cancelNonUniqueWork(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized enqueueWorks([Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->mWorkManager:Landroidx/work/WorkManager;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "enqueueWorks is failed - WorkManager initialization was failed before"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 5
    sget-object v3, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager$1;->$SwitchMap$com$samsung$android$camera$core2$processor$work$PostProcessorWorkRequest$OperationType:[I

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;->getOperationType()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6
    check-cast v2, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->enqueuePeriodicWork(Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not supported work policy operation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    check-cast v2, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;

    invoke-direct {p0, v2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->enqueueOneTimeWork(Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
