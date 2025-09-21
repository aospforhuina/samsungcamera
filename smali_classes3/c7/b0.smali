.class public final Lc7/b0;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# direct methods
.method private static final a(Ln6/g;Ln6/g;Z)Ln6/g;
    .locals 3

    .line 1
    invoke-static {p0}, Lc7/b0;->c(Ln6/g;)Z

    move-result v0

    .line 2
    invoke-static {p1}, Lc7/b0;->c(Ln6/g;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/w;

    invoke-direct {v0}, Lkotlin/jvm/internal/w;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    .line 5
    sget-object p1, Ln6/h;->a:Ln6/h;

    new-instance v2, Lc7/b0$b;

    invoke-direct {v2, v0, p2}, Lc7/b0$b;-><init>(Lkotlin/jvm/internal/w;Z)V

    invoke-interface {p0, p1, v2}, Ln6/g;->fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln6/g;

    if-eqz v1, :cond_1

    .line 6
    iget-object p2, v0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    check-cast p2, Ln6/g;

    sget-object v1, Lc7/b0$a;->a:Lc7/b0$a;

    invoke-interface {p2, p1, v1}, Ln6/g;->fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    check-cast p1, Ln6/g;

    invoke-interface {p0, p1}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ln6/g;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Ln6/g;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lc7/b0$c;->a:Lc7/b0$c;

    invoke-interface {p0, v0, v1}, Ln6/g;->fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Lc7/g0;Ln6/g;)Ln6/g;
    .locals 1

    .line 1
    invoke-interface {p0}, Lc7/g0;->getCoroutineContext()Ln6/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc7/b0;->a(Ln6/g;Ln6/g;Z)Ln6/g;

    move-result-object p0

    .line 2
    invoke-static {}, Lc7/t0;->a()Lc7/c0;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Ln6/e;->j:Ln6/e$b;

    invoke-interface {p0, p1}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lc7/t0;->a()Lc7/c0;

    move-result-object p1

    invoke-interface {p0, p1}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Ln6/g;Ln6/g;)Ln6/g;
    .locals 1

    .line 1
    invoke-static {p1}, Lc7/b0;->c(Ln6/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lc7/b0;->a(Ln6/g;Ln6/g;Z)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/jvm/internal/d;)Lc7/g2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/d;",
            ")",
            "Lc7/g2<",
            "*>;"
        }
    .end annotation

    .line 1
    :cond_0
    instance-of v0, p0, Lc7/p0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/d;->getCallerFrame()Lkotlin/coroutines/jvm/internal/d;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 3
    :cond_2
    instance-of v0, p0, Lc7/g2;

    if-eqz v0, :cond_0

    check-cast p0, Lc7/g2;

    return-object p0
.end method

.method public static final g(Ln6/d;Ln6/g;Ljava/lang/Object;)Lc7/g2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "*>;",
            "Ln6/g;",
            "Ljava/lang/Object;",
            ")",
            "Lc7/g2<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lc7/h2;->a:Lc7/h2;

    invoke-interface {p1, v0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    check-cast p0, Lkotlin/coroutines/jvm/internal/d;

    invoke-static {p0}, Lc7/b0;->f(Lkotlin/coroutines/jvm/internal/d;)Lc7/g2;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0, p1, p2}, Lc7/g2;->C0(Ln6/g;Ljava/lang/Object;)V

    :cond_3
    return-object p0
.end method
