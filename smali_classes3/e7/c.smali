.class public abstract Le7/c;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Le7/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le7/y<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final a:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "TE;",
            "Lk6/q;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/internal/m;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Le7/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Le7/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lu6/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-TE;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le7/c;->a:Lu6/l;

    .line 3
    new-instance p1, Lkotlinx/coroutines/internal/m;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/m;-><init>()V

    iput-object p1, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le7/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method private final b()I
    .locals 3

    .line 1
    iget-object p0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    instance-of v2, v0, Lkotlinx/coroutines/internal/o;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    if-ne v0, v1, :cond_0

    const-string p0, "EmptyQueue"

    return-object p0

    .line 3
    :cond_0
    instance-of v1, v0, Le7/l;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Le7/t;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Le7/x;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNEXPECTED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    if-eq v2, v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Le7/c;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of p0, v2, Le7/l;

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",closedForSend="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final k(Le7/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/l<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;ILkotlin/jvm/internal/g;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object v3

    instance-of v4, v3, Le7/t;

    if-eqz v4, :cond_0

    check-cast v3, Le7/t;

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    .line 3
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast v2, Le7/t;

    .line 4
    invoke-virtual {v2, p1}, Le7/t;->x(Le7/l;)V

    goto :goto_3

    .line 5
    :cond_1
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/t;

    .line 8
    invoke-virtual {v1, p1}, Le7/t;->x(Le7/l;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 9
    :cond_2
    :goto_3
    invoke-virtual {p0, p1}, Le7/c;->q(Lkotlinx/coroutines/internal/o;)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/o;->r()Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/o;->o()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private final l(Le7/l;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/l<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le7/c;->k(Le7/l;)V

    .line 2
    invoke-virtual {p1}, Le7/l;->D()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private final o(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le7/c;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Le7/b;->f:Lkotlinx/coroutines/internal/a0;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v2, Le7/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4
    invoke-static {v0, p0}, Lkotlin/jvm/internal/z;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu6/l;

    invoke-interface {p0, p1}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected final d()Le7/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le7/l<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->m()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    instance-of v1, v0, Le7/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Le7/l;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Le7/c;->k(Le7/l;)V

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method public e(Lu6/l;)V
    .locals 3
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
    sget-object v0, Le7/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p0, p0, Le7/c;->onCloseHandler:Ljava/lang/Object;

    .line 3
    sget-object p1, Le7/b;->f:Lkotlinx/coroutines/internal/a0;

    if-ne p0, p1, :cond_0

    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Another handler was already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Le7/c;->f()Le7/l;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v2, Le7/b;->f:Lkotlinx/coroutines/internal/a0;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    iget-object p0, v1, Le7/l;->d:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected final f()Le7/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le7/l<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    instance-of v1, v0, Le7/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Le7/l;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Le7/c;->k(Le7/l;)V

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method protected final h()Lkotlinx/coroutines/internal/m;
    .locals 0

    iget-object p0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    return-object p0
.end method

.method public j(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    new-instance v0, Le7/l;

    invoke-direct {v0, p1}, Le7/l;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object v2

    .line 4
    instance-of v3, v2, Le7/l;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/o;->g(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object v0

    check-cast v0, Le7/l;

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Le7/c;->k(Le7/l;)V

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Le7/c;->o(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method public final m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le7/c;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Le7/b;->b:Lkotlinx/coroutines/internal/a0;

    if-ne p1, v0, :cond_0

    sget-object p0, Le7/i;->b:Le7/i$b;

    sget-object p1, Lk6/q;->a:Lk6/q;

    invoke-virtual {p0, p1}, Le7/i$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Le7/b;->c:Lkotlinx/coroutines/internal/a0;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Le7/c;->f()Le7/l;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p0, Le7/i;->b:Le7/i$b;

    invoke-virtual {p0}, Le7/i$b;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Le7/i;->b:Le7/i$b;

    invoke-direct {p0, p1}, Le7/c;->l(Le7/l;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Le7/i$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Le7/l;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Le7/i;->b:Le7/i$b;

    check-cast p1, Le7/l;

    invoke-direct {p0, p1}, Le7/c;->l(Le7/l;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Le7/i$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trySend returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()Z
    .locals 0

    invoke-virtual {p0}, Le7/c;->f()Le7/l;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Le7/c;->s()Le7/v;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Le7/b;->c:Lkotlinx/coroutines/internal/a0;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Le7/v;->e(Ljava/lang/Object;Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/a0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le7/v;->d(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Le7/v;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected q(Lkotlinx/coroutines/internal/o;)V
    .locals 0

    return-void
.end method

.method protected final r(Ljava/lang/Object;)Le7/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Le7/v<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    new-instance v0, Le7/c$a;

    invoke-direct {v0, p1}, Le7/c$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object p1

    .line 3
    instance-of v1, p1, Le7/v;

    if-eqz v1, :cond_1

    check-cast p1, Le7/v;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/internal/o;->g(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected s()Le7/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le7/v<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 3
    :cond_0
    instance-of v2, v0, Le7/v;

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v1, v0

    check-cast v1, Le7/v;

    .line 5
    instance-of v1, v1, Le7/l;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->s()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    if-nez v1, :cond_3

    .line 8
    :goto_2
    check-cast v0, Le7/v;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->p()V

    goto :goto_0
.end method

.method protected final t()Le7/x;
    .locals 3

    .line 1
    iget-object p0, p0, Le7/c;->b:Lkotlinx/coroutines/internal/m;

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 3
    :cond_0
    instance-of v2, v0, Le7/x;

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v1, v0

    check-cast v1, Le7/x;

    .line 5
    instance-of v1, v1, Le7/l;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->q()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->s()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    if-nez v1, :cond_3

    .line 8
    :goto_2
    check-cast v0, Le7/x;

    return-object v0

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->p()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc7/k0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Le7/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le7/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
