.class synthetic Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter$2;
.super Ljava/lang/Object;
.source "SlowMotionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter;
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
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/slowmotion/SlowMotionPresenter$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    :try_start_4
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
