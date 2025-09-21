.class public final enum Lcom/samsung/android/camera/core2/CamDevice$SessionMode;
.super Ljava/lang/Enum;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/CamDevice$SessionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

.field public static final enum b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

.field private static final synthetic c:[Lcom/samsung/android/camera/core2/CamDevice$SessionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    const-string v3, "HIGH_SPEED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->c:[Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamDevice$SessionMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/CamDevice$SessionMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->c:[Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    return-object v0
.end method
