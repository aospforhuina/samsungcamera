.class public final Lc7/g2;
.super Lkotlinx/coroutines/internal/z;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lk6/j<",
            "Ln6/g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/g;Ln6/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g;",
            "Ln6/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lc7/h2;->a:Lc7/h2;

    invoke-interface {p1, v0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/internal/z;-><init>(Ln6/g;Ln6/d;)V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lc7/g2;->d:Ljava/lang/ThreadLocal;

    .line 3
    invoke-interface {p2}, Ln6/d;->getContext()Ln6/g;

    move-result-object p2

    sget-object v0, Ln6/e;->j:Ln6/e$b;

    invoke-interface {p2, v0}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p2

    instance-of p2, p2, Lc7/c0;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/e0;->c(Ln6/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/e0;->a(Ln6/g;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lc7/g2;->C0(Ln6/g;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc7/g2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lc7/g2;->d:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final C0(Ln6/g;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lc7/g2;->d:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Lk6/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Lk6/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc7/g2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk6/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk6/j;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln6/g;

    invoke-virtual {v0}, Lk6/j;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/e0;->a(Ln6/g;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lc7/g2;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-static {p1, v0}, Lc7/z;->a(Ljava/lang/Object;Ln6/d;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    .line 6
    invoke-interface {v0}, Ln6/d;->getContext()Ln6/g;

    move-result-object v2

    .line 7
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/e0;->c(Ln6/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    sget-object v4, Lkotlinx/coroutines/internal/e0;->a:Lkotlinx/coroutines/internal/a0;

    if-eq v3, v4, :cond_1

    .line 9
    invoke-static {v0, v2, v3}, Lc7/b0;->g(Ln6/d;Ln6/g;Ljava/lang/Object;)Lc7/g2;

    move-result-object v1

    .line 10
    :cond_1
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-interface {p0, p1}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    .line 11
    sget-object p0, Lk6/q;->a:Lk6/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lc7/g2;->B0()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/e0;->a(Ln6/g;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Lc7/g2;->B0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/e0;->a(Ln6/g;Ljava/lang/Object;)V

    :cond_5
    throw p0
.end method
