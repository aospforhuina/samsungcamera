.class Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$1;
.super Landroid/media/AudioDeviceCallback;
.source "BluetoothLeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    const-string v0, "BluetoothLeManager"

    const-string v1, "onAudioDevicesAdded"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->hasBluetoothLeDevice([Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicConnected()V

    :cond_0
    return-void
.end method
