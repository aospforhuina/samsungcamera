.class public final synthetic Lcom/sec/android/app/camera/provider/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/service/AbstractCallbackService$CompleteListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/provider/WaitCallbackServiceTask;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/provider/WaitCallbackServiceTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/t;->a:Lcom/sec/android/app/camera/provider/WaitCallbackServiceTask;

    iput-object p2, p0, Lcom/sec/android/app/camera/provider/t;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/t;->a:Lcom/sec/android/app/camera/provider/WaitCallbackServiceTask;

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/t;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/provider/WaitCallbackServiceTask;->a(Lcom/sec/android/app/camera/provider/WaitCallbackServiceTask;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
