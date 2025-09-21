.class public Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private mImmediateProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

.field private mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

.field private final mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

.field private mIsPPPInitialized:Z

.field private mPPPStatusCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

.field private mPostProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

.field private mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

.field private final mPostProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

.field private final mPostProcessorLock:Ljava/lang/Object;

.field private mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final mPostProcessorResumeFutureLock:Ljava/lang/Object;

.field private final mProcessorStatusCallback:Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PictureProcessorManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$1;-><init>(Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$2;-><init>(Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mProcessorStatusCallback:Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;

    .line 8
    sget-object p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "PictureProcessorManager"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/manager/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->lambda$isSamsungCamera$0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPPPStatusCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    return-object p0
.end method

.method static bridge synthetic d()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface;
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$LazyHolder;->a()Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;

    move-result-object v0

    return-object v0
.end method

.method private isSamsungCamera(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "com.sec.android.app.camera"

    const-string v0, "com.samsung.android.app.galaxyraw"

    .line 1
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/processor/manager/a;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/processor/manager/a;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isSamsungCamera$0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abortProcess(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "abortProcess - %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->abortProcess(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    :cond_0
    return-void
.end method

.method public deinitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "deinitialize E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->releaseNodeChain()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    const-string v1, "deinitialize X"

    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method

.method public deinitializePPP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "deinitializePPP"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mIsPPPInitialized:Z

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->tryDeinitialize()V

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->setPostProcessCallback(Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->setPPPStatusCallback(Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public getCurrentPostProcessState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->getCurrentState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNumberOfPostProcessorSequenceStacked()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->getNumberOfSequenceStacked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPostProcessThreadId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->getPostProcessThreadTid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Lcom/samsung/android/camera/core2/CamCapability;Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "Releasing immediateProcessor can\'t be done by %d sec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    .line 6
    invoke-static {p2, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "initialize E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    const-string p1, "initialize X"

    .line 9
    invoke-static {v0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "Got unexpected interrupt during wait for releasing immediateProcessor"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    throw p1
.end method

.method public initializePPP(Landroid/content/Context;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "initializePPP"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mIsPPPInitialized:Z

    .line 4
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->tryRecycle()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v3, :cond_1

    const-string p0, "initializePPP is skipped : already initialized"

    .line 7
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return p0

    .line 9
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-direct {v1, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->startPostProcessThread()V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->setProcessorCallback(Lcom/samsung/android/camera/core2/processor/ProcessCallback;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mProcessorStatusCallback:Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->setProcessorStatusCallback(Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;)V

    .line 13
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPPPInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mIsPPPInitialized:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pausePPP()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "pausePPP E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 6
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    :try_start_2
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v1, "process fail - postProcessorResumeFuture can\'t be canceled"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->pause()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 10
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    const-string p0, "pausePPP - PostProcessor is null"

    .line 11
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    const-string p0, "pausePPP X"

    .line 12
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public prepareMotionPhotoPPP(IJILandroid/location/Location;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->prepareMotionPhotoPPP(IJILandroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "process - %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$3;->$SwitchMap$com$samsung$android$camera$core2$processor$ProcessRequest$ProcessType:[I

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz p0, :cond_d

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    goto/16 :goto_5

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "processRequest has unsupported process type(%s)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessError(I)V

    goto :goto_0

    .line 14
    :cond_3
    sget-object v2, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "can\'t invoke onProcessError : immediateProcessCallback is null"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 15
    :goto_0
    sget-object v2, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process is failed - postProcessorResumeFuture can\'t be canceled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->pause()V

    .line 20
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->isSamsungCamera(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-static {p2}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->notifyForceStart(Landroid/content/Context;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 23
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 24
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 25
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 26
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_a

    .line 27
    :try_start_7
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->isInvalidSequence(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process is failed - invalid sequence id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/samsung/android/camera/core2/exception/AbortProcessException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 29
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 30
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)Lcom/samsung/android/camera/core2/processor/ProcessResult;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getCurrentProcessCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getTotalProcessCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->G(II)I

    move-result v2

    .line 33
    invoke-interface {v1, v0, v2}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessProgress(Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V

    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->isPartialResult()Z

    move-result v2

    if-nez v2, :cond_a

    .line 35
    invoke-interface {v1, v0}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessCompleted(Lcom/samsung/android/camera/core2/processor/ProcessResult;)V

    goto :goto_4

    .line 36
    :cond_8
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "can\'t invoke onProcessProgress or onProcessCompleted : immediateProcessCallback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/samsung/android/camera/core2/exception/AbortProcessException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catch_1
    move-exception v0

    .line 37
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->resetErrorSequence(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    .line 38
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    if-eqz v1, :cond_9

    .line 39
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessError(I)V

    goto :goto_3

    .line 40
    :cond_9
    sget-object v1, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "can\'t invoke onProcessError : immediateProcessCallback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 41
    :goto_3
    sget-object v1, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process is failed - process for ImmediateProcessor is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 42
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result p1

    if-ne v0, p1, :cond_d

    .line 44
    invoke-direct {p0, p2}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->isSamsungCamera(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 45
    invoke-static {p2}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->notifyForceStop(Landroid/content/Context;)V

    :cond_b
    const/4 p1, 0x0

    .line 46
    iget-object p2, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter p2

    .line 47
    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz v0, :cond_c

    const-wide/16 v1, 0x5dc

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->resumeAfter(J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 49
    :cond_c
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 50
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_b
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 52
    monitor-exit v0

    goto :goto_5

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 53
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p0

    :cond_d
    :goto_5
    return-void

    :catchall_4
    move-exception p1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    throw p1
.end method

.method public resumePPP()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "resumePPP E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->resume()V

    goto :goto_0

    :cond_0
    const-string p0, "resumePPP - PostProcessor is null"

    .line 4
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    const-string p0, "resumePPP X"

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setImmediateProcessCallback(Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    return-void
.end method

.method public setOverHeatHint(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->setOverHeatHint(I)V

    :cond_0
    return-void
.end method

.method public setPPPStatusCallback(Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPPPStatusCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->getNumberOfPostProcessorSequenceStacked()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;->onPostProcessorSequenceCountChanged(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo p1, "setPPPStatusCallback : can\'t invoke onPostProcessorSequenceCountChanged : "

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPostProcessCallback(Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessCallback:Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    return-void
.end method

.method public wakeupPPP(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->isPPPInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo p1, "wakeupPPP skip"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "wakeupPPP E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/camera/core2/LibraryLoader;->a()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->initializePPP(Landroid/content/Context;)Z

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->deinitializePPP()V

    const-string/jumbo p0, "wakeupPPP X"

    .line 9
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
