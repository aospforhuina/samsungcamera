.class public final enum Lw5/o0;
.super Ljava/lang/Enum;
.source "QrCodeRequestedScanType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw5/o0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lw5/o0;

.field public static final enum c:Lw5/o0;

.field public static final enum d:Lw5/o0;

.field public static final enum f:Lw5/o0;

.field public static final enum g:Lw5/o0;

.field private static final synthetic k:[Lw5/o0;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lw5/p2;",
            "Lw5/k0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lw5/o0;

    sget-object v1, Lw5/p2;->d:Lw5/p2;

    sget-object v2, Lw5/k0;->d:Lw5/k0;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "CONTACTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lw5/o0;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v0, Lw5/o0;->b:Lw5/o0;

    .line 2
    new-instance v1, Lw5/o0;

    sget-object v2, Lw5/p2;->G:Lw5/p2;

    sget-object v4, Lw5/k0;->Q:Lw5/k0;

    invoke-static {v2, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    const-string v4, "WIFI"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lw5/o0;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v1, Lw5/o0;->c:Lw5/o0;

    .line 3
    new-instance v2, Lw5/o0;

    invoke-static {}, Lw5/o0;->m()Ljava/util/Map;

    move-result-object v4

    const-string v6, "SAMSUNG_INTERNET"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lw5/o0;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v2, Lw5/o0;->d:Lw5/o0;

    .line 4
    new-instance v4, Lw5/o0;

    invoke-static {}, Lw5/o0;->l()Ljava/util/Map;

    move-result-object v6

    const-string v8, "ALL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lw5/o0;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v4, Lw5/o0;->f:Lw5/o0;

    .line 5
    new-instance v6, Lw5/o0;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const-string v10, "EMPTY"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lw5/o0;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    sput-object v6, Lw5/o0;->g:Lw5/o0;

    const/4 v8, 0x5

    new-array v8, v8, [Lw5/o0;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    .line 6
    sput-object v8, Lw5/o0;->k:[Lw5/o0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lw5/p2;",
            "Lw5/k0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lw5/o0;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lw5/p2;)Lw5/p2;
    .locals 0

    invoke-static {p0}, Lw5/o0;->p(Lw5/p2;)Lw5/p2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lw5/o0;)Z
    .locals 0

    invoke-static {p0, p1}, Lw5/o0;->n(Ljava/lang/String;Lw5/o0;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Lw5/o0;
    .locals 2

    .line 1
    invoke-static {}, Lw5/o0;->values()[Lw5/o0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lw5/n0;

    invoke-direct {v1, p0}, Lw5/n0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lw5/o0;->g:Lw5/o0;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/o0;

    return-object p0
.end method

.method private static l()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lw5/p2;",
            "Lw5/k0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lw5/p2;->values()[Lw5/p2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lw5/m0;->a:Lw5/m0;

    sget-object v2, Lw5/l0;->a:Lw5/l0;

    .line 2
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static m()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lw5/p2;",
            "Lw5/k0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lw5/p2;->F:Lw5/p2;

    sget-object v2, Lw5/k0;->P:Lw5/k0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lw5/p2;->E:Lw5/p2;

    sget-object v2, Lw5/k0;->L:Lw5/k0;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic n(Ljava/lang/String;Lw5/o0;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic p(Lw5/p2;)Lw5/p2;
    .locals 0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lw5/o0;
    .locals 1

    const-class v0, Lw5/o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw5/o0;

    return-object p0
.end method

.method public static values()[Lw5/o0;
    .locals 1

    sget-object v0, Lw5/o0;->k:[Lw5/o0;

    invoke-virtual {v0}, [Lw5/o0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw5/o0;

    return-object v0
.end method


# virtual methods
.method public k(Lw5/p2;)Lw5/k0;
    .locals 0

    iget-object p0, p0, Lw5/o0;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/k0;

    return-object p0
.end method
