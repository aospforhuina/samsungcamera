.class final Lp1/q;
.super Lp1/e;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lp1/e<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lp1/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/m<",
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

    invoke-direct {p0}, Lp1/e;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    new-instance v0, Lp1/m;

    invoke-direct {v0}, Lp1/m;-><init>()V

    iput-object v0, p0, Lp1/q;->b:Lp1/m;

    return-void
.end method

.method private final m()V
    .locals 1

    iget-boolean p0, p0, Lp1/q;->c:Z

    const-string v0, "Task is not yet complete"

    invoke-static {p0, v0}, Lb1/p;->j(ZLjava/lang/Object;)V

    return-void
.end method

.method private final n()V
    .locals 1

    iget-boolean p0, p0, Lp1/q;->d:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final o()V
    .locals 1

    iget-boolean v0, p0, Lp1/q;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lp1/a;->a(Lp1/e;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method private final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lp1/q;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lp1/q;->b:Lp1/m;

    .line 3
    invoke-virtual {v0, p0}, Lp1/m;->b(Lp1/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lp1/b;)Lp1/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lp1/b<",
            "TTResult;>;)",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp1/q;->b:Lp1/m;

    new-instance v1, Lp1/i;

    invoke-direct {v1, p1, p2}, Lp1/i;-><init>(Ljava/util/concurrent/Executor;Lp1/b;)V

    invoke-virtual {v0, v1}, Lp1/m;->a(Lp1/l;)V

    .line 2
    invoke-direct {p0}, Lp1/q;->p()V

    return-object p0
.end method

.method public final b(Lp1/b;)Lp1/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/b<",
            "TTResult;>;)",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lp1/g;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lp1/q;->b:Lp1/m;

    new-instance v2, Lp1/i;

    invoke-direct {v2, v0, p1}, Lp1/i;-><init>(Ljava/util/concurrent/Executor;Lp1/b;)V

    .line 2
    invoke-virtual {v1, v2}, Lp1/m;->a(Lp1/l;)V

    .line 3
    invoke-direct {p0}, Lp1/q;->p()V

    return-object p0
.end method

.method public final c(Landroid/app/Activity;Lp1/c;)Lp1/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lp1/c;",
            ")",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp1/k;

    sget-object v1, Lp1/g;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lp1/k;-><init>(Ljava/util/concurrent/Executor;Lp1/c;)V

    iget-object p2, p0, Lp1/q;->b:Lp1/m;

    .line 2
    invoke-virtual {p2, v0}, Lp1/m;->a(Lp1/l;)V

    .line 3
    invoke-static {p1}, Lp1/p;->l(Landroid/app/Activity;)Lp1/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Lp1/p;->m(Lp1/l;)V

    .line 4
    invoke-direct {p0}, Lp1/q;->p()V

    return-object p0
.end method

.method public final d()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lp1/q;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lp1/q;->m()V

    .line 2
    invoke-direct {p0}, Lp1/q;->n()V

    iget-object v1, p0, Lp1/q;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 3
    iget-object p0, p0, Lp1/q;->e:Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lp1/d;

    .line 6
    invoke-direct {p0, v1}, Lp1/d;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lp1/q;->d:Z

    return p0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lp1/q;->c:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lp1/q;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lp1/q;->d:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lp1/q;->f:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lp1/q;->o()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lp1/q;->c:Z

    iput-object p1, p0, Lp1/q;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lp1/q;->b:Lp1/m;

    .line 4
    invoke-virtual {p1, p0}, Lp1/m;->b(Lp1/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lp1/q;->o()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lp1/q;->c:Z

    iput-object p1, p0, Lp1/q;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lp1/q;->b:Lp1/m;

    .line 3
    invoke-virtual {p1, p0}, Lp1/m;->b(Lp1/e;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lp1/q;->c:Z

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lp1/q;->c:Z

    iput-object p1, p0, Lp1/q;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lp1/q;->b:Lp1/m;

    .line 4
    invoke-virtual {p1, p0}, Lp1/m;->b(Lp1/e;)V

    return v1

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp1/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lp1/q;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lp1/q;->c:Z

    iput-object p1, p0, Lp1/q;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lp1/q;->b:Lp1/m;

    .line 3
    invoke-virtual {p1, p0}, Lp1/m;->b(Lp1/e;)V

    return v1

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
