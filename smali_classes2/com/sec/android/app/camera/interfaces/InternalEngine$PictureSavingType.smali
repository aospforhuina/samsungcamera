.class public final enum Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
.super Ljava/lang/Enum;
.source "InternalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/InternalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureSavingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum BURST:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum BURST_DB_UPDATE_ONLY:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum GIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field public static final enum SMART_SCAN:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v3, "HEIF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v5, "RAW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v7, "GIF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v9, "BURST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v11, "BURST_DB_UPDATE_ONLY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST_DB_UPDATE_ONLY:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const-string v13, "SMART_SCAN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->$VALUES:[Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    return-object v0
.end method
