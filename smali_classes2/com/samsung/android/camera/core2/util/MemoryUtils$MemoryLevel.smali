.class public final enum Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;
.super Ljava/lang/Enum;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum k:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum l:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum m:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

.field public static final enum n:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

.field private static final synthetic o:[Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v8, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const-string v1, "VERY_LOW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->g:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const-string v10, "LOW"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x12c

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/16 v16, 0x5

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->k:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    .line 3
    new-instance v1, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const-string v18, "MID"

    const/16 v19, 0x2

    const/16 v20, 0x2

    const/16 v21, 0x190

    const/16 v22, 0x5

    const/16 v23, 0x7

    const/16 v24, 0xa

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->l:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    .line 4
    new-instance v2, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const-string v10, "HIGH"

    const/4 v11, 0x3

    const/4 v12, 0x3

    const/16 v13, 0x320

    const/4 v14, 0x7

    const/16 v15, 0x9

    const/16 v16, 0xf

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v2, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->m:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    .line 5
    new-instance v3, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const-string v18, "VERY_HIGH"

    const/16 v19, 0x4

    const/16 v20, 0x4

    const/16 v21, 0x4b0

    const/16 v22, 0x7

    const/16 v23, 0x9

    const/16 v24, 0x1e

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->n:Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 6
    sput-object v4, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->o:[Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->a:I

    .line 3
    iput p4, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->b:I

    .line 4
    iput p5, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->c:I

    .line 5
    iput p6, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->d:I

    .line 6
    iput p7, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->f:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->p(ILcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(I)Ljava/lang/IllegalArgumentException;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->r(I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic p(ILcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->l()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic r(I)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory level is not valid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static s(I)Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->values()[Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/u1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/util/u1;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/v1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/util/v1;-><init>(I)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->o:[Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;

    return-object v0
.end method


# virtual methods
.method public h()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->f:I

    return p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->b:I

    return p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->a:I

    return p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->d:I

    return p0
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/util/MemoryUtils$MemoryLevel;->c:I

    return p0
.end method
