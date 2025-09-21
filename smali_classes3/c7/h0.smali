.class public final Lc7/h0;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public static final a(Ln6/g;)Lc7/g0;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/e;

    sget-object v1, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {p0, v1}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lc7/p1;->b(Lc7/l1;ILjava/lang/Object;)Lc7/t;

    move-result-object v1

    invoke-interface {p0, v1}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/e;-><init>(Ln6/g;)V

    return-object v0
.end method

.method public static final b(Lu6/p;Ln6/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lu6/p<",
            "-",
            "Lc7/g0;",
            "-",
            "Ln6/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ln6/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/z;

    invoke-interface {p1}, Ln6/d;->getContext()Ln6/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/z;-><init>(Ln6/g;Ln6/d;)V

    .line 2
    invoke-static {v0, v0, p0}, Lh7/b;->b(Lkotlinx/coroutines/internal/z;Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/g;->c(Ln6/d;)V

    :cond_0
    return-object p0
.end method
