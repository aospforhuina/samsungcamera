.class public abstract Lc7/a;
.super Lc7/s1;
.source "AbstractCoroutine.kt"

# interfaces
.implements Ln6/d;
.implements Lc7/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc7/s1;",
        "Ln6/d<",
        "TT;>;",
        "Lc7/g0;"
    }
.end annotation


# instance fields
.field private final b:Ln6/g;


# direct methods
.method public constructor <init>(Ln6/g;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lc7/s1;-><init>(Z)V

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lc7/l1;->h:Lc7/l1$b;

    invoke-interface {p1, p2}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p2

    check-cast p2, Lc7/l1;

    invoke-virtual {p0, p2}, Lc7/s1;->U(Lc7/l1;)V

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Ln6/g;->plus(Ln6/g;)Ln6/g;

    move-result-object p1

    iput-object p1, p0, Lc7/a;->b:Ln6/g;

    return-void
.end method


# virtual methods
.method public final A0(Lc7/i0;Ljava/lang/Object;Lu6/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc7/i0;",
            "TR;",
            "Lu6/p<",
            "-TR;-",
            "Ln6/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3, p2, p0}, Lc7/i0;->b(Lu6/p;Ljava/lang/Object;Ln6/d;)V

    return-void
.end method

.method protected E()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final T(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lc7/a;->b:Ln6/g;

    invoke-static {p0, p1}, Lc7/f0;->a(Ln6/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lc7/a;->b:Ln6/g;

    invoke-static {v0}, Lc7/b0;->b(Ln6/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lc7/s1;->c0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lc7/s1;->c0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Ln6/g;
    .locals 0

    iget-object p0, p0, Lc7/a;->b:Ln6/g;

    return-object p0
.end method

.method public getCoroutineContext()Ln6/g;
    .locals 0

    iget-object p0, p0, Lc7/a;->b:Ln6/g;

    return-object p0
.end method

.method protected final h0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lc7/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc7/v;

    iget-object v0, p1, Lc7/v;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lc7/v;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc7/a;->y0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc7/a;->z0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isActive()Z
    .locals 0

    invoke-super {p0}, Lc7/s1;->isActive()Z

    move-result p0

    return p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1, v0}, Lc7/z;->d(Ljava/lang/Object;Lu6/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc7/s1;->a0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lc7/t1;->b:Lkotlinx/coroutines/internal/a0;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lc7/a;->x0(Ljava/lang/Object;)V

    return-void
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc7/s1;->y(Ljava/lang/Object;)V

    return-void
.end method

.method protected y0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method protected z0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
