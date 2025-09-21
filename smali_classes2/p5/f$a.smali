.class Lp5/f$a;
.super Ljava/util/EnumMap;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;",
        "Lp5/f$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lp5/f;


# direct methods
.method constructor <init>(Lp5/f;Ljava/lang/Class;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lp5/f$a;->a:Lp5/f;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->DEFAULT:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const/4 v0, -0x1

    const v1, 0x7f120427

    invoke-direct {p2, v0, v0, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    invoke-direct {p2, v0, v0, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CHECK_INSIDE_POCKET:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v2, 0x7f1200ee

    const v3, 0x7f1204c0

    invoke-direct {p2, v2, v3, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v2, 0x7f120662

    const v3, 0x7f1204d9

    invoke-direct {p2, v2, v3, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v3, 0x7f12020c

    const v4, 0x7f12020b

    const v5, 0x7f12021e

    invoke-direct {p2, v3, v4, v5, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v4, 0x7f1200f9

    const v6, 0x7f1203cb

    invoke-direct {p2, v4, v6, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->ACTIVITY_NOT_FOUND:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v4, 0x7f120186

    invoke-direct {p2, v2, v4, v0, v1}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->PLUGGED_LOW_BATTERY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    invoke-direct {p2, v0, v0, v5, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CAMERA_BUSY:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v2, 0x7f1201ff

    invoke-direct {p2, v3, v2, v5, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_FILTER_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    invoke-direct {p2, v0, v0, v0, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_SERVICE_TERMINATED_FILTER_ALERT_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    const v2, 0x7f120205

    const v3, 0x7f1205b7

    invoke-direct {p2, v2, v3, v0, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->RECORDING_IN_SMART_VIEW_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    invoke-direct {p2, v0, v0, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    new-instance p2, Lp5/f$f;

    invoke-direct {p2, v0, v0, v1, v0}, Lp5/f$f;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
