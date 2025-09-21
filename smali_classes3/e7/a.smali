.class public abstract Le7/a;
.super Le7/c;
.source "AbstractChannel.kt"

# interfaces
.implements Le7/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/a$c;,
        Le7/a$a;,
        Le7/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le7/c<",
        "TE;>;",
        "Le7/f<",
        "TE;>;"
    }
.end annotation


# direct methods
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

    invoke-direct {p0, p1}, Le7/c;-><init>(Lu6/l;)V

    return-void
.end method

.method private final H(ILn6/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Ln6/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object v0

    invoke-static {v0}, Lc7/n;->a(Ln6/d;)Lc7/l;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le7/c;->a:Lu6/l;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le7/a$a;

    invoke-direct {v1, v0, p1}, Le7/a$a;-><init>(Lc7/k;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Le7/a$b;

    iget-object v2, p0, Le7/c;->a:Lu6/l;

    invoke-direct {v1, v0, p1, v2}, Le7/a$b;-><init>(Lc7/k;ILu6/l;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Le7/a;->u(Le7/a;Le7/t;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0, v0, v1}, Le7/a;->v(Le7/a;Lc7/k;Le7/t;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Le7/a;->G()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v2, p1, Le7/l;

    if-eqz v2, :cond_3

    .line 9
    check-cast p1, Le7/l;

    invoke-virtual {v1, p1}, Le7/a$a;->x(Le7/l;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object v2, Le7/b;->d:Lkotlinx/coroutines/internal/a0;

    if-eq p1, v2, :cond_1

    .line 11
    invoke-virtual {v1, p1}, Le7/a$a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1}, Le7/t;->w(Ljava/lang/Object;)Lu6/l;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lc7/k;->i(Ljava/lang/Object;Lu6/l;)V

    .line 12
    :goto_1
    invoke-virtual {v0}, Lc7/l;->u()Ljava/lang/Object;

    move-result-object p0

    .line 13
    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->c(Ln6/d;)V

    :cond_4
    return-object p0
.end method

.method private final I(Lc7/k;Le7/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/k<",
            "*>;",
            "Le7/t<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Le7/a$c;

    invoke-direct {v0, p0, p2}, Le7/a$c;-><init>(Le7/a;Le7/t;)V

    invoke-interface {p1, v0}, Lc7/k;->c(Lu6/l;)V

    return-void
.end method

.method public static final synthetic u(Le7/a;Le7/t;)Z
    .locals 0

    invoke-direct {p0, p1}, Le7/a;->x(Le7/t;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic v(Le7/a;Lc7/k;Le7/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le7/a;->I(Lc7/k;Le7/t;)V

    return-void
.end method

.method private final x(Le7/t;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/t<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le7/a;->y(Le7/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le7/a;->F()V

    :cond_0
    return p1
.end method


# virtual methods
.method protected abstract A()Z
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Le7/c;->d()Le7/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le7/a;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected C(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le7/c;->f()Le7/l;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/internal/j;->b(Ljava/lang/Object;ILkotlin/jvm/internal/g;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/internal/m;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Le7/a;->D(Ljava/lang/Object;Le7/l;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->r()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/o;->o()V

    goto :goto_0

    .line 8
    :cond_1
    check-cast v1, Le7/x;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected D(Ljava/lang/Object;Le7/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le7/l<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    instance-of p0, p1, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    check-cast p1, Le7/x;

    .line 2
    invoke-virtual {p1, p2}, Le7/x;->x(Le7/l;)V

    goto :goto_1

    .line 3
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p0, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le7/x;

    .line 6
    invoke-virtual {v0, p2}, Le7/x;->x(Le7/l;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected E()V
    .locals 0

    return-void
.end method

.method protected F()V
    .locals 0

    return-void
.end method

.method protected G()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Le7/c;->t()Le7/x;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Le7/b;->d:Lkotlinx/coroutines/internal/a0;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Le7/x;->y(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/a0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Le7/x;->v()V

    .line 4
    invoke-virtual {v0}, Le7/x;->w()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {v0}, Le7/x;->z()V

    goto :goto_0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le7/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Le7/a;->w(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final g(Ln6/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "-",
            "Le7/i<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le7/a$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le7/a$e;

    iget v1, v0, Le7/a$e;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le7/a$e;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Le7/a$e;

    invoke-direct {v0, p0, p1}, Le7/a$e;-><init>(Le7/a;Ln6/d;)V

    :goto_0
    iget-object p1, v0, Le7/a$e;->a:Ljava/lang/Object;

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Le7/a$e;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lk6/l;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lk6/l;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le7/a;->G()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v2, Le7/b;->d:Lkotlinx/coroutines/internal/a0;

    if-eq p1, v2, :cond_4

    .line 6
    instance-of p0, p1, Le7/l;

    if-eqz p0, :cond_3

    sget-object p0, Le7/i;->b:Le7/i$b;

    check-cast p1, Le7/l;

    iget-object p1, p1, Le7/l;->d:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Le7/i$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Le7/i;->b:Le7/i$b;

    invoke-virtual {p0, p1}, Le7/i$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 7
    :cond_4
    iput v3, v0, Le7/a$e;->c:I

    invoke-direct {p0, v3, v0}, Le7/a;->H(ILn6/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Le7/i;

    invoke-virtual {p1}, Le7/i;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected s()Le7/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le7/v<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le7/c;->s()Le7/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Le7/l;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Le7/a;->E()V

    :cond_0
    return-object v0
.end method

.method public final w(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le7/c;->j(Ljava/lang/Throwable;)Z

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Le7/a;->C(Z)V

    return p1
.end method

.method protected y(Le7/t;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/t<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le7/a;->z()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le7/c;->h()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    .line 4
    instance-of v3, p0, Le7/x;

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/o;->g(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Le7/c;->h()Lkotlinx/coroutines/internal/m;

    move-result-object v0

    .line 7
    new-instance v3, Le7/a$d;

    invoke-direct {v3, p1, p0}, Le7/a$d;-><init>(Lkotlinx/coroutines/internal/o;Le7/a;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->n()Lkotlinx/coroutines/internal/o;

    move-result-object p0

    .line 9
    instance-of v4, p0, Le7/x;

    xor-int/2addr v4, v2

    if-nez v4, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0, p1, v0, v3}, Lkotlinx/coroutines/internal/o;->u(Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o;Lkotlinx/coroutines/internal/o$a;)I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 v4, 0x2

    if-eq p0, v4, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method protected abstract z()Z
.end method
