.class public final enum Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;
.super Ljava/lang/Enum;
.source "CameraAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BluetoothType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

.field public static final enum BLUETOOTH_TYPE_CLASSIC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

.field public static final enum BLUETOOTH_TYPE_LE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    const-string v1, "BLUETOOTH_TYPE_CLASSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_CLASSIC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    const-string v3, "BLUETOOTH_TYPE_LE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_LE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object v0
.end method
