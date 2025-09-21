.class Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "SingleTakePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->lambda$onReceive$0()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->access$300(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1204d7

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SingleTakePresenter"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string p2, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->g(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$SingleTakePhotoState;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->h(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$SingleTakePhotoState;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->access$100(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    goto :goto_1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->g(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$SingleTakePhotoState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$SingleTakePhotoState;

    if-eq p1, p2, :cond_3

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->access$000(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/singletake/b;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/singletake/b;-><init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->access$200(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x19ce236c -> :sswitch_2
        -0x16cd912e -> :sswitch_1
        0x44f10232 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
