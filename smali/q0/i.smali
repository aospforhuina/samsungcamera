.class public Lq0/i;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lq0/d;
.implements Lq0/c;


# instance fields
.field private final a:Lq0/d;

.field private final b:Ljava/lang/Object;

.field private volatile c:Lq0/c;

.field private volatile d:Lq0/c;

.field private e:Lq0/d$a;

.field private f:Lq0/d$a;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lq0/d$a;->d:Lq0/d$a;

    iput-object v0, p0, Lq0/i;->e:Lq0/d$a;

    .line 3
    iput-object v0, p0, Lq0/i;->f:Lq0/d$a;

    .line 4
    iput-object p1, p0, Lq0/i;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lq0/i;->a:Lq0/d;

    return-void
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lq0/i;->a:Lq0/d;

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

.method private m()Z
    .locals 1

    iget-object v0, p0, Lq0/i;->a:Lq0/d;

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

.method private n()Z
    .locals 1

    iget-object v0, p0, Lq0/i;->a:Lq0/d;

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
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/i;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq0/i;->c:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lq0/i;->b()Z

    move-result p0

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

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/i;->d:Lq0/c;

    invoke-interface {v1}, Lq0/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lq0/i;->c:Lq0/c;

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
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/i;->c:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lq0/d$a;->g:Lq0/d$a;

    iput-object p1, p0, Lq0/i;->f:Lq0/d$a;

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    sget-object p1, Lq0/d$a;->g:Lq0/d$a;

    iput-object p1, p0, Lq0/i;->e:Lq0/d$a;

    .line 6
    iget-object p1, p0, Lq0/i;->a:Lq0/d;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p0}, Lq0/d;->c(Lq0/c;)V

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

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lq0/i;->g:Z

    .line 3
    sget-object v1, Lq0/d$a;->d:Lq0/d$a;

    iput-object v1, p0, Lq0/i;->e:Lq0/d$a;

    .line 4
    iput-object v1, p0, Lq0/i;->f:Lq0/d$a;

    .line 5
    iget-object v1, p0, Lq0/i;->d:Lq0/c;

    invoke-interface {v1}, Lq0/c;->clear()V

    .line 6
    iget-object p0, p0, Lq0/i;->c:Lq0/c;

    invoke-interface {p0}, Lq0/c;->clear()V

    .line 7
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
    instance-of v0, p1, Lq0/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lq0/i;

    .line 3
    iget-object v0, p0, Lq0/i;->c:Lq0/c;

    if-nez v0, :cond_0

    iget-object v0, p1, Lq0/i;->c:Lq0/c;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq0/i;->c:Lq0/c;

    iget-object v2, p1, Lq0/i;->c:Lq0/c;

    invoke-interface {v0, v2}, Lq0/c;->d(Lq0/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lq0/i;->d:Lq0/c;

    if-nez v0, :cond_1

    iget-object p0, p1, Lq0/i;->d:Lq0/c;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lq0/i;->d:Lq0/c;

    iget-object p1, p1, Lq0/i;->d:Lq0/c;

    .line 4
    invoke-interface {p0, p1}, Lq0/c;->d(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/i;->f:Lq0/d$a;

    invoke-virtual {v1}, Lq0/d$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lq0/d$a;->c:Lq0/d$a;

    iput-object v1, p0, Lq0/i;->f:Lq0/d$a;

    .line 4
    iget-object v1, p0, Lq0/i;->d:Lq0/c;

    invoke-interface {v1}, Lq0/c;->e()V

    .line 5
    :cond_0
    iget-object v1, p0, Lq0/i;->e:Lq0/d$a;

    invoke-virtual {v1}, Lq0/d$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lq0/d$a;->c:Lq0/d$a;

    iput-object v1, p0, Lq0/i;->e:Lq0/d$a;

    .line 7
    iget-object p0, p0, Lq0/i;->c:Lq0/c;

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
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/i;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq0/i;->c:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lq0/i;->e:Lq0/d$a;

    sget-object p1, Lq0/d$a;->c:Lq0/d$a;

    if-eq p0, p1, :cond_0

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
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/i;->e:Lq0/d$a;

    sget-object v1, Lq0/d$a;->d:Lq0/d$a;

    if-ne p0, v1, :cond_0

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
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/i;->a:Lq0/d;

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
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/i;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq0/i;->c:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lq0/i;->e:Lq0/d$a;

    sget-object p1, Lq0/d$a;->f:Lq0/d$a;

    if-eq p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
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
    .locals 4

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lq0/i;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    iget-object v2, p0, Lq0/i;->e:Lq0/d$a;

    sget-object v3, Lq0/d$a;->f:Lq0/d$a;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lq0/i;->f:Lq0/d$a;

    sget-object v3, Lq0/d$a;->b:Lq0/d$a;

    if-eq v2, v3, :cond_0

    .line 4
    iput-object v3, p0, Lq0/i;->f:Lq0/d$a;

    .line 5
    iget-object v2, p0, Lq0/i;->d:Lq0/c;

    invoke-interface {v2}, Lq0/c;->i()V

    .line 6
    :cond_0
    iget-boolean v2, p0, Lq0/i;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lq0/i;->e:Lq0/d$a;

    sget-object v3, Lq0/d$a;->b:Lq0/d$a;

    if-eq v2, v3, :cond_1

    .line 7
    iput-object v3, p0, Lq0/i;->e:Lq0/d$a;

    .line 8
    iget-object v2, p0, Lq0/i;->c:Lq0/c;

    invoke-interface {v2}, Lq0/c;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lq0/i;->g:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 11
    iput-boolean v1, p0, Lq0/i;->g:Z

    throw v2

    :catchall_1
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/i;->e:Lq0/d$a;

    sget-object v1, Lq0/d$a;->b:Lq0/d$a;

    if-ne p0, v1, :cond_0

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

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/i;->e:Lq0/d$a;

    sget-object v1, Lq0/d$a;->f:Lq0/d$a;

    if-ne p0, v1, :cond_0

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

.method public k(Lq0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/i;->d:Lq0/c;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lq0/d$a;->f:Lq0/d$a;

    iput-object p1, p0, Lq0/i;->f:Lq0/d$a;

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    sget-object p1, Lq0/d$a;->f:Lq0/d$a;

    iput-object p1, p0, Lq0/i;->e:Lq0/d$a;

    .line 6
    iget-object p1, p0, Lq0/i;->a:Lq0/d;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, p0}, Lq0/d;->k(Lq0/c;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lq0/i;->f:Lq0/d$a;

    invoke-virtual {p1}, Lq0/d$a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p0, p0, Lq0/i;->d:Lq0/c;

    invoke-interface {p0}, Lq0/c;->clear()V

    .line 10
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

.method public o(Lq0/c;Lq0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq0/i;->c:Lq0/c;

    .line 2
    iput-object p2, p0, Lq0/i;->d:Lq0/c;

    return-void
.end method
