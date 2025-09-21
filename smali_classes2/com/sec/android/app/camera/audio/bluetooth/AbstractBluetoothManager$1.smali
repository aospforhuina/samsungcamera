.class Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;
.super Ljava/lang/Object;
.source "AbstractBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getServiceListener()Landroid/bluetooth/BluetoothProfile$ServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->lambda$onServiceConnected$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicConnected()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;->onBluetoothMicDisconnected()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v1, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mEventListener:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    if-eq v1, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p2, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    .line 4
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getDevice(Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object p2, p1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->b(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v2, v2, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string p1, "AbstractBluetoothManager"

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected mDevice : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mService : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object p1, p1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v0, p2, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object p2, p2, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/audio/bluetooth/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/bluetooth/b;-><init>(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget v0, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mProfileType:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "AbstractBluetoothManager"

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected mDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mService:Landroid/bluetooth/BluetoothProfile;

    .line 4
    iput-object v0, p1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 5
    iget-object p1, p1, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;->this$0:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->mBluetoothEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lcom/sec/android/app/camera/audio/bluetooth/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/bluetooth/c;-><init>(Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
