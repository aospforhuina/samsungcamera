.class public Lr4/l;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr4/l$b;
    }
.end annotation


# direct methods
.method public static a(Lr4/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/e<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ls4/d;->a()V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Ls4/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lr4/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lr4/l;->b(Lr4/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lr4/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/l$b;-><init>(Lr4/l$a;)V

    .line 6
    sget-object v1, Lr4/g;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lr4/e;->a(Ljava/util/concurrent/Executor;Lr4/d;)Lr4/e;

    .line 7
    invoke-virtual {v0}, Lr4/l$b;->b()V

    .line 8
    invoke-static {p0}, Lr4/l;->b(Lr4/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lr4/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/e<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr4/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lr4/e;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lr4/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lr4/e;->b()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
