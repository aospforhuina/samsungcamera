.class Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode$24;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecSingleBokehNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode$24;->a:Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Integer;[ILjava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode$24;->a:Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;->access$2200(Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode;)Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;->onSingleBokehInfoV2Changed(I[I)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/v2/SecSingleBokehNode$24;->b(Ljava/lang/Integer;[ILjava/lang/Void;)V

    return-void
.end method
