.class Lw5/d;
.super Lw5/p0;
.source "ErrorQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Lw5/p0;)V
    .locals 1

    invoke-virtual {p3}, Lw5/p0;->h()Ly2/u;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;Lw5/p0;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Ly2/u;)Ljava/util/List;
    .locals 2
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
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lw5/k0;->o:Lw5/k0;

    invoke-static {p1, v0, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    sget-object v0, Lw5/k0;->n:Lw5/k0;

    invoke-static {p1, v0, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    sget-object p1, Lw5/k0;->m:Lw5/k0;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lw5/p0;->b:Lw5/p0;

    invoke-virtual {p0}, Lw5/p0;->l()Lw5/p2;

    move-result-object p0

    sget-object v0, Lw5/p2;->w:Lw5/p2;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1204b9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ly2/u;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/p0;->b:Lw5/p0;

    invoke-virtual {p0}, Lw5/p0;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
