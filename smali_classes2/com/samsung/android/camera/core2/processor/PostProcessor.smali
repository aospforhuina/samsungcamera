.class public Lcom/samsung/android/camera/core2/processor/PostProcessor;
.super Lcom/samsung/android/camera/core2/processor/ProcessorBase;
.source "PostProcessor.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/gppm/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;
    }
.end annotation


# static fields
.field private static final GPP_URI:Landroid/net/Uri;

.field private static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.provider.gppm/ppapp_info"

.field private static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDraftImageFileDeleteTimer:Ljava/util/Timer;

.field private final mIsGPPMEnabled:Z

.field private final mNeedNodeChainDeinitialize:Z

.field private final mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

.field private final mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

.field private final mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

.field private final mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

.field private final mProcessCallbackSequencer:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

.field private final mProcessFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

.field private final mProcessMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

.field private final mProcessRequestCollectionTracker:Lcom/samsung/android/camera/core2/processor/ProcessRequestCollectionTracker;

.field private mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

.field private mProcessorStatusCallback:Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;

.field private final mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSequenceMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStateObserver:Landroid/database/ContentObserver;

.field private mStateObserverHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "PostProcessor"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "content://com.samsung.provider.gppm/ppapp_info"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->GPP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/processor/ProcessRequestCollectionTracker;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/ProcessRequestCollectionTracker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessRequestCollectionTracker:Lcom/samsung/android/camera/core2/processor/ProcessRequestCollectionTracker;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessorThreadCallback:Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;

    .line 8
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "PostProcess(context %s)"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mActivityManager:Landroid/app/ActivityManager;

    .line 11
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;->getInstance()Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;->onCreate()V

    .line 12
    invoke-static {v1}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->k(Landroid/app/ActivityManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mNeedNodeChainDeinitialize:Z

    .line 13
    new-instance v1, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    .line 14
    new-instance v2, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    invoke-direct {v2, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    .line 15
    new-instance v3, Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/util/DirectBufferPool;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 16
    new-instance v3, Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/camera/core2/util/DirectBufferPool;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 17
    new-instance v3, Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;)V

    iput-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    .line 18
    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->isGPPMEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mIsGPPMEnabled:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->initializeStateObserver()V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->notifyForegroundApp(Landroid/content/Context;)Z

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private addRecoveryProcessSequenceToPppStack()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->makeRecoveryProcessSequences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->getSequenceId()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v3, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "addRecoveryProcessSequenceToPppStack(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v3, v5, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->onSequenceCountChanged(I)V

    .line 7
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->createSavingInfoContainerForRecovery(Landroid/content/Context;)Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    check-cast v5, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    .line 9
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->getDraftRecoveryNodeChainAccessor()Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v2, v3, v5}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->createDraftPostSavingState(ILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;)V

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->getProcessRequests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/processor/ProcessRequest;

    .line 12
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    .line 13
    invoke-interface {v2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 14
    invoke-virtual {v3, v4, v2, v5}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->asPostProcessFileRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mIsGPPMEnabled:Z

    return p0
.end method

.method private cancelRecoveryDraftImageWork()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "cancelRecoveryDraftImageWork E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;

    move-result-object p0

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/receiver/RecoveryDraftImageWorkReceiver;->getRecoveryDraftImageWorkRequest()Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->cancelWorks([Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkRequest;)V

    new-array p0, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p0, v5

    const-string v1, "cancelRecoveryDraftImageWork X (%d ms)"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mNeedNodeChainDeinitialize:Z

    return p0
.end method

.method private deInitializeStateObserver()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "deInitializeStateObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserverHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 6
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserverHandlerThread:Landroid/os/HandlerThread;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9
    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private initializeStateObserver()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "initializeStateObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserverHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/processor/gppm/StateObserver;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/camera/core2/processor/gppm/StateObserver;-><init>(Landroid/os/Handler;Lcom/samsung/android/camera/core2/processor/gppm/IEventHandler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserver:Landroid/database/ContentObserver;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->GPP_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mStateObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->cancelRecoveryDraftImageWork()V

    return-void
.end method

.method static bridge synthetic l(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->deInitializeStateObserver()V

    return-void
.end method

.method static bridge synthetic m(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->onDraftImageSaved(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/samsung/android/camera/core2/processor/PostProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->onSequenceCountChanged(I)V

    return-void
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->releaseBufferPool()V

    return-void
.end method

.method private onDraftImageSaved(Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "onDraftImageSaved"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getSequenceId()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getSecMpUri()Landroid/net/Uri;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;->getResultFile()Ljava/io/File;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;->forwardCallbackByDraftImageSaved(ILandroid/net/Uri;Ljava/io/File;Lcom/samsung/android/camera/core2/processor/ProcessCallback;)V

    return-void
.end method

.method private onSequenceCountChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorStatusCallback:Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;->onPostProcessorSequenceCountChanged(I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->isEnableCameraLogging()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xb

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->sendLoggingMessage(IIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic p(Lcom/samsung/android/camera/core2/processor/PostProcessor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->shutDownThreadPool(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic q(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->startBatchWorks()V

    return-void
.end method

.method static bridge synthetic r()Lcom/samsung/android/camera/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-object v0
.end method

.method private releaseBufferPool()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->f()V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/BufferPoolBase;->f()V

    return-void
.end method

.method private saveDraftImage(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    check-cast v2, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    .line 2
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->getDraftJpegNodeChainAccessor()Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;Lcom/samsung/android/camera/core2/processor/b0;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "can\'t submit SavingDraftImageTask with sequence(id %d)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendProcessErrorCallback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessCallback;->onProcessError(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "can\'t invoke onProcessError, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private shutDownThreadPool(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    int-to-long v1, p3

    .line 3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "PostProcessThread - shutDownThreadPool is failed : %s can\'t be terminated in %d millis, try to shutdown forcefully"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p3, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p0

    const-string p0, "PostProcessThread - shutDownThreadPool is failed : getting interrupt during wait for shutdown %s, try to shutdown forcefully"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method private startBatchWorks()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "startBatchWorks E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->deleteDanglingImageDataDirectories(Landroid/content/Context;)V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager;->deleteDanglingRealDraftFiles(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->addRecoveryProcessSequenceToPppStack()V

    .line 6
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->doWork()Landroidx/work/ListenableWorker$Result;

    .line 7
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveProcessTempFileWorker$Logic;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveProcessTempFileWorker$Logic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->doWork()Landroidx/work/ListenableWorker$Result;

    .line 8
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExceededPLogFileWorker$Logic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->doWork()Landroidx/work/ListenableWorker$Result;

    .line 9
    new-instance v2, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/work/worker/RemoveExpiredCore2DBDataWorker$Logic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->doWork()Landroidx/work/ListenableWorker$Result;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const-string/jumbo v0, "startBatchWorks X (%d ms)"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->getCurrentStateName()Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;->getId()I

    move-result p0

    return p0
.end method

.method public getNumberOfSequenceStacked()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getPostProcessThreadTid()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->getThreadId()I

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/processor/gppm/NotificationMessageReader;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/gppm/NotificationMessageReader;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/camera/core2/processor/gppm/NotificationMessageReader;->isRequestStartPermissionByNotify(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateObserver onStateChanged - Request Success, PostProcessThread.getSequenceState() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->getCurrentStateName()Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->requestPermissionEnabled()V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->resume()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/camera/core2/processor/gppm/NotificationMessageReader;->isStopByNotify(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "StateObserver onStateChanged - Stop"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->STOPPING:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->updateStateTo(Landroid/content/Context;Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;)Z

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->pause()V

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "PostProcessor paused"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public prepareMotionPhotoPPP(IJILandroid/location/Location;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;->getInstance()Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;->prepareMotionPhotoPPP(IJILandroid/location/Location;)V

    return-void
.end method

.method public process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "%s process sequenceId %d processCount %d/%d"

    .line 3
    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessRequestCollectionTracker:Lcom/samsung/android/camera/core2/processor/ProcessRequestCollectionTracker;

    invoke-virtual {v2, p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestCollectionTracker;->trackAndCheckIfCollected(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;->forwardCallbackByRequestCollectionCompleted(ILcom/samsung/android/camera/core2/processor/ProcessCallback;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    if-ne v2, v3, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getError()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;->forwardCallbackByRequestCollectionStopped(ILcom/samsung/android/camera/core2/processor/ProcessCallback;)V

    .line 10
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v6, [Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "process(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->onSequenceCountChanged(I)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostSavingStateManagerGroup:Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    .line 14
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    check-cast v4, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    .line 15
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->getDraftRecoveryNodeChainAccessor()Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->createPostSavingState(ILjava/io/File;Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;)V

    .line 17
    :cond_2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$camera$core2$processor$ProcessRequest$Usage:[I

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v7, :cond_3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    .line 19
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessMemoryBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/camera/core2/util/DirectBufferPool;

    .line 20
    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->asPostProcessRequest(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/util/DirectBufferPool;Lcom/samsung/android/camera/core2/util/DirectBufferPool;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->saveDraftImage(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V

    :goto_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->resume(J)Ljava/util/concurrent/ScheduledFuture;

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "PostProcessor resumed"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resumeAfter(J)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->resume(J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public setOverHeatHint(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->setOverHeatHint(I)V

    return-void
.end method

.method public setProcessorCallback(Lcom/samsung/android/camera/core2/processor/ProcessCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->setProcessorCallback(Lcom/samsung/android/camera/core2/processor/ProcessCallback;)V

    return-void
.end method

.method public setProcessorStatusCallback(Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mProcessorStatusCallback:Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;

    return-void
.end method

.method public startPostProcessThread()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public tryDeinitialize()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "tryDeinitialize"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/camera/core2/processor/PostProcessThread;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessThread;->requestExit()V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->notifyBackgroundApp(Landroid/content/Context;)Z

    return-void
.end method

.method public tryRecycle()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mPostProcessStateManager:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->cancelExit()Z

    move-result v0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryRecycle - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;->notifyForegroundApp(Landroid/content/Context;)Z

    return v0
.end method
