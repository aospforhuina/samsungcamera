.class Lcom/sec/android/app/camera/provider/CallStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CallStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/provider/CallStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CallStateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/provider/CallStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CallStateManager$1;->this$0:Lcom/sec/android/app/camera/provider/CallStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CallStateManager$1;->this$0:Lcom/sec/android/app/camera/provider/CallStateManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/provider/CallStateManager;->l(Lcom/sec/android/app/camera/provider/CallStateManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallStateManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CallStateManager$1;->this$0:Lcom/sec/android/app/camera/provider/CallStateManager;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/provider/CallStateManager;->p(Lcom/sec/android/app/camera/provider/CallStateManager;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
