.class public final synthetic Lcom/samsung/android/camera/core2/processor/nodeController/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/j0;->a:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/j0;->a:Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;->setDeviceOrientation(I)V

    return-void
.end method
