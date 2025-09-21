.class Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;
.super Ljava/lang/Object;
.source "PostProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavingDraftImageTask"
.end annotation


# instance fields
.field private final mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private final mDraftJpegNodeChainAccessor:Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

.field private final mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

.field private final mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

.field private final mSequenceId:I

.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getSequenceId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    .line 3
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->b(Lcom/samsung/android/camera/core2/util/ImageBuffer;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    .line 4
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    invoke-interface {p2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/camera/core2/ExtraBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 6
    iput-object p3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mDraftJpegNodeChainAccessor:Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;Lcom/samsung/android/camera/core2/processor/b0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/ProcessRequest;Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->lambda$run$0(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->lambda$run$1(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->m(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method

.method private static synthetic lambda$run$1(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->m(Lcom/samsung/android/camera/core2/processor/PostProcessor;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "runDraft is failed, call forwardCallbackByDraftImageSkipped"

    const-string v1, "saveDraftImageTask - run X"

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "saveDraftImageTask - run E"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 3
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mDraftJpegNodeChainAccessor:Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;->createNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mDraftJpegNodeChainAccessor:Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;->configureNodeChain(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 5
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mDraftJpegNodeChainAccessor:Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;

    invoke-interface {v3}, Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;->getNodeChain()Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v3

    const-class v4, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/camera/core2/node/NodeChain;->s(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camera/core2/util/ImageBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->f(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    new-instance v7, Lcom/samsung/android/camera/core2/processor/z;

    invoke-direct {v7, v6}, Lcom/samsung/android/camera/core2/processor/z;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    invoke-virtual {v2, v4, v3, v5, v7}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->runDraft(ILcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/function/Consumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->g(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v5}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->h(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;->forwardCallbackByDraftImageSkipped(ILcom/samsung/android/camera/core2/processor/ProcessCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_0

    .line 11
    :cond_1
    :try_start_2
    new-instance v2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v4, "NODE_CHAIN_KEY_DRAFT_JPEG - processFull fail : resultBuffer is null"

    invoke-direct {v2, v4}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 12
    :catch_1
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "saveDraftImageTask - with exception : runDraft with original draftImage"

    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 14
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->f(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v5, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mExtraBundle:Lcom/samsung/android/camera/core2/ExtraBundle;

    iget-object v7, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    new-instance v8, Lcom/samsung/android/camera/core2/processor/a0;

    invoke-direct {v8, v7}, Lcom/samsung/android/camera/core2/processor/a0;-><init>(Lcom/samsung/android/camera/core2/processor/PostProcessor;)V

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->runDraft(ILcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;Ljava/util/function/Consumer;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->g(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mSequenceId:I

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->this$0:Lcom/samsung/android/camera/core2/processor/PostProcessor;

    invoke-static {v4}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->h(Lcom/samsung/android/camera/core2/processor/PostProcessor;)Lcom/samsung/android/camera/core2/processor/ProcessCallback;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/camera/core2/processor/ProcessCallbackSequencer;->forwardCallbackByDraftImageSkipped(ILcom/samsung/android/camera/core2/processor/ProcessCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    .line 19
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 20
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/PostProcessor$SavingDraftImageTask;->mOriginalBuffer:Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/DirectBuffer;->release()V

    .line 22
    :cond_4
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/PostProcessor;->r()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 23
    throw v0
.end method
