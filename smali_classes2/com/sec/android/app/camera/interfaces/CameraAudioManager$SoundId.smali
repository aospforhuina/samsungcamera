.class public final enum Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;
.super Ljava/lang/Enum;
.source "CameraAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum BURST_SHUTTER_10FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum BURST_SHUTTER_20FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum BURST_SHUTTER_3FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum BURST_SHUTTER_4FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum BURST_SHUTTER_5FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum BURST_SHUTTER_END:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum MORE_DRAG_BOX_DETACHED:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum MOTION_PHOTO_RECORDING_COMPLETE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum PANORAMA_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum REAR_SELF_SHOT:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum SHORT_SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field public static final enum TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v1, "SINGLE_SHUTTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v3, "SHORT_SINGLE_SHUTTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->SHORT_SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v5, "PANORAMA_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->PANORAMA_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v7, "PANORAMA_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v9, "PANORAMA_WARNING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v11, "REAR_SELF_SHOT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->REAR_SELF_SHOT:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v13, "RECORDING_START"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v15, "RECORDING_STOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v14, "TIMER_TICK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v12, "TIMER_TICK_2SEC"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 11
    new-instance v12, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v10, "ANIMATED_GIF_SHUTTER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 12
    new-instance v10, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v8, "LONG_EXPOSURE_SHUTTER_START"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 13
    new-instance v8, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v6, "LONG_EXPOSURE_SHUTTER_STOP"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 14
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v4, "BURST_SHUTTER_20FPS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_20FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 15
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v2, "BURST_SHUTTER_10FPS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_10FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 16
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v6, "BURST_SHUTTER_5FPS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_5FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 17
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v4, "BURST_SHUTTER_4FPS"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_4FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 18
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v2, "BURST_SHUTTER_3FPS"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_3FPS:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 19
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v6, "BURST_SHUTTER_END"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_END:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 20
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v4, "MORE_DRAG_BOX_DETACHED"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->MORE_DRAG_BOX_DETACHED:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    .line 21
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const-string v2, "MOTION_PHOTO_RECORDING_COMPLETE"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->MOTION_PHOTO_RECORDING_COMPLETE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    .line 22
    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    return-object v0
.end method
