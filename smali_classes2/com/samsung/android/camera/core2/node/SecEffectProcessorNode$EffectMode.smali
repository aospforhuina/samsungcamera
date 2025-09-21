.class public final enum Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;
.super Ljava/lang/Enum;
.source "SecEffectProcessorNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

.field public static final enum c:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

.field public static final enum f:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

.field private static final synthetic g:[Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->b:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    const-string v3, "BASIC"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->c:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    const-string v5, "USER_GENERATED"

    const/4 v6, 0x2

    const/16 v7, 0x66

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->d:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    const-string v7, "FACE_SHAPE_CORRECTION"

    const/4 v8, 0x3

    const/16 v9, 0x1bf

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->f:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->g:[Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->a:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->k(ILcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;)Z

    move-result p0

    return p0
.end method

.method public static b(I)Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->values()[Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/m0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/m0;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->b:Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    return-object p0
.end method

.method private static synthetic k(ILcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->h()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->g:[Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;

    return-object v0
.end method


# virtual methods
.method public h()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/SecEffectProcessorNode$EffectMode;->a:I

    return p0
.end method
