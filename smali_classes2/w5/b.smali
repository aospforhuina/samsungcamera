.class Lw5/b;
.super Lw5/p0;
.source "ContactQrCodeResult.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V

    return-void
.end method

.method private o(Landroid/content/Context;Ly2/d;Z)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lw5/b;->q(Ly2/d;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ly2/d;->m()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2
    :goto_0
    invoke-direct {p0, p2}, Lw5/b;->p(Ly2/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ly2/d;->j()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 3
    :goto_1
    invoke-direct {p0, p2}, Lw5/b;->r(Ly2/d;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Ly2/d;->q()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v2

    :goto_2
    if-eqz p3, :cond_3

    .line 4
    invoke-static {p0}, Lcom/sec/android/app/camera/util/TextUtil;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const p3, 0x7f1204b8

    const/4 v4, 0x1

    if-nez p2, :cond_6

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x2

    const v6, 0x7f1204b7

    if-nez p2, :cond_4

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p0, p2, v4

    .line 7
    invoke-virtual {p1, v6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    new-array p0, v5, [Ljava/lang/Object;

    aput-object v0, p0, v1

    aput-object v3, p0, v4

    .line 9
    invoke-virtual {p1, v6, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v0, p0, v1

    .line 10
    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v1

    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v3, p0, v1

    .line 14
    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v2, p0, v1

    .line 15
    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private p(Ly2/d;)Z
    .locals 1

    invoke-virtual {p1}, Ly2/d;->j()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ly2/d;->j()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ly2/d;->j()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private q(Ly2/d;)Z
    .locals 1

    invoke-virtual {p1}, Ly2/d;->m()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ly2/d;->m()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ly2/d;->m()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private r(Ly2/d;)Z
    .locals 1

    invoke-virtual {p1}, Ly2/d;->q()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ly2/d;->q()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ly2/d;->q()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ly2/u;)Ljava/util/List;
    .locals 4
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
    sget-object v1, Lw5/k0;->d:Lw5/k0;

    invoke-static {p1, v1, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    move-object v1, p2

    check-cast v1, Ly2/d;

    invoke-direct {p0, v1}, Lw5/b;->r(Ly2/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lw5/k0;->f:Lw5/k0;

    invoke-static {p1, v2, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    sget-object v2, Lw5/k0;->k:Lw5/k0;

    invoke-static {p1, v2, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-direct {p0, v1}, Lw5/b;->p(Ly2/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    sget-object v1, Lw5/k0;->g:Lw5/k0;

    invoke-static {p1, v1, p2}, Lw5/d0;->i0(Landroid/content/Context;Lw5/k0;Ly2/u;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    return-object v0

    .line 13
    :cond_4
    invoke-super {p0, p1, p2}, Lw5/p0;->b(Landroid/content/Context;Ly2/u;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 1

    check-cast p2, Ly2/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lw5/b;->o(Landroid/content/Context;Ly2/d;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected f(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 1

    check-cast p2, Ly2/d;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lw5/b;->o(Landroid/content/Context;Ly2/d;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1204be

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
