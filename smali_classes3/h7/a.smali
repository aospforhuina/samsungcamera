.class public final Lh7/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method private static final a(Ln6/d;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lk6/k;->a:Lk6/k$a;

    invoke-static {p1}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    .line 2
    throw p1
.end method

.method public static final b(Ln6/d;Ln6/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;",
            "Ln6/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object p0

    sget-object v0, Lk6/k;->a:Lk6/k$a;

    sget-object v0, Lk6/q;->a:Lk6/q;

    invoke-static {v0}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/g;->c(Ln6/d;Ljava/lang/Object;Lu6/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p1, p0}, Lh7/a;->a(Ln6/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Lu6/p;Ljava/lang/Object;Ln6/d;Lu6/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu6/p<",
            "-TR;-",
            "Ln6/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ln6/d<",
            "-TT;>;",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lo6/b;->a(Lu6/p;Ljava/lang/Object;Ln6/d;)Ln6/d;

    move-result-object p0

    invoke-static {p0}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object p0

    sget-object p1, Lk6/k;->a:Lk6/k$a;

    sget-object p1, Lk6/q;->a:Lk6/q;

    invoke-static {p1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/g;->b(Ln6/d;Ljava/lang/Object;Lu6/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p2, p0}, Lh7/a;->a(Ln6/d;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lu6/p;Ljava/lang/Object;Ln6/d;Lu6/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lh7/a;->c(Lu6/p;Ljava/lang/Object;Ln6/d;Lu6/l;)V

    return-void
.end method
