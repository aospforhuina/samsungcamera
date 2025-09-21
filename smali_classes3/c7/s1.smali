.class public Lc7/s1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lc7/l1;
.implements Lc7/s;
.implements Lc7/z1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7/s1$b;,
        Lc7/s1$a;
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lc7/s1;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lc7/t1;->c()Lc7/v0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lc7/t1;->d()Lc7/v0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lc7/s1;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lc7/s1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final C(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc7/g1;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lc7/s1$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lc7/s1$b;

    invoke-virtual {v1}, Lc7/s1$b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lc7/v;

    invoke-direct {p0, p1}, Lc7/s1;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lc7/v;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    .line 4
    invoke-direct {p0, v0, v1}, Lc7/s1;->u0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lc7/t1;->b()Lkotlinx/coroutines/internal/a0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0
.end method

.method private final D(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc7/s1;->Y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    invoke-virtual {p0}, Lc7/s1;->Q()Lc7/q;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    sget-object v2, Lc7/x1;->a:Lc7/x1;

    if-ne p0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p0, p1}, Lc7/q;->b(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final G(Lc7/g1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc7/s1;->Q()Lc7/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc7/u0;->dispose()V

    .line 3
    sget-object v0, Lc7/x1;->a:Lc7/x1;

    invoke-virtual {p0, v0}, Lc7/s1;->m0(Lc7/q;)V

    .line 4
    :cond_0
    instance-of v0, p2, Lc7/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lc7/v;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lc7/v;->a:Ljava/lang/Throwable;

    .line 5
    :cond_2
    instance-of p2, p1, Lc7/r1;

    if-eqz p2, :cond_3

    .line 6
    :try_start_0
    move-object p2, p1

    check-cast p2, Lc7/r1;

    invoke-virtual {p2, v1}, Lc7/x;->v(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7
    new-instance v0, Lc7/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lc7/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lc7/s1;->T(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {p1}, Lc7/g1;->c()Lc7/w1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lc7/s1;->f0(Lc7/w1;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final H(Lc7/s1$b;Lc7/r;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lc7/s1;->d0(Lkotlinx/coroutines/internal/o;)Lc7/r;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lc7/s1;->w0(Lc7/s1$b;Lc7/r;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3}, Lc7/s1;->J(Lc7/s1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lc7/s1;->y(Ljava/lang/Object;)V

    return-void
.end method

.method private final I(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lc7/m1;

    invoke-static {p0}, Lc7/s1;->s(Lc7/s1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 3
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lc7/z1;

    invoke-interface {p1}, Lc7/z1;->r()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private final J(Lc7/s1$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lc7/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc7/v;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lc7/v;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 2
    :goto_1
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lc7/s1$b;->f()Z

    move-result v2

    .line 4
    invoke-virtual {p1, v0}, Lc7/s1$b;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-direct {p0, p1, v3}, Lc7/s1;->M(Lc7/s1$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-direct {p0, v4, v3}, Lc7/s1;->x(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p1

    const/4 v3, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance p2, Lc7/v;

    const/4 v0, 0x2

    invoke-direct {p2, v4, v3, v0, v1}, Lc7/v;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    :goto_2
    if-eqz v4, :cond_7

    .line 9
    invoke-direct {p0, v4}, Lc7/s1;->D(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lc7/s1;->S(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lc7/v;

    invoke-virtual {v0}, Lc7/v;->b()Z

    :cond_7
    if-nez v2, :cond_8

    .line 11
    invoke-virtual {p0, v4}, Lc7/s1;->g0(Ljava/lang/Throwable;)V

    .line 12
    :cond_8
    invoke-virtual {p0, p2}, Lc7/s1;->h0(Ljava/lang/Object;)V

    .line 13
    sget-object v0, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lc7/t1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    invoke-direct {p0, p1, p2}, Lc7/s1;->G(Lc7/g1;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit p1

    throw p0
.end method

.method private final K(Lc7/g1;)Lc7/r;
    .locals 2

    instance-of v0, p1, Lc7/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc7/r;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Lc7/g1;->c()Lc7/w1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lc7/s1;->d0(Lkotlinx/coroutines/internal/o;)Lc7/r;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final L(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, Lc7/v;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lc7/v;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lc7/v;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method private final M(Lc7/s1$b;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/s1$b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lc7/s1$b;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lc7/m1;

    invoke-static {p0}, Lc7/s1;->s(Lc7/s1;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    return-object p1

    :cond_0
    return-object v1

    .line 4
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    .line 5
    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v1, p1

    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const/4 p0, 0x0

    .line 6
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method private final P(Lc7/g1;)Lc7/w1;
    .locals 2

    .line 1
    invoke-interface {p1}, Lc7/g1;->c()Lc7/w1;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lc7/v0;

    if-eqz v0, :cond_0

    new-instance v0, Lc7/w1;

    invoke-direct {v0}, Lc7/w1;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lc7/r1;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lc7/r1;

    invoke-direct {p0, p1}, Lc7/s1;->k0(Lc7/r1;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final Z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lc7/s1$b;

    if-eqz v3, :cond_7

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    move-object v3, v2

    check-cast v3, Lc7/s1$b;

    invoke-virtual {v3}, Lc7/s1$b;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lc7/t1;->f()Lkotlinx/coroutines/internal/a0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    .line 5
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lc7/s1$b;

    invoke-virtual {v3}, Lc7/s1$b;->f()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lc7/s1;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 7
    :cond_3
    move-object p1, v2

    check-cast p1, Lc7/s1$b;

    invoke-virtual {p1, v1}, Lc7/s1$b;->a(Ljava/lang/Throwable;)V

    .line 8
    :cond_4
    move-object p1, v2

    check-cast p1, Lc7/s1$b;

    invoke-virtual {p1}, Lc7/s1$b;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-eqz v0, :cond_6

    .line 9
    check-cast v2, Lc7/s1$b;

    invoke-virtual {v2}, Lc7/s1$b;->c()Lc7/w1;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lc7/s1;->e0(Lc7/w1;Ljava/lang/Throwable;)V

    .line 10
    :cond_6
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v2

    throw p0

    .line 12
    :cond_7
    instance-of v3, v2, Lc7/g1;

    if-eqz v3, :cond_b

    if-nez v1, :cond_8

    .line 13
    invoke-direct {p0, p1}, Lc7/s1;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 14
    :cond_8
    move-object v3, v2

    check-cast v3, Lc7/g1;

    invoke-interface {v3}, Lc7/g1;->isActive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 15
    invoke-direct {p0, v3, v1}, Lc7/s1;->t0(Lc7/g1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0

    .line 16
    :cond_9
    new-instance v3, Lc7/v;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lc7/v;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/g;)V

    invoke-direct {p0, v2, v3}, Lc7/s1;->u0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object v4

    if-eq v3, v4, :cond_a

    .line 18
    invoke-static {}, Lc7/t1;->b()Lkotlinx/coroutines/internal/a0;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    .line 19
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_b
    invoke-static {}, Lc7/t1;->f()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0
.end method

.method private final b0(Lu6/l;Z)Lc7/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;Z)",
            "Lc7/r1;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    instance-of p2, p1, Lc7/n1;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Lc7/n1;

    :cond_0
    if-nez v0, :cond_4

    .line 2
    new-instance v0, Lc7/j1;

    invoke-direct {v0, p1}, Lc7/j1;-><init>(Lu6/l;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of p2, p1, Lc7/r1;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Lc7/r1;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    new-instance v0, Lc7/k1;

    invoke-direct {v0, p1}, Lc7/k1;-><init>(Lu6/l;)V

    .line 5
    :cond_4
    :goto_0
    invoke-virtual {v0, p0}, Lc7/r1;->x(Lc7/s1;)V

    return-object v0
.end method

.method private final d0(Lkotlinx/coroutines/internal/o;)Lc7/r;
    .locals 0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->q()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    instance-of p0, p1, Lc7/r;

    if-eqz p0, :cond_1

    check-cast p1, Lc7/r;

    return-object p1

    .line 5
    :cond_1
    instance-of p0, p1, Lc7/w1;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final e0(Lc7/w1;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lc7/s1;->g0(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    instance-of v2, v0, Lc7/n1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lc7/r1;

    .line 5
    :try_start_0
    invoke-virtual {v2, p2}, Lc7/x;->v(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, v3}, Lk6/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v1, Lc7/y;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lc7/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object v2, Lk6/q;->a:Lk6/q;

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Lc7/s1;->T(Ljava/lang/Throwable;)V

    .line 11
    :cond_3
    invoke-direct {p0, p2}, Lc7/s1;->D(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final f0(Lc7/w1;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    instance-of v2, v0, Lc7/r1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lc7/r1;

    .line 4
    :try_start_0
    invoke-virtual {v2, p2}, Lc7/x;->v(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1, v3}, Lk6/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Lc7/y;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lc7/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object v2, Lk6/q;->a:Lk6/q;

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lc7/s1;->T(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private final j0(Lc7/v0;)V
    .locals 2

    .line 1
    new-instance v0, Lc7/w1;

    invoke-direct {v0}, Lc7/w1;-><init>()V

    .line 2
    invoke-virtual {p1}, Lc7/v0;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lc7/f1;

    invoke-direct {v1, v0}, Lc7/f1;-><init>(Lc7/w1;)V

    move-object v0, v1

    .line 3
    :goto_0
    sget-object v1, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final k0(Lc7/r1;)V
    .locals 2

    .line 1
    new-instance v0, Lc7/w1;

    invoke-direct {v0}, Lc7/w1;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/o;->h(Lkotlinx/coroutines/internal/o;)Z

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    .line 3
    sget-object v1, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final n0(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lc7/v0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lc7/v0;

    invoke-virtual {v0}, Lc7/v0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v0, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lc7/t1;->c()Lc7/v0;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc7/s1;->i0()V

    return v2

    .line 5
    :cond_2
    instance-of v0, p1, Lc7/f1;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lc7/f1;

    invoke-virtual {v3}, Lc7/f1;->c()Lc7/w1;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lc7/s1;->i0()V

    return v2

    :cond_4
    return v3
.end method

.method private final o0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of p0, p1, Lc7/s1$b;

    const-string v0, "Active"

    if-eqz p0, :cond_1

    .line 2
    check-cast p1, Lc7/s1$b;

    invoke-virtual {p1}, Lc7/s1$b;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lc7/s1$b;->g()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v0, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p1, Lc7/g1;

    if-eqz p0, :cond_3

    check-cast p1, Lc7/g1;

    invoke-interface {p1}, Lc7/g1;->isActive()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p0, p1, Lc7/v;

    if-eqz p0, :cond_4

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v0, "Completed"

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static synthetic q0(Lc7/s1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lc7/s1;->p0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic s(Lc7/s1;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc7/s1;->E()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final s0(Lc7/g1;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    sget-object v0, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lc7/t1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lc7/s1;->g0(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p2}, Lc7/s1;->h0(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lc7/s1;->G(Lc7/g1;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final t0(Lc7/g1;Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lc7/s1;->P(Lc7/g1;)Lc7/w1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v2, Lc7/s1$b;

    invoke-direct {v2, v0, v1, p2}, Lc7/s1$b;-><init>(Lc7/w1;ZLjava/lang/Throwable;)V

    .line 3
    sget-object v3, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-direct {p0, v0, p2}, Lc7/s1;->e0(Lc7/w1;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final u0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lc7/g1;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Lc7/v0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lc7/r1;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lc7/r;

    if-nez v0, :cond_3

    instance-of v0, p2, Lc7/v;

    if-nez v0, :cond_3

    .line 4
    check-cast p1, Lc7/g1;

    invoke-direct {p0, p1, p2}, Lc7/s1;->s0(Lc7/g1;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p2

    .line 5
    :cond_2
    invoke-static {}, Lc7/t1;->b()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_3
    check-cast p1, Lc7/g1;

    invoke-direct {p0, p1, p2}, Lc7/s1;->v0(Lc7/g1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lc7/s1;Lc7/s1$b;Lc7/r;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc7/s1;->H(Lc7/s1$b;Lc7/r;Ljava/lang/Object;)V

    return-void
.end method

.method private final v0(Lc7/g1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lc7/s1;->P(Lc7/g1;)Lc7/w1;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lc7/t1;->b()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    instance-of v1, p1, Lc7/s1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lc7/s1$b;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, Lc7/s1$b;

    invoke-direct {v1, v0, v3, v2}, Lc7/s1$b;-><init>(Lc7/w1;ZLjava/lang/Throwable;)V

    .line 3
    :cond_2
    new-instance v4, Lkotlin/jvm/internal/w;

    invoke-direct {v4}, Lkotlin/jvm/internal/w;-><init>()V

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {v1}, Lc7/s1$b;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_3
    const/4 v5, 0x1

    .line 6
    :try_start_1
    invoke-virtual {v1, v5}, Lc7/s1$b;->j(Z)V

    if-eq v1, p1, :cond_4

    .line 7
    sget-object v6, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lc7/t1;->b()Lkotlinx/coroutines/internal/a0;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    .line 8
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lc7/s1$b;->f()Z

    move-result v6

    .line 9
    instance-of v7, p2, Lc7/v;

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lc7/v;

    goto :goto_1

    :cond_5
    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_6

    iget-object v7, v7, Lc7/v;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v7}, Lc7/s1$b;->a(Ljava/lang/Throwable;)V

    .line 10
    :cond_6
    invoke-virtual {v1}, Lc7/s1$b;->e()Ljava/lang/Throwable;

    move-result-object v7

    if-nez v6, :cond_7

    move v3, v5

    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v2, v7

    :cond_8
    iput-object v2, v4, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    .line 11
    sget-object v3, Lk6/q;->a:Lk6/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 12
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    invoke-direct {p0, v0, v2}, Lc7/s1;->e0(Lc7/w1;Ljava/lang/Throwable;)V

    .line 13
    :cond_9
    invoke-direct {p0, p1}, Lc7/s1;->K(Lc7/g1;)Lc7/r;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 14
    invoke-direct {p0, v1, p1, p2}, Lc7/s1;->w0(Lc7/s1$b;Lc7/r;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 15
    sget-object p0, Lc7/t1;->b:Lkotlinx/coroutines/internal/a0;

    return-object p0

    .line 16
    :cond_a
    invoke-direct {p0, v1, p2}, Lc7/s1;->J(Lc7/s1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v1

    throw p0
.end method

.method private final w(Ljava/lang/Object;Lc7/w1;Lc7/r1;)Z
    .locals 1

    .line 1
    new-instance v0, Lc7/s1$c;

    invoke-direct {v0, p3, p0, p1}, Lc7/s1$c;-><init>(Lkotlinx/coroutines/internal/o;Lc7/s1;Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p3, p2, v0}, Lkotlinx/coroutines/internal/o;->u(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private final w0(Lc7/s1$b;Lc7/r;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p2, Lc7/r;->f:Lc7/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lc7/s1$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lc7/s1$a;-><init>(Lc7/s1;Lc7/s1$b;Lc7/r;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lc7/l1$a;->d(Lc7/l1;ZZLu6/l;ILjava/lang/Object;)Lc7/u0;

    move-result-object v0

    .line 4
    sget-object v1, Lc7/x1;->a:Lc7/x1;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lc7/s1;->d0(Lkotlinx/coroutines/internal/o;)Lc7/r;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method private final x(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    .line 3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eq v0, p1, :cond_1

    if-eq v0, p1, :cond_1

    .line 5
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p1, v0}, Lk6/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lc7/s1;->O()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lc7/s1;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lc7/t1;->b:Lkotlinx/coroutines/internal/a0;

    if-ne v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lc7/s1;->Z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    :cond_1
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lc7/t1;->b:Lkotlinx/coroutines/internal/a0;

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lc7/t1;->f()Lkotlinx/coroutines/internal/a0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0, v0}, Lc7/s1;->y(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public B(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc7/s1;->A(Ljava/lang/Object;)Z

    return-void
.end method

.method protected E()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public F(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lc7/s1;->A(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc7/s1;->N()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public N()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public O()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Q()Lc7/q;
    .locals 0

    iget-object p0, p0, Lc7/s1;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lc7/q;

    return-object p0
.end method

.method public final R()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lc7/s1;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/w;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/w;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/w;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected S(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public T(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method protected final U(Lc7/l1;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lc7/x1;->a:Lc7/x1;

    invoke-virtual {p0, p1}, Lc7/s1;->m0(Lc7/q;)V

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lc7/l1;->start()Z

    .line 3
    invoke-interface {p1, p0}, Lc7/l1;->d(Lc7/s;)Lc7/q;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lc7/s1;->m0(Lc7/q;)V

    .line 5
    invoke-virtual {p0}, Lc7/s1;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lc7/u0;->dispose()V

    .line 7
    sget-object p1, Lc7/x1;->a:Lc7/x1;

    invoke-virtual {p0, p1}, Lc7/s1;->m0(Lc7/q;)V

    :cond_1
    return-void
.end method

.method public final V(Lu6/l;)Lc7/u0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)",
            "Lc7/u0;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lc7/s1;->b(ZZLu6/l;)Lc7/u0;

    move-result-object p0

    return-object p0
.end method

.method public final W()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lc7/v;

    if-nez v0, :cond_1

    instance-of v0, p0, Lc7/s1$b;

    if-eqz v0, :cond_0

    check-cast p0, Lc7/s1$b;

    invoke-virtual {p0}, Lc7/s1$b;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final X()Z
    .locals 0

    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lc7/g1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected Y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lc7/m1;

    invoke-static {p0}, Lc7/s1;->s(Lc7/s1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lc7/s1;->B(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lc7/s1;->u0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lc7/t1;->a()Lkotlinx/coroutines/internal/a0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, Lc7/t1;->b()Lkotlinx/coroutines/internal/a0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {p0, p1}, Lc7/s1;->L(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    .line 8
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(ZZLu6/l;)Lc7/u0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)",
            "Lc7/u0;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p1}, Lc7/s1;->b0(Lu6/l;Z)Lc7/r1;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lc7/v0;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, v1

    check-cast v2, Lc7/v0;

    invoke-virtual {v2}, Lc7/v0;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v2, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_1
    invoke-direct {p0, v2}, Lc7/s1;->j0(Lc7/v0;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v2, v1, Lc7/g1;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 8
    move-object v2, v1

    check-cast v2, Lc7/g1;

    invoke-interface {v2}, Lc7/g1;->c()Lc7/w1;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 9
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lc7/r1;

    invoke-direct {p0, v1}, Lc7/s1;->k0(Lc7/r1;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v4, Lc7/x1;->a:Lc7/x1;

    if-eqz p1, :cond_8

    .line 11
    instance-of v5, v1, Lc7/s1$b;

    if-eqz v5, :cond_8

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    move-object v3, v1

    check-cast v3, Lc7/s1$b;

    invoke-virtual {v3}, Lc7/s1$b;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 14
    instance-of v5, p3, Lc7/r;

    if-eqz v5, :cond_7

    .line 15
    move-object v5, v1

    check-cast v5, Lc7/s1$b;

    invoke-virtual {v5}, Lc7/s1$b;->g()Z

    move-result v5

    if-nez v5, :cond_7

    .line 16
    :cond_4
    invoke-direct {p0, v1, v2, v0}, Lc7/s1;->w(Ljava/lang/Object;Lc7/w1;Lc7/r1;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 17
    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    .line 18
    :cond_7
    :try_start_1
    sget-object v5, Lk6/q;->a:Lk6/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_8
    :goto_1
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    .line 19
    invoke-interface {p3, v3}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v4

    .line 20
    :cond_a
    invoke-direct {p0, v1, v2, v0}, Lc7/s1;->w(Ljava/lang/Object;Lc7/w1;Lc7/r1;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    .line 21
    instance-of p0, v1, Lc7/v;

    if-eqz p0, :cond_c

    check-cast v1, Lc7/v;

    goto :goto_2

    :cond_c
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_d

    iget-object v3, v1, Lc7/v;->a:Ljava/lang/Throwable;

    .line 22
    :cond_d
    invoke-interface {p3, v3}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_e
    sget-object p0, Lc7/x1;->a:Lc7/x1;

    return-object p0
.end method

.method public c0()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lc7/s;)Lc7/q;
    .locals 6

    new-instance v3, Lc7/r;

    invoke-direct {v3, p1}, Lc7/r;-><init>(Lc7/s;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc7/l1$a;->d(Lc7/l1;ZZLu6/l;ILjava/lang/Object;)Lc7/u0;

    move-result-object p0

    check-cast p0, Lc7/q;

    return-object p0
.end method

.method public final f()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc7/s1$b;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lc7/s1$b;

    invoke-virtual {v0}, Lc7/s1$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc7/s1;->p0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    instance-of v1, v0, Lc7/g1;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Lc7/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lc7/v;

    iget-object v0, v0, Lc7/v;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lc7/s1;->q0(Lc7/s1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lc7/m1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lu6/p<",
            "-TR;-",
            "Ln6/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc7/l1$a;->b(Lc7/l1;Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected g0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public get(Ln6/g$c;)Ln6/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ln6/g$b;",
            ">(",
            "Ln6/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc7/l1$a;->c(Lc7/l1;Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ln6/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln6/g$c<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lc7/l1;->h:Lc7/l1$b;

    return-object p0
.end method

.method protected h0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected i0()V
    .locals 0

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lc7/g1;

    if-eqz v0, :cond_0

    check-cast p0, Lc7/g1;

    invoke-interface {p0}, Lc7/g1;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l0(Lc7/r1;)V
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc7/r1;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v1, Lc7/s1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lc7/t1;->c()Lc7/v0;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_2
    instance-of p0, v0, Lc7/g1;

    if-eqz p0, :cond_3

    .line 5
    check-cast v0, Lc7/g1;

    invoke-interface {v0}, Lc7/g1;->c()Lc7/w1;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->r()Z

    :cond_3
    return-void
.end method

.method public final m0(Lc7/q;)V
    .locals 0

    iput-object p1, p0, Lc7/s1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public minusKey(Ln6/g$c;)Ln6/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "*>;)",
            "Ln6/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc7/l1$a;->e(Lc7/l1;Ln6/g$c;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method protected final p0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lc7/m1;

    if-nez p2, :cond_1

    invoke-static {p0}, Lc7/s1;->s(Lc7/s1;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    :cond_2
    return-object v0
.end method

.method public plus(Ln6/g;)Ln6/g;
    .locals 0

    invoke-static {p0, p1}, Lc7/l1$a;->f(Lc7/l1;Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc7/s1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lc7/s1$b;

    invoke-virtual {v1}, Lc7/s1$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lc7/v;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lc7/v;

    iget-object v1, v1, Lc7/v;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lc7/g1;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lc7/m1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lc7/s1;->o0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    :cond_3
    return-object v2

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc7/s1;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lc7/s1;->o0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lc7/s1;->n0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc7/s1;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc7/k0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lc7/z1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc7/s1;->A(Ljava/lang/Object;)Z

    return-void
.end method

.method protected y(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final z(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lc7/s1;->A(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
