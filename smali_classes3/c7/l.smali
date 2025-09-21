.class public Lc7/l;
.super Lc7/q0;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lc7/k;
.implements Lkotlin/coroutines/jvm/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc7/q0<",
        "TT;>;",
        "Lc7/k<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/d;"
    }
.end annotation


# static fields
.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field private final d:Ln6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln6/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ln6/g;

.field private g:Lc7/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lc7/l;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lc7/l;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lc7/l;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ln6/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lc7/q0;-><init>(I)V

    .line 2
    iput-object p1, p0, Lc7/l;->d:Ln6/d;

    .line 3
    invoke-interface {p1}, Ln6/d;->getContext()Ln6/g;

    move-result-object p1

    iput-object p1, p0, Lc7/l;->f:Ln6/g;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lc7/l;->_decision:I

    .line 5
    sget-object p1, Lc7/d;->a:Lc7/d;

    iput-object p1, p0, Lc7/l;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final A()Z
    .locals 1

    iget v0, p0, Lc7/q0;->c:I

    invoke-static {v0}, Lc7/r0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc7/l;->d:Ln6/d;

    check-cast p0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final B(Lu6/l;)Lc7/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)",
            "Lc7/i;"
        }
    .end annotation

    instance-of p0, p1, Lc7/i;

    if-eqz p0, :cond_0

    check-cast p1, Lc7/i;

    goto :goto_0

    :cond_0
    new-instance p0, Lc7/i1;

    invoke-direct {p0, p1}, Lc7/i1;-><init>(Lu6/l;)V

    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private final C(Lu6/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc7/l;->d:Ln6/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/f;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/f;->p(Lc7/k;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lc7/l;->p()V

    .line 3
    invoke-virtual {p0, v0}, Lc7/l;->n(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private final H(Ljava/lang/Object;ILu6/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lc7/l;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lc7/y1;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lc7/y1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lc7/l;->J(Lc7/y1;Ljava/lang/Object;ILu6/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lc7/l;->r()V

    .line 6
    invoke-direct {p0, p2}, Lc7/l;->s(I)V

    return-void

    .line 7
    :cond_1
    instance-of p2, v0, Lc7/o;

    if-eqz p2, :cond_3

    .line 8
    check-cast v0, Lc7/o;

    invoke-virtual {v0}, Lc7/o;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 9
    iget-object p1, v0, Lc7/v;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lc7/l;->m(Lu6/l;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lc7/l;->h(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lk6/d;

    invoke-direct {p0}, Lk6/d;-><init>()V

    throw p0
.end method

.method static synthetic I(Lc7/l;Ljava/lang/Object;ILu6/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc7/l;->H(Ljava/lang/Object;ILu6/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final J(Lc7/y1;Ljava/lang/Object;ILu6/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/y1;",
            "Ljava/lang/Object;",
            "I",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of p0, p2, Lc7/v;

    if-eqz p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p3}, Lc7/r0;->b(I)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_3

    .line 3
    instance-of p0, p1, Lc7/i;

    if-eqz p0, :cond_2

    instance-of p0, p1, Lc7/e;

    if-eqz p0, :cond_3

    :cond_2
    if-eqz p5, :cond_5

    .line 4
    :cond_3
    new-instance p0, Lc7/u;

    instance-of p3, p1, Lc7/i;

    if-eqz p3, :cond_4

    check-cast p1, Lc7/i;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lc7/u;-><init>(Ljava/lang/Object;Lc7/i;Lu6/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/g;)V

    move-object p2, p0

    :cond_5
    :goto_1
    return-object p2
.end method

.method private final K()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lc7/l;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    sget-object v0, Lc7/l;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final L(Ljava/lang/Object;Ljava/lang/Object;Lu6/l;)Lkotlinx/coroutines/internal/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)",
            "Lkotlinx/coroutines/internal/a0;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lc7/l;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lc7/y1;

    if-eqz v1, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lc7/y1;

    iget v5, p0, Lc7/q0;->c:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lc7/l;->J(Lc7/y1;Ljava/lang/Object;ILu6/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lc7/l;->r()V

    .line 6
    sget-object p0, Lc7/m;->a:Lkotlinx/coroutines/internal/a0;

    return-object p0

    .line 7
    :cond_1
    instance-of p0, v0, Lc7/u;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 8
    check-cast v0, Lc7/u;

    iget-object p0, v0, Lc7/u;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_2

    .line 9
    sget-object p1, Lc7/m;->a:Lkotlinx/coroutines/internal/a0;

    :cond_2
    return-object p1
.end method

.method private final M()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lc7/l;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    sget-object v0, Lc7/l;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final k(Lu6/l;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lc7/l;->getContext()Ln6/g;

    move-result-object p2

    .line 3
    new-instance v0, Lc7/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lc7/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lc7/f0;->a(Ln6/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final o(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lc7/l;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lc7/l;->d:Ln6/d;

    check-cast p0, Lkotlinx/coroutines/internal/f;

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/f;->n(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private final r()V
    .locals 1

    invoke-direct {p0}, Lc7/l;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc7/l;->p()V

    :cond_0
    return-void
.end method

.method private final s(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc7/l;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lc7/r0;->a(Lc7/q0;I)V

    return-void
.end method

.method private final w()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc7/l;->v()Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lc7/y1;

    if-eqz v0, :cond_0

    const-string p0, "Active"

    goto :goto_0

    .line 3
    :cond_0
    instance-of p0, p0, Lc7/o;

    if-eqz p0, :cond_1

    const-string p0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string p0, "Completed"

    :goto_0
    return-object p0
.end method

.method private final y()Lc7/u0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc7/l;->getContext()Ln6/g;

    move-result-object v0

    sget-object v1, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {v0, v1}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lc7/l1;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    new-instance v4, Lc7/p;

    invoke-direct {v4, p0}, Lc7/p;-><init>(Lc7/l;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Lc7/l1$a;->d(Lc7/l1;ZZLu6/l;ILjava/lang/Object;)Lc7/u0;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lc7/l;->g:Lc7/u0;

    return-object v0
.end method


# virtual methods
.method protected D()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final E(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc7/l;->o(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lc7/l;->n(Ljava/lang/Throwable;)Z

    .line 3
    invoke-direct {p0}, Lc7/l;->r()V

    return-void
.end method

.method public final G()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc7/l;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lc7/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lc7/u;

    iget-object v0, v0, Lc7/u;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc7/l;->p()V

    return v2

    .line 4
    :cond_0
    iput v2, p0, Lc7/l;->_decision:I

    .line 5
    sget-object v0, Lc7/d;->a:Lc7/d;

    iput-object v0, p0, Lc7/l;->_state:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10

    .line 1
    :cond_0
    iget-object p1, p0, Lc7/l;->_state:Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lc7/y1;

    if-nez v0, :cond_4

    .line 3
    instance-of v0, p1, Lc7/v;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    instance-of v0, p1, Lc7/u;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Lc7/u;

    invoke-virtual {v0}, Lc7/u;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    .line 6
    invoke-static/range {v1 .. v8}, Lc7/u;->b(Lc7/u;Ljava/lang/Object;Lc7/i;Lu6/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lc7/u;

    move-result-object v1

    .line 7
    sget-object v2, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0, p0, p2}, Lc7/u;->d(Lc7/l;Ljava/lang/Throwable;)V

    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    sget-object v8, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lc7/u;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lc7/u;-><init>(Ljava/lang/Object;Lc7/i;Lu6/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/g;)V

    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ln6/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln6/d<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lc7/l;->d:Ln6/d;

    return-object p0
.end method

.method public c(Lu6/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc7/l;->B(Lu6/l;)Lc7/i;

    move-result-object v8

    .line 2
    :cond_0
    :goto_0
    iget-object v9, p0, Lc7/l;->_state:Ljava/lang/Object;

    .line 3
    instance-of v0, v9, Lc7/d;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_1
    instance-of v0, v9, Lc7/i;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v9}, Lc7/l;->C(Lu6/l;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, v9, Lc7/v;

    if-eqz v0, :cond_7

    .line 7
    move-object v1, v9

    check-cast v1, Lc7/v;

    invoke-virtual {v1}, Lc7/v;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v9}, Lc7/l;->C(Lu6/l;Ljava/lang/Object;)V

    .line 8
    :cond_3
    instance-of v2, v9, Lc7/o;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 9
    iget-object v2, v1, Lc7/v;->a:Ljava/lang/Throwable;

    :cond_5
    invoke-direct {p0, p1, v2}, Lc7/l;->k(Lu6/l;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 10
    :cond_7
    instance-of v0, v9, Lc7/u;

    if-eqz v0, :cond_b

    .line 11
    move-object v0, v9

    check-cast v0, Lc7/u;

    iget-object v1, v0, Lc7/u;->b:Lc7/i;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v9}, Lc7/l;->C(Lu6/l;Ljava/lang/Object;)V

    .line 12
    :cond_8
    instance-of v1, v8, Lc7/e;

    if-eqz v1, :cond_9

    return-void

    .line 13
    :cond_9
    invoke-virtual {v0}, Lc7/u;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 14
    iget-object v0, v0, Lc7/u;->e:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lc7/l;->k(Lu6/l;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    .line 15
    invoke-static/range {v0 .. v7}, Lc7/u;->b(Lc7/u;Ljava/lang/Object;Lc7/i;Lu6/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lc7/u;

    move-result-object v0

    .line 16
    sget-object v1, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_b
    instance-of v0, v8, Lc7/e;

    if-eqz v0, :cond_c

    return-void

    .line 18
    :cond_c
    new-instance v10, Lc7/u;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lc7/u;-><init>(Ljava/lang/Object;Lc7/i;Lu6/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/g;)V

    .line 19
    sget-object v0, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lc7/q0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p0, p1, Lc7/u;

    if-eqz p0, :cond_0

    check-cast p1, Lc7/u;

    iget-object p1, p1, Lc7/u;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public g()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lc7/l;->v()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/d;
    .locals 1

    iget-object p0, p0, Lc7/l;->d:Ln6/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Ln6/g;
    .locals 0

    iget-object p0, p0, Lc7/l;->f:Ln6/g;

    return-object p0
.end method

.method public i(Ljava/lang/Object;Lu6/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lc7/q0;->c:I

    invoke-direct {p0, p1, v0, p2}, Lc7/l;->H(Ljava/lang/Object;ILu6/l;)V

    return-void
.end method

.method public final j(Lc7/i;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lc7/j;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lc7/l;->getContext()Ln6/g;

    move-result-object p2

    .line 3
    new-instance v0, Lc7/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lc7/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lc7/f0;->a(Ln6/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Object;Lu6/l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lc7/l;->L(Ljava/lang/Object;Ljava/lang/Object;Lu6/l;)Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lu6/l;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lc7/l;->getContext()Ln6/g;

    move-result-object p2

    .line 3
    new-instance v0, Lc7/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lc7/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lc7/f0;->a(Ln6/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lc7/l;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lc7/y1;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance v1, Lc7/o;

    instance-of v2, v0, Lc7/i;

    invoke-direct {v1, p0, p1, v2}, Lc7/o;-><init>(Ln6/d;Ljava/lang/Throwable;Z)V

    .line 4
    sget-object v3, Lc7/l;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    .line 5
    check-cast v0, Lc7/i;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, Lc7/l;->j(Lc7/i;Ljava/lang/Throwable;)V

    .line 6
    :cond_3
    invoke-direct {p0}, Lc7/l;->r()V

    .line 7
    iget p1, p0, Lc7/q0;->c:I

    invoke-direct {p0, p1}, Lc7/l;->s(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc7/l;->g:Lc7/u0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lc7/u0;->dispose()V

    .line 3
    sget-object v0, Lc7/x1;->a:Lc7/x1;

    iput-object v0, p0, Lc7/l;->g:Lc7/u0;

    return-void
.end method

.method public q(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lc7/q0;->c:I

    invoke-direct {p0, p1}, Lc7/l;->s(I)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1, p0}, Lc7/z;->b(Ljava/lang/Object;Lc7/k;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lc7/q0;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc7/l;->I(Lc7/l;Ljava/lang/Object;ILu6/l;ILjava/lang/Object;)V

    return-void
.end method

.method public t(Lc7/l1;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Lc7/l1;->f()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc7/l;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc7/l;->d:Ln6/d;

    invoke-static {v1}, Lc7/k0;->c(Ln6/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lc7/l;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc7/k0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lc7/l;->A()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lc7/l;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lc7/l;->g:Lc7/u0;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lc7/l;->y()Lc7/u0;

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lc7/l;->F()V

    .line 6
    :cond_1
    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lc7/l;->F()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lc7/l;->v()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lc7/v;

    if-nez v1, :cond_6

    .line 10
    iget v1, p0, Lc7/q0;->c:I

    invoke-static {v1}, Lc7/r0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lc7/l;->getContext()Ln6/g;

    move-result-object v1

    sget-object v2, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {v1, v2}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v1

    check-cast v1, Lc7/l1;

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {v1}, Lc7/l1;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v1}, Lc7/l1;->f()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v0, v1}, Lc7/l;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 15
    throw v1

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lc7/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_6
    check-cast v0, Lc7/v;

    iget-object p0, v0, Lc7/v;->a:Ljava/lang/Throwable;

    .line 18
    throw p0
.end method

.method public final v()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc7/l;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public x()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc7/l;->y()Lc7/u0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc7/l;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lc7/u0;->dispose()V

    .line 4
    sget-object v0, Lc7/x1;->a:Lc7/x1;

    iput-object v0, p0, Lc7/l;->g:Lc7/u0;

    :cond_1
    return-void
.end method

.method public z()Z
    .locals 0

    invoke-virtual {p0}, Lc7/l;->v()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lc7/y1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
