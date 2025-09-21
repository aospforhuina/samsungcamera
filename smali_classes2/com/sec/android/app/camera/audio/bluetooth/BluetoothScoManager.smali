.class public Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;
.super Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;
.source "BluetoothScoManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothScoManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;->handleAudioConnectionChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;->handleAudioStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleAudioConnectionChanged(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAudioConnectionChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothScoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;->getDevice(Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicConnected()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicDisconnected()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAudioStateChanged(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAudioConnectionChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothScoManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAudioStateChanged return : address not matched. mDevice : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicOpened()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    :cond_4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    if-nez p1, :cond_5

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicClosed()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public closeMic()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    const-string v1, "BluetoothScoManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "closeMic return : service not connected"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    const-string v0, "closeMic"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicClosed()Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager$1;-><init>(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;)V

    return-object v0
.end method

.method protected getDevice(Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 1
    check-cast p1, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->semGetHighPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BluetoothScoManager"

    if-nez p1, :cond_0

    const-string p0, "getDevice return : no high priority device"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    check-cast p0, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->isVoiceRecognitionSupported(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "getDevice return : voice recognition is not supported"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDevice device : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public openMic()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    const-string v1, "BluetoothScoManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "openMic return : service not connected"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v3}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicOpened()Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "openMic return : startVoiceRecognition failed"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public reopenMic()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    const/4 v1, 0x0

    const-string v2, "BluetoothScoManager"

    if-nez v0, :cond_0

    const-string p0, "reopenMic return : service not connected"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    const-string v0, "reopenMic"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicClosed()Z

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicOpened()Z

    move-result p0

    return p0

    :cond_3
    const-string p0, "reopenMic return : startVoiceRecognition failed"

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
