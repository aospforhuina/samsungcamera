.class public Lcom/sec/android/app/camera/logging/SaLogEventIdMap;
.super Ljava/lang/Object;
.source "SaLogEventIdMap.java"


# static fields
.field private static final mBokehEffectEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCameraSettingEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCommandIdEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDialogEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mSettingDialogEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mSettingDimReasonEventId:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSliderBeautyEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSliderEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSwipeListEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSwipePreviewEventIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/logging/SaLogEventId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const-class v1, Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$1;

    const-class v3, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$1;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mDialogEventIdMap:Ljava/util/EnumMap;

    .line 2
    new-instance v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$2;

    const-class v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$2;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSettingDialogEventIdMap:Ljava/util/EnumMap;

    .line 3
    new-instance v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$3;

    invoke-direct {v2, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$3;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mCommandIdEventIdMap:Ljava/util/EnumMap;

    .line 4
    new-instance v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$4;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$4;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mCameraSettingEventIdMap:Ljava/util/EnumMap;

    .line 5
    new-instance v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$5;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$5;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSettingDimReasonEventId:Ljava/util/EnumMap;

    .line 6
    new-instance v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$6;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$6;-><init>(Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mBokehEffectEventIdMap:Ljava/util/EnumMap;

    .line 7
    new-instance v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$7;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$7;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSwipePreviewEventIdMap:Ljava/util/EnumMap;

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$8;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$8;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSwipeListEventIdMap:Ljava/util/EnumMap;

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$9;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$9;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSliderBeautyEventIdMap:Ljava/util/EnumMap;

    .line 10
    new-instance v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$10;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$10;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSliderEventIdMap:Ljava/util/EnumMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geSettingDialogEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;Z)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSettingDialogEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAddingFiltersButtonEventId(IZZ)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 0

    if-nez p0, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_VIDEO_ADDING_FILTERS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_VIDEO_ADDING_FILTERS_CLOSE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_PHOTO_ADDING_FILTERS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_PHOTO_ADDING_FILTERS_CLOSE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    :goto_1
    return-object p0

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_VIDEO_ADDING_FILTERS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_VIDEO_ADDING_FILTERS_CLOSE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    :goto_2
    return-object p0

    :cond_5
    if-eqz p2, :cond_6

    .line 4
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_PHOTO_ADDING_FILTERS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_PHOTO_ADDING_FILTERS_CLOSE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    :goto_3
    return-object p0
.end method

.method public static getAdjustBeautySliderEventId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSliderBeautyEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getAdjustSliderEventId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSliderEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getBokehEffectEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mBokehEffectEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getCameraSettingEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mCameraSettingEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getCameraSettingEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->REAR_SELECT_HYPER_LAPSE_SPEED_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FRONT_SELECT_HYPER_LAPSE_SPEED_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getCameraSettingEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    return-object p0
.end method

.method public static getDialogEventId(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Z)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mDialogEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEventIdByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mCommandIdEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getEventIdByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;I)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->REAR_SELECT_HYPER_LAPSE_SPEED_MENU:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FRONT_SELECT_HYPER_LAPSE_SPEED_MENU:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getEventIdByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    return-object p0
.end method

.method public static getEventIdByLensType(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap$11;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported commandId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FRONT_NORMAL_ANGLE:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FRONT_WIDE_ANGLE:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->NORMAL_X2_LENS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->SECOND_TELE_LENS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->TELE_LENS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->WIDE_LENS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->NORMAL_LENS_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMyFilterTabInfoEventId(IZ)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_VIDEO_CREATE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_PHOTO_CREATE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_VIDEO_CREATE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_PHOTO_CREATE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getSaveOptionEventIdByMultiRecordingType(I)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->DIRECTORS_VIEW_SPLIT_SAVE_OPTION:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->DIRECTORS_VIEW_PIP_SAVE_OPTION:Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getSettingDimReasonEventId(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSettingDimReasonEventId:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getSwipeListEventId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSwipeListEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method

.method public static getSwipePreviewEventId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->mSwipePreviewEventIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/logging/SaLogEventId;

    return-object p0
.end method
