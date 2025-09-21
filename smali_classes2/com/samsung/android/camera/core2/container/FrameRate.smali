.class public final enum Lcom/samsung/android/camera/core2/container/FrameRate;
.super Ljava/lang/Enum;
.source "FrameRate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/FrameRate;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/FrameRate;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/FrameRate;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/FrameRate;

.field public static final enum f:Lcom/samsung/android/camera/core2/container/FrameRate;

.field private static final synthetic g:[Lcom/samsung/android/camera/core2/container/FrameRate;


# instance fields
.field private final a:Landroid/util/Rational;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/FrameRate;

    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    const-string v4, "RATIO_NONE"

    invoke-direct {v0, v4, v2, v1}, Lcom/samsung/android/camera/core2/container/FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/FrameRate;->b:Lcom/samsung/android/camera/core2/container/FrameRate;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/FrameRate;

    new-instance v4, Landroid/util/Rational;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Landroid/util/Rational;-><init>(II)V

    const-string v6, "RATIO_1_OVER_2"

    invoke-direct {v1, v6, v3, v4}, Lcom/samsung/android/camera/core2/container/FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/FrameRate;->c:Lcom/samsung/android/camera/core2/container/FrameRate;

    .line 3
    new-instance v4, Lcom/samsung/android/camera/core2/container/FrameRate;

    new-instance v6, Landroid/util/Rational;

    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Landroid/util/Rational;-><init>(II)V

    const-string v8, "RATIO_4_OVER_5"

    invoke-direct {v4, v8, v5, v6}, Lcom/samsung/android/camera/core2/container/FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v4, Lcom/samsung/android/camera/core2/container/FrameRate;->d:Lcom/samsung/android/camera/core2/container/FrameRate;

    .line 4
    new-instance v6, Lcom/samsung/android/camera/core2/container/FrameRate;

    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v3, v3}, Landroid/util/Rational;-><init>(II)V

    const-string v9, "RATIO_MAX_PREVIEW_FPS"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lcom/samsung/android/camera/core2/container/FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v6, Lcom/samsung/android/camera/core2/container/FrameRate;->f:Lcom/samsung/android/camera/core2/container/FrameRate;

    new-array v7, v7, [Lcom/samsung/android/camera/core2/container/FrameRate;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v10

    .line 5
    sput-object v7, Lcom/samsung/android/camera/core2/container/FrameRate;->g:[Lcom/samsung/android/camera/core2/container/FrameRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Rational;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/container/FrameRate;->a:Landroid/util/Rational;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/FrameRate;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/FrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/FrameRate;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/FrameRate;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/FrameRate;->g:[Lcom/samsung/android/camera/core2/container/FrameRate;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/FrameRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/FrameRate;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/FrameRate;->a:Landroid/util/Rational;

    return-object p0
.end method

.method public b()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/FrameRate;->a:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    return p0
.end method
