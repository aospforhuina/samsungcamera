.class public final enum La3/c;
.super Ljava/lang/Enum;
.source "PayResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La3/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La3/c;

.field public static final enum c:La3/c;

.field public static final enum d:La3/c;

.field public static final enum f:La3/c;

.field private static final synthetic g:[La3/c;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La3/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, La3/c;

    const/4 v1, 0x2

    new-array v2, v1, [La3/d;

    sget-object v3, La3/d;->d:La3/d;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, La3/d;->f:La3/d;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "SAMSUNG_PAY_INDONESIA"

    invoke-direct {v0, v3, v4, v2}, La3/c;-><init>(Ljava/lang/String;I[La3/d;)V

    sput-object v0, La3/c;->b:La3/c;

    .line 2
    new-instance v2, La3/c;

    const/4 v3, 0x4

    new-array v6, v3, [La3/d;

    sget-object v7, La3/d;->a:La3/d;

    aput-object v7, v6, v4

    sget-object v7, La3/d;->c:La3/d;

    aput-object v7, v6, v5

    sget-object v7, La3/d;->b:La3/d;

    aput-object v7, v6, v1

    sget-object v7, La3/d;->k:La3/d;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string v7, "SAMSUNG_PAY_INDIA"

    invoke-direct {v2, v7, v5, v6}, La3/c;-><init>(Ljava/lang/String;I[La3/d;)V

    sput-object v2, La3/c;->c:La3/c;

    .line 3
    new-instance v6, La3/c;

    new-array v7, v5, [La3/d;

    sget-object v9, La3/d;->g:La3/d;

    aput-object v9, v7, v4

    const-string v9, "PIX"

    invoke-direct {v6, v9, v1, v7}, La3/c;-><init>(Ljava/lang/String;I[La3/d;)V

    sput-object v6, La3/c;->d:La3/c;

    .line 4
    new-instance v7, La3/c;

    new-array v9, v5, [La3/d;

    sget-object v10, La3/d;->l:La3/d;

    aput-object v10, v9, v4

    const-string v10, "OTHER"

    invoke-direct {v7, v10, v8, v9}, La3/c;-><init>(Ljava/lang/String;I[La3/d;)V

    sput-object v7, La3/c;->f:La3/c;

    new-array v3, v3, [La3/c;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    aput-object v6, v3, v1

    aput-object v7, v3, v8

    .line 5
    sput-object v3, La3/c;->g:[La3/c;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[La3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "La3/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, La3/c;->a:Ljava/util/Set;

    .line 3
    invoke-virtual {p3}, [La3/d;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La3/c;
    .locals 1

    const-class v0, La3/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La3/c;

    return-object p0
.end method

.method public static values()[La3/c;
    .locals 1

    sget-object v0, La3/c;->g:[La3/c;

    invoke-virtual {v0}, [La3/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La3/c;

    return-object v0
.end method


# virtual methods
.method public a(La3/d;)Z
    .locals 0

    iget-object p0, p0, La3/c;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
