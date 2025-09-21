.class public interface abstract Lcom/samsung/android/camera/core2/processor/NodeChainAccessorInterface;
.super Ljava/lang/Object;
.source "NodeChainAccessorInterface.java"


# virtual methods
.method public abstract configureNodeChain(Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/CamCapability;Lcom/samsung/android/camera/core2/ExtraBundle;)V
.end method

.method public abstract createNodeChain(Lcom/samsung/android/camera/core2/CamCapability;)V
.end method

.method public abstract getNodeChain()Lcom/samsung/android/camera/core2/node/NodeChain;
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
.end method
