.class Lcom/sec/android/app/camera/logging/SaLogEventIdMap$2;
.super Ljava/util/EnumMap;
.source "SaLogEventIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/logging/SaLogEventIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_CHANGE_STORAGE_LOCATION:Lcom/sec/android/app/camera/logging/SaLogEventId;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventId;->NEGATIVE_DIALOG_CHANGE_STORAGE_LOCATION:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_CONFIRM_RESET:Lcom/sec/android/app/camera/logging/SaLogEventId;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventId;->NEGATIVE_DIALOG_CONFIRM_RESET:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET_WITH_QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_CONFIRM_RESET_WITH_QUICK_LAUNCH:Lcom/sec/android/app/camera/logging/SaLogEventId;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventId;->NEGATIVE_DIALOG_CONFIRM_RESET_WITH_QUICK_LAUNCH:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/logging/SaLogEventId;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventId;->NEGATIVE_DIALOG_SECURE_LOCK_IN_CONTACT_US:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/logging/SaLogEventId;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogEventId;->POSITIVE_DIALOG_LOCATION_IMPROVE_ACCURACY_TAG:Lcom/sec/android/app/camera/logging/SaLogEventId;

    sget-object v1, Lcom/sec/android/app/camera/logging/SaLogEventId;->NEGATIVE_DIALOG_LOCATION_IMPROVE_ACCURACY_TAG:Lcom/sec/android/app/camera/logging/SaLogEventId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$SettingDialogId;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
