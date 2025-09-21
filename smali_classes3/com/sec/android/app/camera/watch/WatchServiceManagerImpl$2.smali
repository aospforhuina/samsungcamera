.class Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "WatchServiceManagerImpl.java"


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

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "camera.action.SHUTTER_TIMER_CANCELED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "camera.action.RECORDING_START_TIMER_TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "camera.action.SHUTTER_TIMER_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->L(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string p1, "callStatus"

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->I(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const-string p1, "recordingTime"

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->I(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->M(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e56933a -> :sswitch_4
        -0x2026568f -> :sswitch_3
        -0x19ce236c -> :sswitch_2
        0x1dafe0d4 -> :sswitch_1
        0x44f10232 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
