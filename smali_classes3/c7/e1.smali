.class public final Lc7/e1;
.super Ljava/lang/Object;
.source "Executors.kt"


# direct methods
.method public static final a(Ljava/util/concurrent/Executor;)Lc7/c0;
    .locals 1

    instance-of v0, p0, Lc7/s0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lc7/s0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lc7/s0;->a:Lc7/c0;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lc7/d1;

    invoke-direct {v0, p0}, Lc7/d1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method
