.class Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;
.super Ljava/lang/Object;
.source "DeviceIdCallbackService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/service/DeviceIdCallbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/service/DeviceIdCallbackService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "DeviceIdCallbackService"

    const-string v0, "onServiceConnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;

    invoke-static {p2}, Lw3/a$a;->a(Landroid/os/IBinder;)Lw3/a;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/service/DeviceIdCallbackService;->b(Lcom/sec/android/app/camera/service/DeviceIdCallbackService;Lw3/a;)V

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;

    invoke-static {p2}, Lcom/sec/android/app/camera/service/DeviceIdCallbackService;->a(Lcom/sec/android/app/camera/service/DeviceIdCallbackService;)Lw3/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;

    invoke-static {p2}, Lcom/sec/android/app/camera/service/DeviceIdCallbackService;->a(Lcom/sec/android/app/camera/service/DeviceIdCallbackService;)Lw3/a;

    move-result-object p2

    invoke-interface {p2}, Lw3/a;->q0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/service/DeviceIdCallbackService;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : RemoteException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/AbstractCallbackService;->notifyCompletion()V

    goto :goto_1

    :cond_0
    const-string p0, "service is null"

    .line 7
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DeviceIdCallbackService"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/service/DeviceIdCallbackService$1;->this$0:Lcom/sec/android/app/camera/service/DeviceIdCallbackService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/service/DeviceIdCallbackService;->b(Lcom/sec/android/app/camera/service/DeviceIdCallbackService;Lw3/a;)V

    return-void
.end method
