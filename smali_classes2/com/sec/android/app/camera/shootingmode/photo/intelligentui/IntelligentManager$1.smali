.class Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;
.super Landroid/os/Handler;
.source "IntelligentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->b(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->a(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->d(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->a(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$IntelligentEventListener;->onSceneDetectViewUpdated(I)V

    .line 7
    sget-object p1, Lu3/b;->S:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->e(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;Z)V

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager$1;->this$0:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;->c(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    const/4 p1, 0x7

    new-array p1, p1, [J

    fill-array-data p1, :array_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    nop

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
