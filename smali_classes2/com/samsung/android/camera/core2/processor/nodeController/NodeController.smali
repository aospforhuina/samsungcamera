.class public abstract Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;
.super Ljava/lang/Object;
.source "NodeController.java"


# static fields
.field public static final TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mCreateNodeChainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHeifNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

.field protected final mJpegNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field protected final mNodeChainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key;",
            "Lcom/samsung/android/camera/core2/node/NodeChain;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSefNodeCallback:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "NodeController"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mCreateNodeChainMap:Ljava/util/Map;

    .line 4
    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$1;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mHeifNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    .line 5
    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$2;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mJpegNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    .line 6
    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$3;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    iput-object v1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mSefNodeCallback:Lcom/samsung/android/camera/core2/node/SefNode$NodeCallback;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mContext:Landroid/content/Context;

    .line 8
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_MF_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/j;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/j;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_LL_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/q;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/q;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_HIFI_LLS:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/c0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/c0;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/a0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/a0;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_UW_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/g;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/g;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_RAW_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/f;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/f;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_MACRO_RAW_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/b0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/b0;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_AI_CLEAR_ZOOM:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/z;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/z;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_HIGH_RES:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/m;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/m;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_FUSION_HIGH_RES:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/u;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/u;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_AI_HIGH_RES:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/i;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/i;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_ALL_IN_FOCUS:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/l;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/l;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SS_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/p;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/p;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SUPER_NIGHT:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/n;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/n;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_HYBRID_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/s;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/s;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_AEB_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/t;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/t;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SINGLE_IN_FOCUS:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/d0;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/d0;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_LOCAL_TM:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/r;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/r;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_UW_DISTORTION:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/e;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/e;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_NON_DESTRUCTION:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/h;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/h;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_FILTER_EFFECT_PROCESSOR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;

    new-instance v2, Lcom/samsung/android/camera/core2/processor/nodeController/k;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/k;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/node/NodeChain;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->lambda$configureNonDestructionNodeChain$3(Lcom/samsung/android/camera/core2/node/NodeChain;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createAiClearZoomNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createSRNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method private checkNeedNonDestruction(Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 6

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/ExtraBundle;->m:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "makerPrivateKeys"

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->R:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNeedNonDestruction: DisableNonDestruction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->a0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 7
    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->c0:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9
    :goto_0
    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->Q:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 10
    sget-object v3, Lcom/samsung/android/camera/core2/ExtraBundle;->Y:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v2

    .line 11
    :goto_1
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/core2/processor/nodeController/v;->a:Lcom/samsung/android/camera/core2/processor/nodeController/v;

    .line 12
    invoke-virtual {v3, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14
    sget-object v3, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v3, Lcom/samsung/android/camera/core2/processor/l;->a:Lcom/samsung/android/camera/core2/processor/l;

    .line 15
    invoke-virtual {p2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    or-int/2addr p2, v1

    if-nez p2, :cond_4

    if-nez v0, :cond_3

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    return v2
.end method

.method private createAIHighResNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_AI_HIGH_RES:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$14;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$14;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/aiHighRes/AiHighResNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createAebHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/aebHdr/AebHdrNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_AEB_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$19;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$19;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/aebHdr/AebHdrNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createAiClearZoomNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/aiClearZoom/AiClearZoomNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_AI_CLEAR_ZOOM:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$11;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$11;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/aiClearZoom/AiClearZoomNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createAllInFocusNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase;

    new-instance v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_ALL_IN_FOCUS:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    new-instance v2, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v2, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/allInFocus/arcsoft/AllInFocusNodeBase;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v0, p1, p0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v0
.end method

.method private createFilterEffectNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_FILTER_EFFECT_PROCESSOR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/o;->a:Lcom/samsung/android/camera/core2/processor/nodeController/o;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$NodeCallback;Landroid/content/Context;)V

    .line 3
    const-class p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;

    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v0
.end method

.method private createFusionHighResNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/fusionHighRes/FusionHighResNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_FUSION_HIGH_RES:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$13;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$13;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/fusionHighRes/FusionHighResNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createHifiLlsNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_HIFI_LLS:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$6;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/hifills/HifiLlsNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createHighResNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/highRes/HighResNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_HIGH_RES:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$12;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$12;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/highRes/HighResNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createHybridHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/hybridHdr/HybridHdrNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_HYBRID_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$18;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$18;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/hybridHdr/HybridHdrNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createLlHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_LL_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$5;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/llhdr/LlHdrNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createLocalTMNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/localtm/LocaltmNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_LOCAL_TM:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$15;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$15;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/localtm/LocaltmNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createMacroRawSrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/macroRawSr/MacroRawSrNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_MACRO_RAW_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$10;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$10;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/macroRawSr/MacroRawSrNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createMfHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/mfhdr/MfHdrNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_MF_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$4;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/mfhdr/MfHdrNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createNonDestructionNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_NON_DESTRUCTION:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mJpegNodeCallback:Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/SecHeifNode;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mHeifNodeCallback:Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/camera/core2/node/SecHeifNode;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;)V

    .line 4
    new-instance p1, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    sget-object v4, Lcom/samsung/android/camera/core2/processor/nodeController/d;->a:Lcom/samsung/android/camera/core2/processor/nodeController/d;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4, p0}, Lcom/samsung/android/camera/core2/node/NonDestructionNode;-><init>(Lcom/samsung/android/camera/core2/node/NonDestructionNode$NodeCallback;Landroid/content/Context;)V

    .line 5
    sget-object p0, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    const-string v4, "originJpeg"

    invoke-virtual {v1, v2, v0, v4, p0}, Lcom/samsung/android/camera/core2/node/NodeChain;->c(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Ljava/lang/String;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 6
    const-class v0, Lcom/samsung/android/camera/core2/node/SecHeifNode;

    const-string v2, "originHeif"

    invoke-virtual {v1, v3, v0, v2, p0}, Lcom/samsung/android/camera/core2/node/NodeChain;->c(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Ljava/lang/String;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 7
    const-class v0, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    invoke-virtual {v1, p1, v0, p0}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createRawSRNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/superResolutionRaw/SRRawNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_RAW_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$9;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$9;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/superResolutionRaw/SRRawNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createSRNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/superResolution/SRNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$7;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$7;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/superResolution/SRNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createSSHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/sshdr/SsHdrNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SS_HDR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$16;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$16;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/sshdr/SsHdrNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createSingleInFocusNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Lcom/samsung/android/camera/core2/node/singleInFocus/samsung/SingleInFocusNodeBase;

    new-instance p1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SINGLE_IN_FOCUS:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {p1, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/singleInFocus/samsung/SingleInFocusNodeBase;

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {p1, v0, p0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object p1
.end method

.method private createSuperNightNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/superNight/SuperNightNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SUPER_NIGHT:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$17;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$17;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/superNight/SuperNightNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method private createUwDistortionNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/uwDistortion/UwDistortionNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_UW_DISTORTION:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    .line 2
    sget-object v2, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->W:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->k(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/w;->a:Lcom/samsung/android/camera/core2/processor/nodeController/w;

    invoke-direct {v0, p1, p0, v2}, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Landroid/content/Context;Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode$NodeCallback;)V

    .line 4
    const-class p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;

    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, v0, p0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p0, v2

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/uwDistortion/UwDistortionNodeBase;

    .line 6
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    :goto_0
    return-object v1
.end method

.method private createUwSRNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/samsung/android/camera/core2/node/uwSuperResolution/UwSRNodeBase;

    new-instance v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    sget-object v2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_UW_SR:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;-><init>(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;

    invoke-direct {v3, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$MultiFrameInitParam;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance p1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$8;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$8;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/node/NodeFactory;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/uwSuperResolution/UwSRNodeBase;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {v1, p0, v0, p1}, Lcom/samsung/android/camera/core2/node/NodeChain;->b(Lcom/samsung/android/camera/core2/node/Node;Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-object v1
.end method

.method public static synthetic d(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->lambda$createNonDestructionNodeChain$2(I)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createMacroRawSrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createHifiLlsNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createSingleInFocusNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method protected static getProcessSequenceId(Lcom/samsung/android/camera/core2/ExtraBundle;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->x:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method

.method public static synthetic h(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->lambda$checkNeedNonDestruction$4(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createUwDistortionNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static isSupportIncompleteMerge(I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->DYNAMIC_SHOT_MODE_NODE_CHAIN_KEY_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer$DynamicShotNodeChainInfo;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer$DynamicShotNodeChainInfo;->getBaseClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer$DynamicShotNodeChainInfo;->getBaseClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/node/NodeFeature$Property;->a:Lcom/samsung/android/camera/core2/node/NodeFeature$Property;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->l(Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/NodeFeature$Property;)Z

    move-result v0

    .line 4
    sget-object v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportIncompleteMerge("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer$DynamicShotNodeChainInfo;->getBaseClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/processor/util/PLog;->v(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->lambda$createFilterEffectNodeChain$1(I)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createRawSRNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createUwSRNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$checkNeedNonDestruction$4(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$configureNonDestructionNodeChain$3(Lcom/samsung/android/camera/core2/node/NodeChain;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    return-void
.end method

.method private static synthetic lambda$createFilterEffectNodeChain$1(I)V
    .locals 1

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "SecEffectProcessorNode.NodeCallback throws Error"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$createNonDestructionNodeChain$2(I)V
    .locals 1

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "NonDestructionNode.NodeCallback throws Error"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$createUwDistortionNodeChain$0(I)V
    .locals 1

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string v0, "UwDistortionCorrectionNode.NodeCallback throws Error"

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createNonDestructionNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createAIHighResNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createMfHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createFilterEffectNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createAllInFocusNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createHighResNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createSuperNightNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createSSHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createLlHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createLocalTMNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createHybridHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createAebHdrNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->createFusionHighResNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract configureNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;I",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            ")V"
        }
    .end annotation
.end method

.method protected configureNonDestructionNodeChain(ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_NON_DESTRUCTION:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->getNodeChain(Ljava/util/Map;Lcom/samsung/android/camera/core2/node/NodeChain$Key;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object v0

    :try_start_0
    const-string v1, "nonDestructionNodeChain"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "imageInfo"

    .line 3
    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "camCapability"

    .line 4
    invoke-static {p3, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "extraBundle"

    .line 5
    invoke-static {p4, v1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    const-string v2, "imageInfo.getCaptureResult()"

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/samsung/android/camera/core2/ExtraBundle;->m:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p4, v1}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "makerPrivateKeys"

    .line 8
    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->checkNeedNonDestruction(Lcom/samsung/android/camera/core2/ExtraBundle;Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    const/4 p4, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/node/NodeChain;->k(Z)V

    .line 11
    const-class v1, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/NonDestructionNode;

    .line 12
    invoke-virtual {v1, p0}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 13
    const-class v1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    const-string v2, "originJpeg"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/NodeChain;->i(Ljava/lang/Class;Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;

    .line 14
    const-class v2, Lcom/samsung/android/camera/core2/node/SecHeifNode;

    const-string v3, "originHeif"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/camera/core2/node/NodeChain;->i(Ljava/lang/Class;Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/Node;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core2/node/SecHeifNode;

    .line 15
    new-instance v3, Lcom/samsung/android/camera/core2/container/CompressConfiguration;

    invoke-direct {v3, p3, p2}, Lcom/samsung/android/camera/core2/container/CompressConfiguration;-><init>(Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    .line 16
    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/camera/core2/container/CompressConfiguration;)V

    .line 18
    invoke-virtual {v0, p0}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V

    .line 19
    sget-object p2, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v3, "configureNonDestructionNodeChain: filter effect node chain is enabled."

    invoke-static {p2, v3}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/16 v3, 0x100

    if-eq p1, v3, :cond_1

    const v3, 0x48454946

    if-ne p1, v3, :cond_0

    const-string p1, "configureNonDestructionNodeChain: JpegNode activate false, HeifNode activate true"

    .line 20
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p0}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    .line 22
    invoke-virtual {v2, p3}, Lcom/samsung/android/camera/core2/node/SecHeifNode;->reconfigure(Lcom/samsung/android/camera/core2/CamCapability;)V

    .line 23
    invoke-virtual {v1, p4}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "configureNonDestructionNodeChain fail - unknown resultFormat(%d)"

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p4

    invoke-static {p3, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "configureNonDestructionNodeChain: JpegNode activate true, HeifNode activate false"

    .line 25
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/processor/util/PLog;->i(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, p4}, Lcom/samsung/android/camera/core2/node/Node;->setActivate(Z)V

    .line 27
    invoke-virtual {v1, p0}, Lcom/samsung/android/camera/core2/node/Node;->initialize(Z)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v0, p4}, Lcom/samsung/android/camera/core2/node/NodeChain;->f(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/y;->a:Lcom/samsung/android/camera/core2/processor/nodeController/y;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method protected containNodeChain(Ljava/util/Map;Lcom/samsung/android/camera/core2/node/NodeChain$Key;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key;",
            "Lcom/samsung/android/camera/core2/node/NodeChain;",
            ">;",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract createNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;ILcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;I",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            ")V"
        }
    .end annotation
.end method

.method public deinitialize()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinitialize: nodeChain(key id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->g()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/node/NodeChain$Key;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") : E"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->e()V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->g()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain$Key;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") : X"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deinitialize(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/camera/core2/processor/nodeController/x;->a:Lcom/samsung/android/camera/core2/processor/nodeController/x;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getNodeChain(Lcom/samsung/android/camera/core2/node/NodeChain$Key;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;)",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "TInputData_T;TOutputData_T;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0
.end method

.method protected getNodeChain(Ljava/util/Map;Lcom/samsung/android/camera/core2/node/NodeChain$Key;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key;",
            "Lcom/samsung/android/camera/core2/node/NodeChain;",
            ">;",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;)",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "TInputData_T;TOutputData_T;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0
.end method

.method public getNodeChainKey(I)Lcom/samsung/android/camera/core2/node/NodeChain$Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->DYNAMIC_SHOT_MODE_NODE_CHAIN_KEY_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer$DynamicShotNodeChainInfo;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNodeChainKey - invalid key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SINGLE:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer$DynamicShotNodeChainInfo;->getNodeChainKey()Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    move-result-object p0

    return-object p0
.end method

.method public getSuperNightNodeChain()Lcom/samsung/android/camera/core2/node/NodeChain;
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

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeChainKeyContainer;->NODE_CHAIN_KEY_SUPER_NIGHT:Lcom/samsung/android/camera/core2/node/NodeChain$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/NodeChain;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected registerNodeChain(Ljava/util/Map;Lcom/samsung/android/camera/core2/node/NodeChain$Key;Lcom/samsung/android/camera/core2/node/NodeChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key;",
            "Lcom/samsung/android/camera/core2/node/NodeChain;",
            ">;",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "TInputData_T;TOutputData_T;>;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/node/NodeChain;

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/NodeChain;->u()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->mNodeChainMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected removeNodeChain(Ljava/util/Map;Lcom/samsung/android/camera/core2/node/NodeChain$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputData_T:",
            "Ljava/lang/Object;",
            "OutputData_T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key;",
            "Lcom/samsung/android/camera/core2/node/NodeChain;",
            ">;",
            "Lcom/samsung/android/camera/core2/node/NodeChain$Key<",
            "TInputData_T;TOutputData_T;>;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
