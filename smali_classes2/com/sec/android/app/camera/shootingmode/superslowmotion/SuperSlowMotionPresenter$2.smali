.class synthetic Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;
.super Ljava/lang/Object;
.source "SuperSlowMotionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    :try_start_3
    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
