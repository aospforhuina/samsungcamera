.class Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isServiceConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothScoManager"

    const-string p1, "onReceive return : service is not connected"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;->c(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;->d(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
