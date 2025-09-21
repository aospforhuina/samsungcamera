.class public Le7/g;
.super Lc7/a;
.source "ChannelCoroutine.kt"

# interfaces
.implements Le7/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc7/a<",
        "Lk6/q;",
        ">;",
        "Le7/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final c:Le7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/f<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/g;Le7/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g;",
            "Le7/f<",
            "TE;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lc7/a;-><init>(Ln6/g;ZZ)V

    .line 2
    iput-object p2, p0, Le7/g;->c:Le7/f;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lc7/s1;->q0(Lc7/s1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le7/g;->c:Le7/f;

    invoke-interface {v0, p1}, Le7/u;->a(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lc7/s1;->z(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final B0()Le7/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le7/f<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Le7/g;->c:Le7/f;

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc7/s1;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lc7/m1;

    invoke-static {p0}, Lc7/s1;->s(Lc7/s1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lc7/m1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc7/l1;)V

    move-object p1, v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le7/g;->B(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Lu6/l;)V
    .locals 0
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

    iget-object p0, p0, Le7/g;->c:Le7/f;

    invoke-interface {p0, p1}, Le7/y;->e(Lu6/l;)V

    return-void
.end method

.method public g(Ln6/d;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Le7/g;->c:Le7/f;

    invoke-interface {p0, p1}, Le7/u;->g(Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    return-object p0
.end method

.method public j(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Le7/g;->c:Le7/f;

    invoke-interface {p0, p1}, Le7/y;->j(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Le7/g;->c:Le7/f;

    invoke-interface {p0, p1}, Le7/y;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-object p0, p0, Le7/g;->c:Le7/f;

    invoke-interface {p0}, Le7/y;->n()Z

    move-result p0

    return p0
.end method
