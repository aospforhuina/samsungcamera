.class public Lr/d;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method private static a(Ls/c;FLh/h;Lr/n0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls/c;",
            "F",
            "Lh/h;",
            "Lr/n0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lu/a<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lr/u;->a(Ls/c;Lh/h;FLr/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ls/c;Lh/h;Lr/n0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls/c;",
            "Lh/h;",
            "Lr/n0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lu/a<",
            "TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lr/u;->a(Ls/c;Lh/h;FLr/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Ls/c;Lh/h;)Ln/a;
    .locals 2

    new-instance v0, Ln/a;

    sget-object v1, Lr/g;->a:Lr/g;

    invoke-static {p0, p1, v1}, Lr/d;->b(Ls/c;Lh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Ls/c;Lh/h;)Ln/j;
    .locals 2

    new-instance v0, Ln/j;

    sget-object v1, Lr/i;->a:Lr/i;

    invoke-static {p0, p1, v1}, Lr/d;->b(Ls/c;Lh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Ls/c;Lh/h;)Ln/b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lr/d;->f(Ls/c;Lh/h;Z)Ln/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ls/c;Lh/h;Z)Ln/b;
    .locals 2

    .line 1
    new-instance v0, Ln/b;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lt/h;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lr/l;->a:Lr/l;

    invoke-static {p0, p2, p1, v1}, Lr/d;->a(Ls/c;FLh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Ls/c;Lh/h;I)Ln/c;
    .locals 2

    .line 1
    new-instance v0, Ln/c;

    new-instance v1, Lr/o;

    invoke-direct {v1, p2}, Lr/o;-><init>(I)V

    .line 2
    invoke-static {p0, p1, v1}, Lr/d;->b(Ls/c;Lh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Ls/c;Lh/h;)Ln/d;
    .locals 2

    new-instance v0, Ln/d;

    sget-object v1, Lr/r;->a:Lr/r;

    invoke-static {p0, p1, v1}, Lr/d;->b(Ls/c;Lh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Ls/c;Lh/h;)Ln/f;
    .locals 4

    new-instance v0, Ln/f;

    invoke-static {}, Lt/h;->e()F

    move-result v1

    sget-object v2, Lr/b0;->a:Lr/b0;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lr/u;->a(Ls/c;Lh/h;FLr/n0;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Ls/c;Lh/h;)Ln/g;
    .locals 2

    new-instance v0, Ln/g;

    sget-object v1, Lr/g0;->a:Lr/g0;

    invoke-static {p0, p1, v1}, Lr/d;->b(Ls/c;Lh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static k(Ls/c;Lh/h;)Ln/h;
    .locals 3

    .line 1
    new-instance v0, Ln/h;

    .line 2
    invoke-static {}, Lt/h;->e()F

    move-result v1

    sget-object v2, Lr/h0;->a:Lr/h0;

    invoke-static {p0, v1, p1, v2}, Lr/d;->a(Ls/c;FLh/h;Lr/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ln/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
