.class public final enum Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;
.super Ljava/lang/Enum;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum BLE_SPEN:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum CAMERA_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum FLOATING_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum FUNCTION_KEY_DOUBLE_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum GESTURE:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum SCREEN_TOUCH:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum SMART_ANGLE_CHANGE:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum VIEW_LONG_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field public static final enum WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v1, "VIEW_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v3, "VIEW_LONG_CLICK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_LONG_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v5, "CAMERA_KEY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->CAMERA_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v7, "VOLUME_KEY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v9, "FUNCTION_KEY_DOUBLE_CLICK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->FUNCTION_KEY_DOUBLE_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v11, "GESTURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->GESTURE:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v13, "PALM_DETECTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v15, "VOICE_COMMAND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v14, "SCREEN_TOUCH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->SCREEN_TOUCH:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v12, "BIXBY_COMMAND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 11
    new-instance v12, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v10, "BLE_SPEN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 12
    new-instance v10, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v8, "FLOATING_SHUTTER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->FLOATING_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 13
    new-instance v8, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v6, "WATCH_COMMAND"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    .line 14
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const-string v4, "SMART_ANGLE_CHANGE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->SMART_ANGLE_CHANGE:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 15
    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    return-object v0
.end method
