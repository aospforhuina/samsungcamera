.class Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$3;
.super Ljava/lang/Object;
.source "PppNodeController.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController$3;->this$0:Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    new-instance p0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    const-string p1, "SingleBokehNodeBase.NodeCallback throws Error"

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPreviewColor([BI)V
    .locals 0

    return-void
.end method

.method public onPreviewLandmark([[I[[I)V
    .locals 0

    return-void
.end method

.method public onPreviewObjectInfo([I[Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onSefData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSingleBokehInfoChanged(I[Lcom/samsung/android/camera/core2/container/NormalizedRect;)V
    .locals 0

    return-void
.end method

.method public onSingleBokehInfoV2Changed(I[I)V
    .locals 0

    return-void
.end method

.method public onSwFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 0

    return-void
.end method
