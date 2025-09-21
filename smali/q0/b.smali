.class public final Lq0/b;
.super Ljava/lang/Object;
.source "ErrorRequestCoordinator.java"

# interfaces
.implements Lq0/d;
.implements Lq0/c;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lq0/d;

.field private volatile c:Lq0/c;

.field private volatile d:Lq0/c;

.field private e:Lq0/d$a;

.field private f:Lq0/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lq0/d$a;->d:Lq0/d$a;

    iput-object v0, p0, Lq0/b;->e:Lq0/d$a;

    .line 3
    iput-object v0, p0, Lq0/b;->f:Lq0/d$a;

    .line 4
    iput-object p1, p0, Lq0/b;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lq0/b;->b:Lq0/d;

    return-void
.end method

.method private l(Lq0/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->c:Lq0/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq0/b;->e:Lq0/d$a;

    sget-object v1, Lq0/d$a;->g:Lq0/d$a;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lq0/b;->d:Lq0/c;

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private m()Z
    .locals 1

    iget-object v0, p0, Lq0/b;->b:Lq0/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lq0/d;->f(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lq0/b;->b:Lq0/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lq0/d;->a(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lq0/b;->b:Lq0/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lq0/d;->h(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Lq0/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/b;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lq0/b;->l(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->c:Lq0/c;

    invoke-interface {v1}, Lq0/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lq0/b;->d:Lq0/c;

    invoke-interface {p0}, Lq0/c;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

.method public c(Lq0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->d:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lq0/d$a;->g:Lq0/d$a;

    iput-object p1, p0, Lq0/b;->e:Lq0/d$a;

    .line 4
    iget-object p1, p0, Lq0/b;->f:Lq0/d$a;

    sget-object v1, Lq0/d$a;->b:Lq0/d$a;

    if-eq p1, v1, :cond_0

    .line 5
    iput-object v1, p0, Lq0/b;->f:Lq0/d$a;

    .line 6
    iget-object p0, p0, Lq0/b;->d:Lq0/c;

    invoke-interface {p0}, Lq0/c;->i()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    sget-object p1, Lq0/d$a;->g:Lq0/d$a;

    iput-object p1, p0, Lq0/b;->f:Lq0/d$a;

    .line 9
    iget-object p1, p0, Lq0/b;->b:Lq0/d;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1, p0}, Lq0/d;->c(Lq0/c;)V

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lq0/d$a;->d:Lq0/d$a;

    iput-object v1, p0, Lq0/b;->e:Lq0/d$a;

    .line 3
    iget-object v2, p0, Lq0/b;->c:Lq0/c;

    invoke-interface {v2}, Lq0/c;->clear()V

    .line 4
    iget-object v2, p0, Lq0/b;->f:Lq0/d$a;

    if-eq v2, v1, :cond_0

    .line 5
    iput-object v1, p0, Lq0/b;->f:Lq0/d$a;

    .line 6
    iget-object p0, p0, Lq0/b;->d:Lq0/c;

    invoke-interface {p0}, Lq0/c;->clear()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(Lq0/c;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lq0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lq0/b;

    .line 3
    iget-object v0, p0, Lq0/b;->c:Lq0/c;

    iget-object v2, p1, Lq0/b;->c:Lq0/c;

    invoke-interface {v0, v2}, Lq0/c;->d(Lq0/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq0/b;->d:Lq0/c;

    iget-object p1, p1, Lq0/b;->d:Lq0/c;

    invoke-interface {p0, p1}, Lq0/c;->d(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->e:Lq0/d$a;

    sget-object v2, Lq0/d$a;->b:Lq0/d$a;

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lq0/d$a;->c:Lq0/d$a;

    iput-object v1, p0, Lq0/b;->e:Lq0/d$a;

    .line 4
    iget-object v1, p0, Lq0/b;->c:Lq0/c;

    invoke-interface {v1}, Lq0/c;->e()V

    .line 5
    :cond_0
    iget-object v1, p0, Lq0/b;->f:Lq0/d$a;

    if-ne v1, v2, :cond_1

    .line 6
    sget-object v1, Lq0/d$a;->c:Lq0/d$a;

    iput-object v1, p0, Lq0/b;->f:Lq0/d$a;

    .line 7
    iget-object p0, p0, Lq0/b;->d:Lq0/c;

    invoke-interface {p0}, Lq0/c;->e()V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public f(Lq0/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/b;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lq0/b;->l(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->e:Lq0/d$a;

    sget-object v2, Lq0/d$a;->d:Lq0/d$a;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lq0/b;->f:Lq0/d$a;

    if-ne p0, v2, :cond_0

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

.method public getRoot()Lq0/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->b:Lq0/d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lq0/d;->getRoot()Lq0/d;

    move-result-object p0

    :cond_0
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

.method public h(Lq0/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/b;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lq0/b;->l(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->e:Lq0/d$a;

    sget-object v2, Lq0/d$a;->b:Lq0/d$a;

    if-eq v1, v2, :cond_0

    .line 3
    iput-object v2, p0, Lq0/b;->e:Lq0/d$a;

    .line 4
    iget-object p0, p0, Lq0/b;->c:Lq0/c;

    invoke-interface {p0}, Lq0/c;->i()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->e:Lq0/d$a;

    sget-object v2, Lq0/d$a;->b:Lq0/d$a;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lq0/b;->f:Lq0/d$a;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->e:Lq0/d$a;

    sget-object v2, Lq0/d$a;->f:Lq0/d$a;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lq0/b;->f:Lq0/d$a;

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

.method public k(Lq0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/b;->c:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lq0/d$a;->f:Lq0/d$a;

    iput-object p1, p0, Lq0/b;->e:Lq0/d$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lq0/b;->d:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lq0/d$a;->f:Lq0/d$a;

    iput-object p1, p0, Lq0/b;->f:Lq0/d$a;

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lq0/b;->b:Lq0/d;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p0}, Lq0/d;->k(Lq0/c;)V

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public p(Lq0/c;Lq0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq0/b;->c:Lq0/c;

    .line 2
    iput-object p2, p0, Lq0/b;->d:Lq0/c;

    return-void
.end method
