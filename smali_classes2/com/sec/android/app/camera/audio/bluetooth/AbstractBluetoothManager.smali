.class public abstract Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;
.super Ljava/lang/Object;
.source "AbstractBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;
    }
.end annotation


# static fields
.field protected static final INVALID_EXTRA:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AbstractBluetoothManager"

.field protected static final WAIT_MIC_CLOSE_DURATION:I = 0xbb8

.field protected static final WAIT_MIC_OPEN_DURATION:I = 0xbb8


# instance fields
.field protected mAudioRecord:Landroid/media/AudioRecord;

.field protected mBluetoothEventHandler:Landroid/os/Handler;

.field protected final mContext:Landroid/content/Context;

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

.field protected final mHandlerLock:Ljava/lang/Object;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mIsReopening:Z

.field protected mMediaRecorderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field protected mMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mProfileType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mService:Landroid/bluetooth/BluetoothProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mIsReopening:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerLock:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    const-string p1, "BluetoothManagerHandler"

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/util/factory/HandlerThreadFactory;->create(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->lambda$setMediaRecorder$0(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private disconnectService()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "AbstractBluetoothManager"

    if-nez v0, :cond_0

    const-string p0, "disconnectBluetoothService : adapter is null"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "disconnectService"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method private getServiceListener()Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;-><init>(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;)V

    return-object v0
.end method

.method private static synthetic lambda$setMediaRecorder$0(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method


# virtual methods
.method public abstract closeMic()Z
.end method

.method public connectService()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AbstractBluetoothManager"

    if-nez v0, :cond_0

    const-string p0, "connectBluetoothService return : adapter is null"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "connectBluetoothService return : bluetooth is not enabled"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getServiceListener()Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    iget p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    invoke-virtual {v0, v1, v3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectService success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end method

.method protected abstract getDevice(Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothDevice;
.end method

.method protected abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method protected injectMock(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public isServiceConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract openMic()Z
.end method

.method public abstract reopenMic()Z
.end method

.method public setAudioRecord(Landroid/media/AudioRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public setMediaRecorder(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMediaRecorderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMediaRecorderList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/camera/audio/bluetooth/a;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/audio/bluetooth/a;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMediaRecorderList:Ljava/util/ArrayList;

    return-void
.end method

.method public stop()V
    .locals 4

    const-string v0, "AbstractBluetoothManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->closeMic()Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->disconnectService()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AbstractBluetoothManager"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver isn\'t registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 11
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    .line 12
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected waitUntilBluetoothMicClosed()Z
    .locals 5

    const-string v0, "AbstractBluetoothManager"

    const-string/jumbo v1, "waitUntilBluetoothMicClosed : start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/camera/util/factory/CountDownLatchFactory;->create(I)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicCloseLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    .line 3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const-string/jumbo v2, "waitUntilBluetoothMicClosed : end"

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicCloseLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method protected waitUntilBluetoothMicOpened()Z
    .locals 5

    const-string v0, "AbstractBluetoothManager"

    const-string/jumbo v1, "waitUntilBluetoothMicOpened : start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/camera/util/factory/CountDownLatchFactory;->create(I)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    .line 3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const-string/jumbo v2, "waitUntilBluetoothMicOpened : end"

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mMicOpenLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
