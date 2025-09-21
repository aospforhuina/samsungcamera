.class public final synthetic Lcom/samsung/android/camera/core2/node/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/j;->a:Lcom/samsung/android/camera/core2/node/Node;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/j;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/Node;->b(Lcom/samsung/android/camera/core2/node/Node;)V

    return-void
.end method
