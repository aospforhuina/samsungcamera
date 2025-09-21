.class public Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;
.super Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;
.source "BluetoothLeManager.java"


# static fields
.field private static final SEM_CONTEXT_TYPE_LIVE:I = 0x40

.field private static final SEM_EXTRA_LE_AUDIO_CONTEXT_TYPE:Ljava/lang/String; = "com.samsung.bluetooth.extra.LE_AUDIO_CONTEXT_TYPE"

.field private static final TAG:Ljava/lang/String; = "BluetoothLeManager"


# instance fields
.field private final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private final mReopeningLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$1;-><init>(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/16 p1, 0x16

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->handleCisStateChanged(I)V

    return-void
.end method

.method private handleCisStateChanged(I)V
    .locals 3

    const-string v0, "BluetoothLeManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCisStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    if-nez p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicClosed()V

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 13
    :cond_4
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public closeMic()Z
    .locals 4

    const-string v0, "BluetoothLeManager"

    const-string v1, "closeMic"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v3}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "closeMic return : closeMic failed"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMediaRecorderList:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    const-string p0, "closeMic : no MediaRecorder"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRecorder;

    .line 8
    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public connectService()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 3
    invoke-super {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->connectService()Z

    move-result p0

    return p0
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager$2;-><init>(Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;)V

    return-object v0
.end method

.method protected getDevice(Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->getBluetoothLeMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.bluetooth.action.LE_AUDIO_GROUP_STATE_CHANGED"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.bluetooth.action.LE_AUDIO_CIS_STATE_CHANGED"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    const/4 v1, 0x0

    const-string v2, "BluetoothLeManager"

    if-nez v0, :cond_0

    const-string p0, "isAvailable false : mService is null"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->getDevice(Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "isAvailable false : device is null"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    check-cast p0, Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothLeAudio;->semIsBinauralRecordingReady(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public openMic()Z
    .locals 4

    const-string v0, "BluetoothLeManager"

    const-string v1, "openMic"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/AudioUtil;->getBluetoothLeMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2, v1}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicOpened()Z

    move-result v2

    goto :goto_0

    :cond_0
    const-string p0, "openMic return : openMic failed"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v2, 0x1

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMediaRecorderList:Ljava/util/ArrayList;

    if-nez p0, :cond_2

    const-string p0, "openMic : mMediaRecorder is null"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 9
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    and-int/2addr v2, v0

    goto :goto_1

    :cond_3
    return v2
.end method

.method public reopenMic()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BluetoothLeManager"

    const-string v0, "reopenMic return : service not connected"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 4
    :try_start_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 9
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->waitUntilBluetoothMicOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 13
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    return v2

    :catchall_2
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->stop()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mReopeningLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
