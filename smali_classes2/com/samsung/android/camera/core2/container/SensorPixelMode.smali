.class public final enum Lcom/samsung/android/camera/core2/container/SensorPixelMode;
.super Ljava/lang/Enum;
.source "SensorPixelMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/SensorPixelMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

.field private static final synthetic f:[Lcom/samsung/android/camera/core2/container/SensorPixelMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    const-string v1, "MODE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/container/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->b:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    const-string v3, "MODE_MAXIMUM_RESOLUTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/container/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->c:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    const-string v5, "MODE_MINIMUM_RESOLUTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/container/SensorPixelMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->d:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->f:[Lcom/samsung/android/camera/core2/container/SensorPixelMode;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->a:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/container/SensorPixelMode;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->h(ILcom/samsung/android/camera/core2/container/SensorPixelMode;)Z

    move-result p0

    return p0
.end method

.method public static b(I)Lcom/samsung/android/camera/core2/container/SensorPixelMode;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->values()[Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/container/i1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/container/i1;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->b:Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    return-object p0
.end method

.method private static synthetic h(ILcom/samsung/android/camera/core2/container/SensorPixelMode;)Z
    .locals 0

    iget p1, p1, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->a:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/SensorPixelMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/SensorPixelMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/SensorPixelMode;->f:[Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/SensorPixelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/SensorPixelMode;

    return-object v0
.end method
