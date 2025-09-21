.class public final enum Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;
.super Ljava/lang/Enum;
.source "WatermarkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/WatermarkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

.field public static final enum f:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

.field private static final synthetic g:[Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->b:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->c:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->d:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->f:Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->g:[Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->g:[Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/WatermarkInfo$Alignment;->a:I

    return p0
.end method
