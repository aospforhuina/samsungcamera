.class public final synthetic Lcom/samsung/android/camera/core2/node/udc/samsung/v1/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/a;->a:Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/a;->a:Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;->k(Lcom/samsung/android/camera/core2/node/udc/samsung/v1/SecUdcNode;Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method
