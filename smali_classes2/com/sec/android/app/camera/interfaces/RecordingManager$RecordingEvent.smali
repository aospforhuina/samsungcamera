.class public final enum Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;
.super Ljava/lang/Enum;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/RecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

.field public static final enum CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

.field public static final enum PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

.field public static final enum PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

.field public static final enum RESUMED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

.field public static final enum STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

.field public static final enum STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const-string v1, "PREPARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    new-instance v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    new-instance v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->RESUMED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    new-instance v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    new-instance v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    new-instance v9, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->$VALUES:[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->$VALUES:[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    return-object v0
.end method
