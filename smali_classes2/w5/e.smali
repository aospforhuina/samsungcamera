.class Lw5/e;
.super Lw5/p0;
.source "EsimQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Ly2/u;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ly2/u;",
            ")",
            "Ljava/util/List<",
            "Lw5/k0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lu3/b;->q1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lw5/k0;->q:Lw5/k0;

    invoke-static {p1, v1, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    sget-object v1, Lw5/k0;->p:Lw5/k0;

    invoke-static {p1, v1, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    return-object v0

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Lw5/p0;->b(Landroid/content/Context;Ly2/u;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f12047c

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Lw5/k0;
    .locals 0

    sget-object p0, Lu3/b;->q1:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lw5/k0;->q:Lw5/k0;

    goto :goto_0

    :cond_0
    sget-object p0, Lw5/k0;->p:Lw5/k0;

    :goto_0
    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f12048f

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
