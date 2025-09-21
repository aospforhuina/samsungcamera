.class public final enum Lcom/samsung/android/camera/core2/container/SensorStreamType;
.super Ljava/lang/Enum;
.source "SensorStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/SensorStreamType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/SensorStreamType;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/SensorStreamType;

.field private static final synthetic d:[Lcom/samsung/android/camera/core2/container/SensorStreamType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/SensorStreamType;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/container/SensorStreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/SensorStreamType;->b:Lcom/samsung/android/camera/core2/container/SensorStreamType;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/SensorStreamType;

    const-string v3, "CROP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/container/SensorStreamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/SensorStreamType;->c:Lcom/samsung/android/camera/core2/container/SensorStreamType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/camera/core2/container/SensorStreamType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/samsung/android/camera/core2/container/SensorStreamType;->d:[Lcom/samsung/android/camera/core2/container/SensorStreamType;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/container/SensorStreamType;->a:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/container/SensorStreamType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/SensorStreamType;->h(ILcom/samsung/android/camera/core2/container/SensorStreamType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic h(ILcom/samsung/android/camera/core2/container/SensorStreamType;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/SensorStreamType;->b()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(I)Lcom/samsung/android/camera/core2/container/SensorStreamType;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/container/SensorStreamType;->values()[Lcom/samsung/android/camera/core2/container/SensorStreamType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/container/j1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/container/j1;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/SensorStreamType;->b:Lcom/samsung/android/camera/core2/container/SensorStreamType;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/SensorStreamType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/SensorStreamType;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/SensorStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/SensorStreamType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/SensorStreamType;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/SensorStreamType;->d:[Lcom/samsung/android/camera/core2/container/SensorStreamType;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/SensorStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/SensorStreamType;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/SensorStreamType;->a:I

    return p0
.end method
