.class public final Lq2/i;
.super Ln2/w;
.source "NumberTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ln2/x;


# instance fields
.field private final a:Ln2/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln2/u;->b:Ln2/u;

    invoke-static {v0}, Lq2/i;->f(Ln2/v;)Ln2/x;

    move-result-object v0

    sput-object v0, Lq2/i;->b:Ln2/x;

    return-void
.end method

.method private constructor <init>(Ln2/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 2
    iput-object p1, p0, Lq2/i;->a:Ln2/v;

    return-void
.end method

.method public static e(Ln2/v;)Ln2/x;
    .locals 1

    .line 1
    sget-object v0, Ln2/u;->b:Ln2/u;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lq2/i;->b:Ln2/x;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lq2/i;->f(Ln2/v;)Ln2/x;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ln2/v;)Ln2/x;
    .locals 1

    .line 1
    new-instance v0, Lq2/i;

    invoke-direct {v0, p0}, Lq2/i;-><init>(Ln2/v;)V

    .line 2
    new-instance p0, Lq2/i$a;

    invoke-direct {p0, v0}, Lq2/i$a;-><init>(Lq2/i;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq2/i;->g(Lu2/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lq2/i;->h(Lu2/c;Ljava/lang/Number;)V

    return-void
.end method

.method public g(Lu2/a;)Ljava/lang/Number;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lq2/i$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ln2/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu2/a;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    iget-object p0, p0, Lq2/i;->a:Ln2/v;

    invoke-interface {p0, p1}, Ln2/v;->a(Lu2/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lu2/c;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, Lu2/c;->M(Ljava/lang/Number;)Lu2/c;

    return-void
.end method
