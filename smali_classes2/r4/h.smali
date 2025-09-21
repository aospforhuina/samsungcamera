.class Lr4/h;
.super Lr4/e;
.source "TaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/e<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lr4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/j<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/e;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lr4/j;

    invoke-direct {v0}, Lr4/j;-><init>()V

    iput-object v0, p0, Lr4/h;->b:Lr4/j;

    return-void
.end method

.method private final g()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lr4/h;->d:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final h()V
    .locals 1

    iget-boolean p0, p0, Lr4/h;->c:Z

    const-string v0, "Task is not yet complete"

    invoke-static {p0, v0}, Ls4/d;->d(ZLjava/lang/Object;)V

    return-void
.end method

.method private final i()V
    .locals 1

    iget-boolean p0, p0, Lr4/h;->c:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Task is already complete"

    invoke-static {p0, v0}, Ls4/d;->d(ZLjava/lang/Object;)V

    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lr4/h;->c:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lr4/h;->b:Lr4/j;

    invoke-virtual {v0, p0}, Lr4/j;->b(Lr4/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lr4/d;)Lr4/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lr4/d<",
            "-TTResult;>;)",
            "Lr4/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr4/h;->b:Lr4/j;

    new-instance v1, Lr4/b;

    invoke-direct {v1, p1, p2}, Lr4/b;-><init>(Ljava/util/concurrent/Executor;Lr4/d;)V

    invoke-virtual {v0, v1}, Lr4/j;->a(Lr4/i;)V

    .line 2
    invoke-direct {p0}, Lr4/h;->j()V

    return-object p0
.end method

.method public final b()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lr4/h;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lr4/h;->h()V

    .line 3
    invoke-direct {p0}, Lr4/h;->g()V

    .line 4
    iget-object v1, p0, Lr4/h;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    iget-object p0, p0, Lr4/h;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lr4/h;->f:Ljava/lang/Exception;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lr4/h;->d:Z

    return p0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean p0, p0, Lr4/h;->c:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lr4/h;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lr4/h;->d:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lr4/h;->f:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Ls4/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lr4/h;->i()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lr4/h;->c:Z

    .line 5
    iput-object p1, p0, Lr4/h;->f:Ljava/lang/Exception;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lr4/h;->b:Lr4/j;

    invoke-virtual {p1, p0}, Lr4/j;->b(Lr4/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr4/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lr4/h;->i()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lr4/h;->c:Z

    .line 4
    iput-object p1, p0, Lr4/h;->e:Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lr4/h;->b:Lr4/j;

    invoke-virtual {p1, p0}, Lr4/j;->b(Lr4/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
