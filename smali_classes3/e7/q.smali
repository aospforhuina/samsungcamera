.class public final Le7/q;
.super Ljava/lang/Object;
.source "Produce.kt"


# direct methods
.method public static final a(Le7/s;Lu6/a;Ln6/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/s<",
            "*>;",
            "Lu6/a<",
            "Lk6/q;",
            ">;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le7/q$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le7/q$a;

    iget v1, v0, Le7/q$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le7/q$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Le7/q$a;

    invoke-direct {v0, p2}, Le7/q$a;-><init>(Ln6/d;)V

    :goto_0
    iget-object p2, v0, Le7/q$a;->c:Ljava/lang/Object;

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Le7/q$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le7/q$a;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lu6/a;

    iget-object p0, v0, Le7/q$a;->a:Ljava/lang/Object;

    check-cast p0, Le7/s;

    :try_start_0
    invoke-static {p2}, Lk6/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lk6/l;->b(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Ln6/d;->getContext()Ln6/g;

    move-result-object p2

    sget-object v2, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {p2, v2}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p2

    if-ne p2, p0, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 5
    :try_start_1
    iput-object p0, v0, Le7/q$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Le7/q$a;->b:Ljava/lang/Object;

    iput v3, v0, Le7/q$a;->d:I

    .line 6
    new-instance p2, Lc7/l;

    invoke-static {v0}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Lc7/l;-><init>(Ln6/d;I)V

    .line 7
    invoke-virtual {p2}, Lc7/l;->x()V

    .line 8
    new-instance v2, Le7/q$b;

    invoke-direct {v2, p2}, Le7/q$b;-><init>(Lc7/k;)V

    invoke-interface {p0, v2}, Le7/y;->e(Lu6/l;)V

    .line 9
    invoke-virtual {p2}, Lc7/l;->u()Ljava/lang/Object;

    move-result-object p0

    .line 10
    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/g;->c(Ln6/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-ne p0, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_2
    invoke-interface {p1}, Lu6/a;->invoke()Ljava/lang/Object;

    .line 12
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0

    .line 13
    :goto_3
    invoke-interface {p1}, Lu6/a;->invoke()Ljava/lang/Object;

    throw p0

    .line 14
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lc7/g0;Ln6/g;ILe7/e;Lc7/i0;Lu6/l;Lu6/p;)Le7/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lc7/g0;",
            "Ln6/g;",
            "I",
            "Le7/e;",
            "Lc7/i0;",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;",
            "Lu6/p<",
            "-",
            "Le7/s<",
            "-TE;>;-",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Le7/u<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p2, p3, v0, v1, v0}, Le7/h;->b(ILe7/e;Lu6/l;ILjava/lang/Object;)Le7/f;

    move-result-object p2

    .line 2
    invoke-static {p0, p1}, Lc7/b0;->d(Lc7/g0;Ln6/g;)Ln6/g;

    move-result-object p0

    .line 3
    new-instance p1, Le7/r;

    invoke-direct {p1, p0, p2}, Le7/r;-><init>(Ln6/g;Le7/f;)V

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p1, p5}, Lc7/s1;->V(Lu6/l;)Lc7/u0;

    .line 5
    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Lc7/a;->A0(Lc7/i0;Ljava/lang/Object;Lu6/p;)V

    return-object p1
.end method

.method public static synthetic c(Lc7/g0;Ln6/g;ILe7/e;Lc7/i0;Lu6/l;Lu6/p;ILjava/lang/Object;)Le7/u;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 1
    sget-object p1, Ln6/h;->a:Ln6/h;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    .line 2
    sget-object p3, Le7/e;->a:Le7/e;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 3
    sget-object p4, Lc7/i0;->a:Lc7/i0;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    .line 4
    invoke-static/range {v0 .. v6}, Le7/q;->b(Lc7/g0;Ln6/g;ILe7/e;Lc7/i0;Lu6/l;Lu6/p;)Le7/u;

    move-result-object p0

    return-object p0
.end method
