.class public final synthetic Lcom/samsung/android/camera/core2/processor/nodeController/h1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/h1;->a:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/h1;->a:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapability;

    check-cast p2, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->J(Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method
