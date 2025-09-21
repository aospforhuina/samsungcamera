.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$State;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/Engine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum CLOSING:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum CONNECTED:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum IDLE:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum OPENED:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum OPENING:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum PREVIEW_STARTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum PREVIEW_STOPPING:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field public static final enum SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v3, "OPENING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->OPENING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v5, "OPENED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/Engine$State;->OPENED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v7, "CONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v9, "CONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v11, "PREVIEW_STARTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEW_STARTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v13, "PREVIEWING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v15, "PREVIEW_STOPPING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEW_STOPPING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 9
    new-instance v15, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v14, "SHUTDOWN"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    .line 10
    new-instance v14, Lcom/sec/android/app/camera/interfaces/Engine$State;

    const-string v12, "CLOSING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/android/app/camera/interfaces/Engine$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/android/app/camera/interfaces/Engine$State;->CLOSING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/sec/android/app/camera/interfaces/Engine$State;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/sec/android/app/camera/interfaces/Engine$State;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$State;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$State;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object v0
.end method
