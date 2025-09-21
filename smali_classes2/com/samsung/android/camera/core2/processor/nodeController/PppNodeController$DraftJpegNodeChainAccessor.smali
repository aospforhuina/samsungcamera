.class Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;
.super Ljava/lang/Object;
.source "PppNodeController.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraftJpegNodeChainAccessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;Lcom/samsung/android/camera/core2/processor/nodeController/o1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;)V

    return-void
.end method


# virtual methods
.method public configureNodeChain(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "configureDraftJpegNodeChain E"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_DRAFT_JPEG:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    const-string v2, "configureDraftJpegNodeChain X"

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "configureDraftJpegNodeChain: draftJpegNodeChain is null, so return."

    .line 3
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->m:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    .line 6
    invoke-virtual {p3, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "configureDraftJpegNodeChain: draftJpegNodeChain false"

    if-nez p3, :cond_2

    .line 7
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    .line 8
    invoke-static {v1, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 9
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    sget-object v5, Lcom/samsung/android/camera/core2/MakerPrivateKey;->a0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 11
    sget-object v6, Lcom/samsung/android/camera/core2/MakerPrivateKey;->b0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 12
    sget-object v7, Lcom/samsung/android/camera/core2/MakerPrivateKey;->c0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p3, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureDraftJpegNodeChain: FilterID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", Intensity : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 14
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v7, :cond_4

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "decodeJpegNodeBase"

    .line 15
    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/camera/core2/node/NodeChain;->i(Ljava/lang/Class;Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 16
    const-class v8, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;

    invoke-virtual {p0, v8}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;

    const-string v9, "encodeJpegNodeBase"

    .line 17
    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/camera/core2/node/NodeChain;->i(Ljava/lang/Class;Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    const/4 v9, 0x1

    .line 18
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/samsung/android/camera/core2/node/NodeChain;->k(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance v4, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {v4, p2, p1, v3}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V

    .line 20
    iput v9, v4, Lcom/samsung/android/camera/core2/container/CompressConfiguration;->compressType:I

    .line 21
    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 22
    invoke-virtual {v8, p2}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->reconfigure(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 23
    invoke-static {p3}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->b(I)Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    move-result-object p3

    invoke-virtual {v8, p3}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->setEffectMode(Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;)V

    .line 24
    iget-object p3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, p3, v4, v6}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;->setEffectFilter(Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    new-instance p3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {p3, p2, p1, v3}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;Z)V

    .line 26
    invoke-virtual {v0, p3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 27
    invoke-virtual {p0, v9}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    const-string p0, "configureDraftJpegNodeChain: draftJpegNodeChain true"

    .line 28
    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 29
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 30
    :catch_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    .line 31
    sget-object p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {p0, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    .line 34
    invoke-static {v1, v4}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 35
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "configureDraftJpegNodeChain: parameter is null, so return."

    .line 36
    invoke-static {v1, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    .line 37
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    .line 38
    :cond_6
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "createDraftJpegNodeChain E"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_DRAFT_JPEG:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p0, "already created - createDraftJpegNodeChain X"

    .line 3
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mCreateNodeChainMap:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->create(Lcom/samsung/android/camera/core2/CamCapability;[Ljava/lang/Object;)Lcom/samsung/android/camera/core2/node/NodeChain;

    const-string p0, "createDraftJpegNodeChain X"

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->d(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getNodeChain()Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "TInputData_T;TOutputData_T;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$DraftJpegNodeChainAccessor;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_DRAFT_JPEG:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0
.end method
