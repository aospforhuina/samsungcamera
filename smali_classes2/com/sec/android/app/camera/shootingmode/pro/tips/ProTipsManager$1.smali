.class synthetic Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager$1;
.super Ljava/lang/Object;
.source "ProTipsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$ViewVisibilityEventManager$ViewId:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$shootingmode$pro$tips$ProTipsButton$ProTipsButtonEventListener$EventId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->values()[Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager$1;->$SwitchMap$com$sec$android$app$camera$interfaces$ViewVisibilityEventManager$ViewId:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_TIPS:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager$1;->$SwitchMap$com$sec$android$app$camera$interfaces$ViewVisibilityEventManager$ViewId:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;->values()[Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$pro$tips$ProTipsButton$ProTipsButtonEventListener$EventId:[I

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;->HIDE_ANIMATION_START:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$pro$tips$ProTipsButton$ProTipsButtonEventListener$EventId:[I

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;->HIDE_ANIMATION_END:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
