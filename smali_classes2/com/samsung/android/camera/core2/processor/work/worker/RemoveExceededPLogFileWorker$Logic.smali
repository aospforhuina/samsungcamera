.class public Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;
.super Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;
.source "RemoveExceededPLogFileWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logic"
.end annotation


# static fields
.field private static final FILE_MAX_STORE_COUNT:I = 0x14

.field private static final GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RemoveExPLogWorker.Logic"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method

.method public static synthetic f(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->lambda$removeExceededPLogFiles$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeExceededPLogFiles$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private removeExceededPLogFiles()Z
    .locals 9

    const-string v0, "removeExceededPLogFiles X"

    .line 1
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "removeExceededPLogFiles E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lcom/samsung/android/camera/core2/processor/util/PLog;->SECURE_DIRECTORY_PATH:Ljava/nio/file/Path;

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v5

    :cond_0
    :try_start_1
    new-array v1, v2, [Ljava/nio/file/FileVisitOption;

    .line 4
    invoke-static {v3, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "glob:%s*"

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "camera_log-"

    aput-object v8, v7, v2

    .line 6
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v3

    const-wide/16 v6, 0x1

    .line 8
    invoke-interface {v1, v6, v7}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/camera/core2/processor/work/worker/k;

    invoke-direct {v6, v3}, Lcom/samsung/android/camera/core2/processor/work/worker/k;-><init>(Ljava/nio/file/PathMatcher;)V

    .line 9
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 10
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    const-wide/16 v6, 0x14

    .line 11
    invoke-interface {v3, v6, v7}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v3

    .line 12
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 15
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "removeExceededPLogFiles : iterating files is stopped by canceled work"

    invoke-static {p0, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v2

    :cond_1
    :try_start_4
    new-array v6, v5, [Ljava/nio/file/Path;

    aput-object v4, v6, v2

    .line 18
    invoke-static {v6}, Lcom/samsung/android/camera/core2/util/FileUtils;->l([Ljava/nio/file/Path;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 19
    :cond_2
    :try_start_5
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    sget-object p0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v5

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 21
    :try_start_6
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 22
    :try_start_8
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeExceededPLogFiles is failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 23
    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v2

    :goto_2
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 24
    throw p0
.end method


# virtual methods
.method protected work()Landroidx/work/ListenableWorker$Result;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->isNotRunByWorkManager()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->checkIfPostProcessIsOperating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->checkIfNeedBackOff()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    :goto_0
    return-object p0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;->removeExceededPLogFiles()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    :goto_1
    return-object p0
.end method
