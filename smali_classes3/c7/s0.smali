.class final Lc7/s0;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lc7/c0;


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lc7/s0;->a:Lc7/c0;

    sget-object v0, Ln6/h;->a:Ln6/h;

    invoke-virtual {p0, v0, p1}, Lc7/c0;->dispatch(Ln6/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc7/s0;->a:Lc7/c0;

    invoke-virtual {p0}, Lc7/c0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
