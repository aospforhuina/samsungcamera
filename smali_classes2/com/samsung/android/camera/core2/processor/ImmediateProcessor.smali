.class public Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;
.super Lcom/samsung/android/camera/core2/processor/ProcessorBase;
.source "ImmediateProcessor.java"


# instance fields
.field private final mLastAbortedSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/processor/nodeController/IppNodeController;

    invoke-direct {v0, p2}, Lcom/samsung/android/camera/core2/processor/nodeController/IppNodeController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    .line 2
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->mLastAbortedSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    sget-object p2, Lcom/samsung/android/camera/core2/util/CLog;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmediateProcessor - DeviceMemoryLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->b()Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    const/4 p2, 0x0

    const/16 v0, 0x23

    invoke-virtual {p0, p2, v0, p2, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/node/NodeChain;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->lambda$abortProcess$0(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    return-void
.end method

.method private static synthetic lambda$abortProcess$0(Lcom/samsung/android/camera/core2/node/NodeChain;)V
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/superNight/SuperNightNodeBase;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/superNight/SuperNightNodeBase;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/superNight/SuperNightNodeBase;->abortProcessPicture()V

    return-void
.end method


# virtual methods
.method public abortProcess(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->mLastAbortedSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->x(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getSuperNightNodeChain()Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/a;->a:Lcom/samsung/android/camera/core2/processor/a;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->endSequence()V

    return-void
.end method

.method public declared-synchronized isInvalidSequence(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->getCurrentSequenceId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)Lcom/samsung/android/camera/core2/processor/ProcessResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)",
            "Lcom/samsung/android/camera/core2/processor/ProcessResult<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ImmediateProcessor;->mLastAbortedSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    move-result-object v1

    sget-object v7, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    if-eq v1, v7, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 4
    iget-object v7, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getResultFormat()I

    move-result v9

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v10

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v11

    .line 5
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v12

    move-object v8, v0

    .line 6
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->configureNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 7
    :cond_0
    sget-object v1, Lcom/samsung/android/camera/core2/util/CLog;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v7, "Capture - ImmediateProcessor Process(sequenceId %d, processCount %d/%d, mode %s) : Start[%d]"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 9
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v4

    .line 10
    invoke-static {v1, v7, v8}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-class v2, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-super {p0, v0, p1, v2}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->process(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/camera/core2/processor/ProcessResult;

    move-result-object p1

    const-string v0, "Capture - ImmediateProcessor Process : End[%d]"

    new-array v2, v6, [Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    .line 14
    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/android/camera/core2/exception/AbortProcessException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v7, "get process request(sequenceId %d, processCount %d/%d, mode %s) which belongs to aborted sequence"

    new-array v4, v4, [Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 16
    invoke-static {v1, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/exception/AbortProcessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetErrorSequence(Lcom/samsung/android/camera/core2/processor/ProcessRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/util/CLog;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetErrorSequence - mode, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->deinitialize(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->endSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
