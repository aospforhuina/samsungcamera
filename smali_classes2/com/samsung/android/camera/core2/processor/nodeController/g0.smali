.class public final synthetic Lcom/samsung/android/camera/core2/processor/nodeController/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/g0;->a:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    iput-boolean p2, p0, Lcom/samsung/android/camera/core2/processor/nodeController/g0;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/g0;->a:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/g0;->b:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/processor/nodeController/PppNodeController;->X(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;ZLjava/lang/Boolean;)V

    return-void
.end method
