.class public final enum Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;
.super Ljava/lang/Enum;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/RecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum CANCELLING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum PAUSING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum PREPARING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum RESUMING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field public static final enum SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v5, "PREPARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v7, "STARTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v9, "RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v11, "PAUSING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v13, "PAUSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v15, "RESUMING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v14, "STOPPING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v12, "CANCELLING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    .line 11
    new-instance v12, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-string v10, "SWITCHING_FACING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->$VALUES:[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->$VALUES:[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    return-object v0
.end method
