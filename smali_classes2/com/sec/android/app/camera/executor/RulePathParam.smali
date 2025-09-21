.class final enum Lcom/sec/android/app/camera/executor/RulePathParam;
.super Ljava/lang/Enum;
.source "RulePathParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/executor/RulePathParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_ANGLE:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_CAMERA_FACING:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_FLASH:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_HIGH_RESOLUTION_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_MODE_CAMERA_TYPE:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_MODE_NAME:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_MODE_QR_SCANNER:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_MOTION_PHOTO:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_MOTION_PHOTO_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_NIGHT_MODE_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_RESOLUTION:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_SHOOTING_SELECT:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_SUPER_STEADY:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_TIMER:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_ID_ZOOM:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_ANGLE_TELE:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_ANGLE_WIDE:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_AUTO:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_MAX:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_MIN:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_ON:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_RECORDING_TYPE_PIP:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_RECORDING_TYPE_SINGLE:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_RECORDING_TYPE_SPLIT:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_SHOOTING_SELECT_PHOTO:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_SHOOTING_SELECT_PHOTO_NO_ANIMATION:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_SHOOTING_SELECT_VIDEO:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_SHOOTING_SELECT_VIDEO_NO_ANIMATION:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_TIMER_10S:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_TIMER_2S:Lcom/sec/android/app/camera/executor/RulePathParam;

.field public static final enum PARAM_VALUE_TIMER_5S:Lcom/sec/android/app/camera/executor/RulePathParam;


# instance fields
.field private strName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v1, "PARAM_ID_SHOOTING_SELECT"

    const/4 v2, 0x0

    const-string v3, "ShootingSelect"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_SHOOTING_SELECT:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v3, "PARAM_ID_TIMER"

    const/4 v4, 0x1

    const-string v5, "Timer"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_TIMER:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v5, "PARAM_ID_FLASH"

    const/4 v6, 0x2

    const-string v7, "Flash"

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_FLASH:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v7, "PARAM_ID_MODE_NAME"

    const/4 v8, 0x3

    const-string v9, "ModeName"

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_MODE_NAME:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v9, "PARAM_ID_MODE_CAMERA_TYPE"

    const/4 v10, 0x4

    const-string v11, "ModeCameraType"

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_MODE_CAMERA_TYPE:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v11, "PARAM_ID_CAMERA_FACING"

    const/4 v12, 0x5

    const-string v13, "CameraType"

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_CAMERA_FACING:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v13, "PARAM_ID_MODE_QR_SCANNER"

    const/4 v14, 0x6

    const-string v15, "isQrMode"

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_MODE_QR_SCANNER:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_SUPER_STEADY"

    const/4 v14, 0x7

    const-string v12, "SuperSteady"

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_SUPER_STEADY:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 9
    new-instance v12, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_MOTION_PHOTO"

    const/16 v14, 0x8

    const-string v10, "MotionPhoto"

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_MOTION_PHOTO:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 10
    new-instance v10, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_RESOLUTION"

    const/16 v14, 0x9

    const-string v8, "Resolution"

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_RESOLUTION:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 11
    new-instance v8, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_ZOOM"

    const/16 v14, 0xa

    const-string v6, "Zoom"

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_ZOOM:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 12
    new-instance v6, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_ANGLE"

    const/16 v14, 0xb

    const-string v4, "Angle"

    invoke-direct {v6, v15, v14, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_ANGLE:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 13
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_MULTI_RECORDING_TYPE"

    const/16 v14, 0xc

    const-string v2, "MultiRecordingType"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 14
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_VIDEO_AUTO_FRAMING"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "VideoAutoFraming"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 15
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_HIGH_RESOLUTION_OFF"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "HighResolutionOff"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_HIGH_RESOLUTION_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 16
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_NIGHT_MODE_OFF"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "NightModeOff"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_NIGHT_MODE_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 17
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_ID_MOTION_PHOTO_OFF"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "MotionPhotoOff"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_ID_MOTION_PHOTO_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 18
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_VALUE_SHOOTING_SELECT_PHOTO"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "0"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_SHOOTING_SELECT_PHOTO:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 19
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_VALUE_SHOOTING_SELECT_VIDEO"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "1"

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_SHOOTING_SELECT_VIDEO:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 20
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v15, "PARAM_VALUE_SHOOTING_SELECT_PHOTO_NO_ANIMATION"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "10"

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_SHOOTING_SELECT_PHOTO_NO_ANIMATION:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 21
    new-instance v15, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_SHOOTING_SELECT_VIDEO_NO_ANIMATION"

    move-object/from16 v23, v2

    const/16 v2, 0x14

    move-object/from16 v24, v6

    const-string v6, "11"

    invoke-direct {v15, v14, v2, v6}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_SHOOTING_SELECT_VIDEO_NO_ANIMATION:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 22
    new-instance v6, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_OFF"

    const/16 v2, 0x15

    move-object/from16 v25, v15

    const-string v15, "off"

    invoke-direct {v6, v14, v2, v15}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_OFF:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 23
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_ON"

    const/16 v15, 0x16

    move-object/from16 v26, v6

    const-string v6, "on"

    invoke-direct {v2, v14, v15, v6}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_ON:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 24
    new-instance v6, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_AUTO"

    const/16 v15, 0x17

    move-object/from16 v27, v2

    const-string v2, "auto"

    invoke-direct {v6, v14, v15, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_AUTO:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 25
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_TIMER_2S"

    const/16 v15, 0x18

    move-object/from16 v28, v6

    const-string v6, "2"

    invoke-direct {v2, v14, v15, v6}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_TIMER_2S:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 26
    new-instance v6, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_TIMER_5S"

    const/16 v15, 0x19

    move-object/from16 v29, v2

    const-string v2, "5"

    invoke-direct {v6, v14, v15, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_TIMER_5S:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 27
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_TIMER_10S"

    const/16 v15, 0x1a

    invoke-direct {v2, v14, v15, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_TIMER_10S:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 28
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_ANGLE_WIDE"

    const/16 v15, 0x1b

    move-object/from16 v30, v2

    const-string/jumbo v2, "wide"

    invoke-direct {v4, v14, v15, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_ANGLE_WIDE:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 29
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_ANGLE_TELE"

    const/16 v15, 0x1c

    move-object/from16 v31, v4

    const-string/jumbo v4, "tele"

    invoke-direct {v2, v14, v15, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_ANGLE_TELE:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 30
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_MAX"

    const/16 v15, 0x1d

    move-object/from16 v32, v2

    const-string v2, "max"

    invoke-direct {v4, v14, v15, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_MAX:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 31
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_MIN"

    const/16 v15, 0x1e

    move-object/from16 v33, v4

    const-string v4, "min"

    invoke-direct {v2, v14, v15, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_MIN:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 32
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_RECORDING_TYPE_SINGLE"

    const/16 v15, 0x1f

    move-object/from16 v34, v2

    const-string/jumbo v2, "single"

    invoke-direct {v4, v14, v15, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_RECORDING_TYPE_SINGLE:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 33
    new-instance v2, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_RECORDING_TYPE_PIP"

    const/16 v15, 0x20

    move-object/from16 v35, v4

    const-string v4, "pip"

    invoke-direct {v2, v14, v15, v4}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_RECORDING_TYPE_PIP:Lcom/sec/android/app/camera/executor/RulePathParam;

    .line 34
    new-instance v4, Lcom/sec/android/app/camera/executor/RulePathParam;

    const-string v14, "PARAM_VALUE_RECORDING_TYPE_SPLIT"

    const/16 v15, 0x21

    move-object/from16 v36, v2

    const-string/jumbo v2, "split"

    invoke-direct {v4, v14, v15, v2}, Lcom/sec/android/app/camera/executor/RulePathParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/android/app/camera/executor/RulePathParam;->PARAM_VALUE_RECORDING_TYPE_SPLIT:Lcom/sec/android/app/camera/executor/RulePathParam;

    const/16 v2, 0x22

    new-array v2, v2, [Lcom/sec/android/app/camera/executor/RulePathParam;

    const/4 v14, 0x0

    aput-object v0, v2, v14

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

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v24, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

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

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v26, v2, v0

    const/16 v0, 0x16

    aput-object v27, v2, v0

    const/16 v0, 0x17

    aput-object v28, v2, v0

    const/16 v0, 0x18

    aput-object v29, v2, v0

    const/16 v0, 0x19

    aput-object v6, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v4, v2, v0

    .line 35
    sput-object v2, Lcom/sec/android/app/camera/executor/RulePathParam;->$VALUES:[Lcom/sec/android/app/camera/executor/RulePathParam;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/sec/android/app/camera/executor/RulePathParam;->strName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/executor/RulePathParam;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/executor/RulePathParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/executor/RulePathParam;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/executor/RulePathParam;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/executor/RulePathParam;->$VALUES:[Lcom/sec/android/app/camera/executor/RulePathParam;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/executor/RulePathParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/executor/RulePathParam;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/RulePathParam;->strName:Ljava/lang/String;

    return-object p0
.end method
