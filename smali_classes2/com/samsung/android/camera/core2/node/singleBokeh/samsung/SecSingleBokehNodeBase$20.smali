.class Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase$20;
.super Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;
.source "SecSingleBokehNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase$20;->a:Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase;

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase$20;->a:Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;->onError(I)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/singleBokeh/samsung/SecSingleBokehNodeBase$20;->b(Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method
