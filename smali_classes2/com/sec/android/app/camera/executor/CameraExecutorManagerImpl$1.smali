.class Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraExecutorManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$1;->this$0:Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "camera.action.EXECUTE_BIXBY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$1;->this$0:Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;->Q(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;)Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$ExecutorHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
