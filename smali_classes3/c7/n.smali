.class public final Lc7/n;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# direct methods
.method public static final a(Ln6/d;)Lc7/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln6/d<",
            "-TT;>;)",
            "Lc7/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc7/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lc7/l;-><init>(Ln6/d;I)V

    return-object v0

    .line 3
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/f;->j()Lc7/l;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc7/l;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 4
    :cond_3
    :goto_1
    new-instance v0, Lc7/l;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lc7/l;-><init>(Ln6/d;I)V

    return-object v0
.end method
