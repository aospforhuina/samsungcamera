.class public abstract Lkotlin/coroutines/jvm/internal/c;
.super Lkotlin/coroutines/jvm/internal/a;
.source "ContinuationImpl.kt"


# instance fields
.field private final _context:Ln6/g;

.field private transient intercepted:Ln6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ln6/d;->getContext()Ln6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/c;-><init>(Ln6/d;Ln6/g;)V

    return-void
.end method

.method public constructor <init>(Ln6/d;Ln6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ln6/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Ln6/d;)V

    .line 2
    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/c;->_context:Ln6/g;

    return-void
.end method


# virtual methods
.method public getContext()Ln6/g;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/jvm/internal/c;->_context:Ln6/g;

    invoke-static {p0}, Lkotlin/jvm/internal/l;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Ln6/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/c;->intercepted:Ln6/d;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/c;->getContext()Ln6/g;

    move-result-object v0

    sget-object v1, Ln6/e;->j:Ln6/e$b;

    invoke-interface {v0, v1}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v0

    check-cast v0, Ln6/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ln6/e;->interceptContinuation(Ln6/d;)Ln6/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 3
    :cond_1
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/c;->intercepted:Ln6/d;

    :cond_2
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/c;->intercepted:Ln6/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/c;->getContext()Ln6/g;

    move-result-object v1

    sget-object v2, Ln6/e;->j:Ln6/e$b;

    invoke-interface {v1, v2}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/l;->b(Ljava/lang/Object;)V

    check-cast v1, Ln6/e;

    invoke-interface {v1, v0}, Ln6/e;->releaseInterceptedContinuation(Ln6/d;)V

    .line 3
    :cond_0
    sget-object v0, Lkotlin/coroutines/jvm/internal/b;->a:Lkotlin/coroutines/jvm/internal/b;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/c;->intercepted:Ln6/d;

    return-void
.end method
