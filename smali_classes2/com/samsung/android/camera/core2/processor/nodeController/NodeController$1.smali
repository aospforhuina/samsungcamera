.class Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$1;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/SecHeifNode$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/NodeController$1;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/NodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "SecHeifNode.NodeCallback throws Error"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V
    .locals 0

    return-void
.end method
