.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field public static final enum BURST_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field public static final enum SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field public static final enum SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field public static final enum SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field public static final enum STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const-string v1, "SINGLE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const-string v3, "STITCHING_CAPTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const-string v5, "SINGLE_TAKE_PICTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const-string v7, "BURST_CAPTURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->BURST_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const-string v9, "SMART_SCAN_CAPTURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    return-object v0
.end method
