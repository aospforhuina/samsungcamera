.class final synthetic Lc7/q1;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public static final a(Lc7/l1;)Lc7/t;
    .locals 1

    new-instance v0, Lc7/o1;

    invoke-direct {v0, p0}, Lc7/o1;-><init>(Lc7/l1;)V

    return-object v0
.end method

.method public static synthetic b(Lc7/l1;ILjava/lang/Object;)Lc7/t;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lc7/p1;->a(Lc7/l1;)Lc7/t;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ln6/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {p0, v0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    check-cast p0, Lc7/l1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lc7/l1;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ln6/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lc7/p1;->c(Ln6/g;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Lc7/l1;)V
    .locals 1

    invoke-interface {p0}, Lc7/l1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lc7/l1;->f()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final f(Ln6/g;)V
    .locals 1

    sget-object v0, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {p0, v0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    check-cast p0, Lc7/l1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lc7/p1;->e(Lc7/l1;)V

    :cond_0
    return-void
.end method
