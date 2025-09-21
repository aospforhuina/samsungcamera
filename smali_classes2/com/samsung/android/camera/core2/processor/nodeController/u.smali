.class public final synthetic Lcom/samsung/android/camera/core2/processor/nodeController/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/u;->a:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/u;->a:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;->y(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;Lcom/samsung/android/camera/core2/CamCapability;)Lcom/samsung/android/camera/core2/node/NodeChain;

    move-result-object p0

    return-object p0
.end method
