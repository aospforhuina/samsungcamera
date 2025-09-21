.class Lcom/samsung/android/camera/core2/processor/PostProcessor$1;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/PostProcessorThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field nodeChainExtraInfo:I

.field nodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field nodeChainShootingMode:I

.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainExtraInfo:I

    .line 4
    iput p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainShootingMode:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->lambda$onSequenceCompleted$0(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method private isDifferentRequestInfo(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainExtraInfo:I

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraInfo()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainShootingMode:I

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onSequenceCompleted$0(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->m(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method private savePreviousRequestInfo(Lcom/samsung/android/camera/core2/node/NodeChain$Key;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainKey:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    .line 2
    iput p2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainExtraInfo:I

    .line 3
    iput p3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->nodeChainShootingMode:I

    return-void
.end method


# virtual methods
.method public onRequestStackEmpty()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->o(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->a(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/MemoryUtils;->i(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->deinitialize()V

    :cond_0
    return-void
.end method

.method public onSequenceCanceled(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "onSequenceCanceled(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->n(Lcom/samsung/android/camera/core2/processor/PostProcessor;I)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->f(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getSequenceId()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->runCancel(ILjava/util/function/Consumer;)Z

    return-void
.end method

.method public onSequenceCompleted(Ljava/io/File;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/processor/ProcessResult;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Lcom/samsung/android/camera/core2/processor/ProcessResult<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getSequenceId()I

    move-result p2

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/camera/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PostProcessThread - onSequenceCompleted(sequenceId %d)"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->f(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    new-instance v3, Lcom/samsung/android/camera/core2/processor/y;

    invoke-direct {v3, v2}, Lcom/samsung/android/camera/core2/processor/y;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    invoke-virtual {v1, p2, p4, v0, v3}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->runComplete(ILcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/function/Consumer;)Z

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->c()Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->h(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p3, p1}, Lcom/samsung/android/camera/core2/processor/ProcessCallback;->onProcessCompleted(Lcom/samsung/android/camera/core2/processor/ProcessResult;Ljava/io/File;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "PostProcessThread - onSequenceCompleted : can\'t invoke onProcessCompleted, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->w(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSequenceEnded(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "onSequenceEnded(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v0, p1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->n(Lcom/samsung/android/camera/core2/processor/PostProcessor;I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->endSequence()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->e(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->endSequence()V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->e(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessStateManager;->getCurrentStateName()Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;->PAUSED:Lcom/samsung/android/camera/core2/processor/postProcessState/PostProcessState$PostProcessStateName;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->savePreviousRequestInfo(Lcom/samsung/android/camera/core2/node/NodeChain$Key;II)V

    :cond_1
    return-void
.end method

.method public onSequenceError(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->j(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onSequenceError(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->f(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->recovery(I)V

    return-void
.end method

.method public onSequencePrepared(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->d(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->isDifferentRequestInfo(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "deinitializing nodeChain - request info is different"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->deinitialize()V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraInfo()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getMode()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->savePreviousRequestInfo(Lcom/samsung/android/camera/core2/node/NodeChain$Key;II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getResultFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getResultFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/ProcessRequestImpl;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->configureNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method

.method public onSequenceProcessing(Lcom/samsung/android/camera/core2/processor/PostProcessRequest;)Lcom/samsung/android/camera/core2/processor/ProcessResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/PostProcessRequest;",
            ")",
            "Lcom/samsung/android/camera/core2/processor/ProcessResult<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->process(Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/camera/core2/processor/ProcessResult;

    move-result-object p0

    return-object p0
.end method

.method public onThreadEnded()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->savePreviousRequestInfo(Lcom/samsung/android/camera/core2/node/NodeChain$Key;II)V

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;->getInstance()Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/MotionPhotoManager;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->o(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    iget-object v0, v0, Lcom/samsung/android/camera/core2/processor/ProcessorBase;->mNodeController:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->release()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->i(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    const-string v2, "SavingDraftImageThreadPool"

    const/16 v3, 0x1388

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->p(Lcom/samsung/android/camera/core2/processor/PostProcessor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->b(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->b(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 8
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->c(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->l(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    :cond_0
    return-void
.end method

.method public onThreadStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->k(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$1;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->q(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    return-void
.end method
