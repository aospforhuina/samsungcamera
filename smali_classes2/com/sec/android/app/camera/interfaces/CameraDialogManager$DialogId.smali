.class public final enum Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;
.super Ljava/lang/Enum;
.source "CameraDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum ACTIVITY_NOT_FOUND:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum AR_ZONE_ENABLE_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum BIXBY_VISION_ENABLE_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum CAMERA_BUSY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum CHECK_INSIDE_POCKET:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum DEFAULT:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum DEX_MODE_NOT_SUPPORTED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum FINISH_ON_ERROR:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum OVERHEAT:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum PLUGGED_LOW_BATTERY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum RECORDING_IN_SMART_VIEW_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum REMOVE_FILTER_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum REMOVE_SERVICE_TERMINATED_FILTER_ALERT_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum RUNTIME_PERMISSIONS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum RUNTIME_PERMISSIONS_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum RUNTIME_PERMISSIONS_SINGLE_TAKE:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum SINGLE_TAKE_STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum TALK_BACK_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

.field public static final enum UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->DEFAULT:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v3, "FINISH_ON_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v5, "STORAGE_STATUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v7, "SINGLE_TAKE_STORAGE_STATUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->SINGLE_TAKE_STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v9, "UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v11, "CHANGE_STORAGE_SETTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v13, "LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v15, "LOCATION_TAG_GUIDE_IMPROVE_ACCURACY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v14, "LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v12, "GPS_EULA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 11
    new-instance v12, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v10, "PLUGGED_LOW_BATTERY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->PLUGGED_LOW_BATTERY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 12
    new-instance v10, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v8, "OVERHEAT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->OVERHEAT:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 13
    new-instance v8, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "TALK_BACK_GUIDE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->TALK_BACK_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 14
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v4, "CAMERA_BUSY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CAMERA_BUSY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 15
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v2, "RUNTIME_PERMISSIONS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 16
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "RUNTIME_PERMISSIONS_LOCATION"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 17
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v4, "RUNTIME_PERMISSIONS_SINGLE_TAKE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_SINGLE_TAKE:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 18
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v2, "CHECK_INSIDE_POCKET"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CHECK_INSIDE_POCKET:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 19
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "ERROR_RECORDING_START_FAIL"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 20
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v4, "ACTIVITY_NOT_FOUND"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->ACTIVITY_NOT_FOUND:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 21
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v2, "BIXBY_VISION_ENABLE_DLG"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->BIXBY_VISION_ENABLE_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 22
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "AR_ZONE_ENABLE_DLG"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->AR_ZONE_ENABLE_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 23
    new-instance v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v4, "FORCED_SOUND_WAIVER_CONDITION_DLG"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 24
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v4, "UPDATE_USING_DATA_INFORMATION_SECURITY_DLG"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 25
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "REMOVE_FILTER_DLG"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_FILTER_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 26
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "REMOVE_SERVICE_TERMINATED_FILTER_ALERT_DLG"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_SERVICE_TERMINATED_FILTER_ALERT_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 27
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "RECORDING_IN_SMART_VIEW_DLG"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->RECORDING_IN_SMART_VIEW_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 28
    new-instance v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "SMART_VIEW_NOT_SUPPORTED_RESOLUTION"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    .line 29
    new-instance v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const-string v6, "DEX_MODE_NOT_SUPPORTED_RESOLUTION"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->DEX_MODE_NOT_SUPPORTED_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    .line 30
    sput-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    return-object v0
.end method
