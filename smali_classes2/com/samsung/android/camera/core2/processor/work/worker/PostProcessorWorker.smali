.class public abstract Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;
.super Landroidx/work/Worker;
.source "PostProcessorWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Configuration;,
        Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;
    }
.end annotation


# instance fields
.field private final mLogic:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;

.field private final mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mLogic:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method private checkForegroundInfoAndSet()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->createForegroundInfo()Landroidx/work/ForegroundInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/work/ListenableWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForegroundAsync is failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private dumpEnterDoWork()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v5, "yyyy.MM.dd HH:mm:ss.SSS z"

    invoke-direct {v2, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s doWork E, %s%n"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    aput-object p0, v2, v3

    const-string p0, "%s.txt"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0, v3}, Lcom/samsung/android/camera/core2/util/FileUtils;->q(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private dumpExitDoWork()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v5, "yyyy.MM.dd HH:mm:ss.SSS z"

    invoke-direct {v2, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 2
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s doWork X, %s%n"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    aput-object p0, v2, v3

    const-string p0, "%s.txt"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0, v4}, Lcom/samsung/android/camera/core2/util/FileUtils;->q(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected createForegroundInfo()Landroidx/work/ForegroundInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "doWork E, input data: %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->checkForegroundInfoAndSet()V

    .line 4
    invoke-static {}, Lcom/samsung/android/camera/core2/util/DebugUtils;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->dumpEnterDoWork()V

    .line 6
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mLogic:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->doWork()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->dumpExitDoWork()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mLogic:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->doWork()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mTag:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    const-string v0, "doWork X (%d ms), result: %s"

    invoke-static {p0, v0, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public onStopped()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker;->mLogic:Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->onStopped()V

    return-void
.end method
