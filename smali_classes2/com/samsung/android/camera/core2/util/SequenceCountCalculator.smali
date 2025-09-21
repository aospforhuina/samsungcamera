.class public abstract enum Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;
.super Ljava/lang/Enum;
.source "SequenceCountCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

.field public static final enum g:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

.field public static final enum k:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

.field public static final enum l:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

.field private static final synthetic m:[Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;


# instance fields
.field private final a:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$1;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$1;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/util/i2;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->f:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$2;

    sget-object v4, Lcom/samsung/android/camera/core2/util/f2;->a:Lcom/samsung/android/camera/core2/util/f2;

    const-string v5, "HYBRID"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v4, v3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$2;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/l2;)V

    sput-object v1, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->g:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    .line 3
    new-instance v4, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$3;

    sget-object v5, Lcom/samsung/android/camera/core2/util/g2;->a:Lcom/samsung/android/camera/core2/util/g2;

    const-string v7, "DUAL_BOKEH"

    const/4 v8, 0x2

    invoke-direct {v4, v7, v8, v5, v3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$3;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/m2;)V

    sput-object v4, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->k:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$4;

    sget-object v7, Lcom/samsung/android/camera/core2/util/e2;->a:Lcom/samsung/android/camera/core2/util/e2;

    const-string v9, "DUAL_BOKEH_NIGHT"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$4;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/n2;)V

    sput-object v5, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->l:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    aput-object v0, v3, v2

    aput-object v1, v3, v6

    aput-object v4, v3, v8

    aput-object v5, v3, v10

    .line 5
    sput-object v3, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->m:[Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->a:Ljava/util/function/Predicate;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/util/o2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotInfo;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->a:Ljava/util/function/Predicate;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/samsung/android/camera/core2/util/o2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->s(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->u(Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->r(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->v(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->t(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z

    move-result p0

    return p0
.end method

.method public static m(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->p(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    move-result-object v0

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->w(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->n(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->values()[Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/util/h2;->a:Lcom/samsung/android/camera/core2/util/h2;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/util/d2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/util/d2;-><init>(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->f:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    return-object p0
.end method

.method private static r(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->p(I)Z

    move-result p0

    return p0
.end method

.method private static s(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->n(I)Z

    move-result p0

    return p0
.end method

.method private static t(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->s(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Z

    move-result p0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->a(I)Z

    move-result v0

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic u(Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->f:Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic v(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->a:Ljava/util/function/Predicate;

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->m:[Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;

    return-object v0
.end method

.method private w(Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result p2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->i(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->b:I

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->j(Ljava/lang/Integer;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->c:I

    .line 4
    sget-object p2, Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/camera/core2/processor/ProcessRequest$ProcessType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/camera/core2/util/SequenceCountCalculator;->d:I

    return-void
.end method


# virtual methods
.method protected abstract n(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)Lcom/samsung/android/camera/core2/util/SequenceCountCalculator$SequenceCountData;
.end method
