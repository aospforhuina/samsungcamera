.class public Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;
.super Ljava/lang/Object;
.source "CreateNodeChainExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;,
        Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCreateExecutor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCreateNodeChainType:Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;

.field private mCreateWithBundleExecutor:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateNodeChainType:Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateWithBundleExecutor:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;->DEFAULT:Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateNodeChainType:Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateExecutor:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method varargs create(Lcom/samsung/android/camera/core2/CamCapability;[Ljava/lang/Object;)Lcom/samsung/android/camera/core2/node/NodeChain;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/CamCapability;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/samsung/android/camera/core2/node/NodeChain<",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$1;->$SwitchMap$com$samsung$android$camera$core2$processor$nodeController$CreateNodeChainExecutor$CreateNodeChainType:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateNodeChainType:Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateExecutor:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;->mCreateWithBundleExecutor:Ljava/util/function/BiFunction;

    new-instance v0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;-><init>()V

    const/4 v1, 0x0

    aget-object p2, p2, v1

    check-cast p2, Landroid/util/Size;

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;->setImageSize(Landroid/util/Size;)Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;->build()Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeChain;

    return-object p0
.end method
