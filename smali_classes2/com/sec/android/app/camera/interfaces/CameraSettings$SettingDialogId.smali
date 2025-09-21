.class public final enum Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;
.super Ljava/lang/Enum;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingDialogId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum CONFIRM_RESET_WITH_QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum DEFAULT:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA_CHINA:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

.field public static final enum SHOW_SNAPCHAT_LENSES_FUN_MODE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v1, "CHANGE_STORAGE_SETTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->DEFAULT:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v5, "CONFIRM_RESET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v7, "CONFIRM_RESET_WITH_QUICK_LAUNCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET_WITH_QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v9, "LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v11, "LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v13, "GPS_EULA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v15, "GPS_EULA_CHINA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v14, "GPS_EULA_FROM_SETTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v12, "GPS_EULA_CHINA_FROM_SETTING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 11
    new-instance v12, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v10, "SECURE_LOCK_IN_CONTACT_US"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 12
    new-instance v10, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v8, "SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    .line 13
    new-instance v8, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const-string v6, "SHOW_SNAPCHAT_LENSES_FUN_MODE_FROM_SETTING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->SHOW_SNAPCHAT_LENSES_FUN_MODE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 14
    sput-object v6, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->$VALUES:[Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    return-object v0
.end method
