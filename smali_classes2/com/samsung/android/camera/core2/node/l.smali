.class public final synthetic Lcom/samsung/android/camera/core2/node/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/l;->a:Lcom/samsung/android/camera/core2/node/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/l;->a:Lcom/samsung/android/camera/core2/node/Node;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->c(Lcom/samsung/android/camera/core2/node/Node;ILcom/samsung/android/camera/core2/node/NativeNode$NativeCallback;)V

    return-void
.end method
