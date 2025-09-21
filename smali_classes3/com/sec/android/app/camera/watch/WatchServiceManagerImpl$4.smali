.class Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;
.super Ljava/lang/Object;
.source "WatchServiceManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/16 v0, 0x3e8

    const-string v1, "WatchServiceManager"

    if-nez p2, :cond_0

    const-string p1, "onServiceConnected : Returned because iBinder is not available."

    .line 1
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->w(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->q(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->q(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a$a;->a(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->v(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->r(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->r(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->s(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->z(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;)Z

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->z(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->x(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", version : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->t(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/16 p2, 0x3e9

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->w(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->B(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->t(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->J(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->u(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->u(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->D(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "onServiceConnected fail : RemoteException"

    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "onServiceConnected fail : CameraControlService is null"

    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p1, "onServiceConnected : Returned because camera is not running."

    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->w(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->v(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->w(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->x(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    return-void
.end method
