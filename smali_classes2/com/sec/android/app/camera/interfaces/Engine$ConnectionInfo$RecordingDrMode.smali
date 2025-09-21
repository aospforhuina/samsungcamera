.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordingDrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

.field public static final enum HDR10:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

.field public static final enum HDR3:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

.field public static final enum SDR:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const-string v1, "SDR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const-string v3, "HDR10"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const-string v5, "HDR3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR3:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    return-object v0
.end method
