.class public Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;
.super Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;
.source "RemoveExpiredCore2DBDataWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logic"
.end annotation


# static fields
.field private static final CORE2_EXPIRATION_PERIOD:J = 0x1cf7c5800L

.field private static final GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RemoveExCore2DBDataWorker.Logic"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->GLOBAL_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Ljava/util/concurrent/locks/Lock;Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method

.method private removeExpiredCore2DBData()Z
    .locals 10

    const-string v0, "removeExpiredCore2DBData X"

    .line 1
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "removeExpiredCore2DBData E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s != %d AND %s < ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "sef_file_type"

    aput-object v6, v5, v2

    const/16 v6, 0xb70

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, "datetaken"

    aput-object v8, v5, v6

    .line 4
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v8, 0x1cf7c5800L

    sub-long/2addr v4, v8

    new-array v6, v7, [Ljava/lang/String;

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v4, Lcom/samsung/android/camera/core2/database/DatabaseHelper;->b:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v7

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    :try_start_1
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "removeExpiredCore2DBData is failed : %s"

    invoke-static {v1, v3, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v2

    :goto_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 11
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
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;->removeExpiredCore2DBData()Z

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
