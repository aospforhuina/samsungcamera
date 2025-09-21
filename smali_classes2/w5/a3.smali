.class Lw5/a3;
.super Lw5/p0;
.source "UrlQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;Ly2/u;)Ljava/util/List;
    .locals 1
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
    sget-object v0, Lw5/k0;->O:Lw5/k0;

    invoke-static {p1, v0, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    sget-object p1, Lw5/k0;->N:Lw5/k0;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    instance-of p0, p2, Ly2/i0;

    if-eqz p0, :cond_0

    check-cast p2, Ly2/i0;

    invoke-virtual {p2}, Ly2/i0;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ly2/u;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1204bf

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
