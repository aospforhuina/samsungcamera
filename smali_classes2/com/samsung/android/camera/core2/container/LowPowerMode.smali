.class public final enum Lcom/samsung/android/camera/core2/container/LowPowerMode;
.super Ljava/lang/Enum;
.source "LowPowerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/LowPowerMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field public static final enum f:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field public static final enum g:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field public static final enum k:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field public static final enum l:Lcom/samsung/android/camera/core2/container/LowPowerMode;

.field private static final synthetic m:[Lcom/samsung/android/camera/core2/container/LowPowerMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/LowPowerMode;->b:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v3, "L1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/LowPowerMode;->c:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v5, "L2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/container/LowPowerMode;->d:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v7, "L3"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/container/LowPowerMode;->f:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 5
    new-instance v7, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v10, "L4"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/camera/core2/container/LowPowerMode;->g:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 6
    new-instance v10, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v11, "L5"

    const/4 v12, 0x5

    const/16 v13, 0x10

    invoke-direct {v10, v11, v12, v13}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/camera/core2/container/LowPowerMode;->k:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 7
    new-instance v11, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const-string v13, "L6"

    const/4 v14, 0x6

    const/16 v15, 0x20

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/camera/core2/container/LowPowerMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/camera/core2/container/LowPowerMode;->l:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/camera/core2/container/LowPowerMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v9

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/samsung/android/camera/core2/container/LowPowerMode;->m:[Lcom/samsung/android/camera/core2/container/LowPowerMode;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/container/LowPowerMode;->a:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/container/LowPowerMode;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/LowPowerMode;->h(ILcom/samsung/android/camera/core2/container/LowPowerMode;)Z

    move-result p0

    return p0
.end method

.method private static synthetic h(ILcom/samsung/android/camera/core2/container/LowPowerMode;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/LowPowerMode;->b()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(I)Lcom/samsung/android/camera/core2/container/LowPowerMode;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/container/LowPowerMode;->values()[Lcom/samsung/android/camera/core2/container/LowPowerMode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/container/g1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/container/g1;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/LowPowerMode;->b:Lcom/samsung/android/camera/core2/container/LowPowerMode;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/LowPowerMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/LowPowerMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/LowPowerMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/LowPowerMode;->m:[Lcom/samsung/android/camera/core2/container/LowPowerMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/LowPowerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/LowPowerMode;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/LowPowerMode;->a:I

    return p0
.end method
