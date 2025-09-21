.class public final enum Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;
.super Ljava/lang/Enum;
.source "MultiFrameNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

.field public static final enum c:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

.field public static final enum d:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

.field public static final enum f:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

.field private static final synthetic g:[Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->b:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    const-string v3, "BASIC_FILTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->c:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    const-string v5, "MY_FILTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->d:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    const-string v7, "FACE_RETOUCHING"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->f:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    new-array v7, v9, [Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->g:[Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->g:[Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$EffectType;->a:I

    return p0
.end method
