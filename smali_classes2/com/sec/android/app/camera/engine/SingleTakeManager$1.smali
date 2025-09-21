.class synthetic Lcom/sec/android/app/camera/engine/SingleTakeManager$1;
.super Ljava/lang/Object;
.source "SingleTakeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/SingleTakeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$BuffType:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->values()[Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$BuffType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->PREVIEW:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$BuffType:[I

    sget-object v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->values()[Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STOPPING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    sget-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->CANCELLING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
