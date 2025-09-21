.class final enum Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;
.super Ljava/lang/Enum;
.source "QrPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QrDetectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

.field public static final enum DECODE_REQUESTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

.field public static final enum DETECTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

.field public static final enum ERROR:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

.field public static final enum EXECUTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const-string v3, "DECODE_REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->DECODE_REQUESTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const-string v5, "DETECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->DETECTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const-string v7, "EXECUTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->EXECUTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->ERROR:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    return-object v0
.end method
