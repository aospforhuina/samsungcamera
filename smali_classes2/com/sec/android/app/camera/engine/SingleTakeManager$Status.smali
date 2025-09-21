.class final enum Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;
.super Ljava/lang/Enum;
.source "SingleTakeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/SingleTakeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum CANCELLING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum IDLE:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum INITIALIZING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field public static final enum STOPPING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->IDLE:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v9, "RECORDING_STARTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v11, "STOPPING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STOPPING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const-string v13, "CANCELLING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->CANCELLING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->$VALUES:[Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->$VALUES:[Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    return-object v0
.end method
