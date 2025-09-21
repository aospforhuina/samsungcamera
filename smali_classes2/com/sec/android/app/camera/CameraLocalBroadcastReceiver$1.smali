.class Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraLocalBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraLocalBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "camera.action.FILTER_UNINSTALL_REQUESTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "camera.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;->b(Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;->b(Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;->a(Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;)Lcom/sec/android/app/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->registerPreDrawListener()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver$1;->this$0:Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;->a(Lcom/sec/android/app/camera/CameraLocalBroadcastReceiver;)Lcom/sec/android/app/camera/Camera;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "unInstalledFilterId"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setUninstalledFilterId(I)V

    :cond_2
    :goto_0
    return-void
.end method
