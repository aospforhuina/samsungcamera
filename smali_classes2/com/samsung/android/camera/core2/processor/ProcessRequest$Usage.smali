.class public final enum Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;
.super Ljava/lang/Enum;
.source "ProcessRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/ProcessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

.field public static final enum DISCARDED_ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

.field public static final enum DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

.field public static final enum DRAFT_RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

.field public static final enum ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

.field public static final enum RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const-string v1, "DRAFT_IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DRAFT_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    new-instance v1, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const-string v3, "RESOURCE_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    new-instance v3, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const-string v5, "DRAFT_RESOURCE_IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DRAFT_RESOURCE_IMAGE:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    new-instance v5, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    new-instance v7, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const-string v9, "DISCARDED_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->DISCARDED_ERROR:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->$VALUES:[Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->$VALUES:[Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/processor/ProcessRequest$Usage;

    return-object v0
.end method
