.class public Lcom/sec/android/app/camera/audio/bluetooth/BluetoothManagerFactory;
.super Ljava/lang/Object;
.source "BluetoothManagerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;)Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothManagerFactory$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraAudioManager$BluetoothType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong type : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p2, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;)V

    return-object p2
.end method
