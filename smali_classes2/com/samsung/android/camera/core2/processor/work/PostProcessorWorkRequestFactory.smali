.class public Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;
.super Ljava/lang/Object;
.source "PostProcessorWorkRequestFactory.java"


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PPWorkRequestFactory"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;
    .locals 2

    const-class v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;->mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;

    invoke-direct {v1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;-><init>()V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;->mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;->mInstance:Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized createDefaultWorkRequest(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequestFactory$1;->$SwitchMap$com$samsung$android$camera$core2$processor$work$PostProcessorWorkRequest$OperationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getDefaultOperationType()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getName()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne p3, v2, :cond_0

    .line 4
    sget-object p3, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    goto :goto_0

    :cond_0
    sget-object p3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 5
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->setUniqueWork(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getDefaultWorkRequestBuilder()Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/PeriodicWorkRequest$Builder;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;->setPeriodicWorkRequestBuilder(Landroidx/work/PeriodicWorkRequest$Builder;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;)Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/PeriodicPostProcessorWorkRequest;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v0, "work has an not supported operation type(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getDefaultOperationType()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$OperationType;

    move-result-object p1

    aput-object p1, v1, v2

    .line 9
    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;-><init>(Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;)V

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;->setUniqueWork(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest$Builder;

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWork;->getDefaultWorkRequestBuilder()Landroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    new-array p2, v2, [Z

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->addOneTimeWorkRequestBuilder(Landroidx/work/OneTimeWorkRequest$Builder;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration$Builder;[Z)Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest$Builder;->build()Lcom/samsung/android/camera/core2/processor/work/OneTimePostProcessorWorkRequest;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
