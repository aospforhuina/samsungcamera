.class Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothLeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "onReceive device is null"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    iget-object p1, p1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    if-nez p1, :cond_1

    const-string p0, "mEventListener is null"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v1

    goto :goto_1

    :sswitch_0
    const-string v0, "com.samsung.bluetooth.action.LE_AUDIO_GROUP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.samsung.bluetooth.action.LE_AUDIO_CIS_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicConnected()V

    goto :goto_2

    .line 9
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicDisconnected()V

    goto :goto_2

    :pswitch_1
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 10
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "com.samsung.bluetooth.extra.LE_AUDIO_CONTEXT_TYPE"

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x40

    if-ne p2, v0, :cond_6

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->c(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;I)V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b00c4c4 -> :sswitch_2
        -0x693eab85 -> :sswitch_1
        -0x29fe2c92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
