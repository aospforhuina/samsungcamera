.class public final Ln2/n;
.super Ln2/k;
.source "JsonObject.java"


# instance fields
.field private final a:Lp2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/h<",
            "Ljava/lang/String;",
            "Ln2/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln2/k;-><init>()V

    .line 2
    new-instance v0, Lp2/h;

    invoke-direct {v0}, Lp2/h;-><init>()V

    iput-object v0, p0, Ln2/n;->a:Lp2/h;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ln2/k;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ln2/n;->a:Lp2/h;

    invoke-virtual {p0}, Lp2/h;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Ln2/n;

    if-eqz v0, :cond_0

    check-cast p1, Ln2/n;

    iget-object p1, p1, Ln2/n;->a:Lp2/h;

    iget-object p0, p0, Ln2/n;->a:Lp2/h;

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ln2/n;->a:Lp2/h;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public i(Ljava/lang/String;Ln2/k;)V
    .locals 0

    iget-object p0, p0, Ln2/n;->a:Lp2/h;

    if-nez p2, :cond_0

    sget-object p2, Ln2/m;->a:Ln2/m;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lp2/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Ln2/m;->a:Ln2/m;

    goto :goto_0

    :cond_0
    new-instance v0, Ln2/p;

    invoke-direct {v0, p2}, Ln2/p;-><init>(Ljava/lang/Boolean;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Ln2/m;->a:Ln2/m;

    goto :goto_0

    :cond_0
    new-instance v0, Ln2/p;

    invoke-direct {v0, p2}, Ln2/p;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Ln2/m;->a:Ln2/m;

    goto :goto_0

    :cond_0
    new-instance v0, Ln2/p;

    invoke-direct {v0, p2}, Ln2/p;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    return-void
.end method
