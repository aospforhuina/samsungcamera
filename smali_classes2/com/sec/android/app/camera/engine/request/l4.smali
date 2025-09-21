.class public final synthetic Lcom/sec/android/app/camera/engine/request/l4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/request/RequestQueue;

.field public final synthetic b:Lcom/sec/android/app/camera/engine/request/RequestId;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/l4;->a:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/request/l4;->b:Lcom/sec/android/app/camera/engine/request/RequestId;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/request/l4;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/l4;->a:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/l4;->b:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/l4;->c:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->c(Lcom/sec/android/app/camera/engine/request/RequestQueue;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method
