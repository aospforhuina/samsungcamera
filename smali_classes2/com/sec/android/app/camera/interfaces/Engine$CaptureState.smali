.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum BACKGROUND_RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum STARTING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum STOPPING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field public static final enum SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v5, "STARTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STARTING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v7, "CAPTURING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v9, "RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v11, "SWITCHING_RECORD_FACING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v13, "BACKGROUND_RECORDING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->BACKGROUND_RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v15, "STOPPING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STOPPING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object v0
.end method
