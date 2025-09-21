.class final Lb1/e1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lb1/i1;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Landroid/os/IBinder;

.field private final e:Lb1/d1;

.field private f:Landroid/content/ComponentName;

.field final synthetic g:Lb1/h1;


# direct methods
.method public constructor <init>(Lb1/h1;Lb1/d1;)V
    .locals 0

    iput-object p1, p0, Lb1/e1;->g:Lb1/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb1/e1;->e:Lb1/d1;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb1/e1;->a:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lb1/e1;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lb1/e1;->b:I

    return p0
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lb1/e1;->f:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final c()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lb1/e1;->d:Landroid/os/IBinder;

    return-object p0
.end method

.method public final d(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lb1/e1;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 8

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lb1/e1;->b:I

    iget-object v0, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {v0}, Lb1/h1;->j(Lb1/h1;)Le1/a;

    move-result-object v1

    invoke-static {v0}, Lb1/h1;->h(Lb1/h1;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lb1/e1;->e:Lb1/d1;

    invoke-static {v0}, Lb1/h1;->h(Lb1/h1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb1/d1;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v0, p0, Lb1/e1;->e:Lb1/d1;

    invoke-virtual {v0}, Lb1/d1;->a()I

    move-result v6

    move-object v3, p1

    move-object v5, p0

    move-object v7, p2

    .line 2
    invoke-virtual/range {v1 .. v7}, Le1/a;->c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, p0, Lb1/e1;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb1/e1;->g:Lb1/h1;

    .line 3
    invoke-static {p1}, Lb1/h1;->i(Lb1/h1;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lb1/e1;->e:Lb1/d1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lb1/e1;->g:Lb1/h1;

    .line 4
    invoke-static {p2}, Lb1/h1;->i(Lb1/h1;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {p0}, Lb1/h1;->g(Lb1/h1;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lb1/e1;->b:I

    :try_start_0
    iget-object p1, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {p1}, Lb1/h1;->j(Lb1/h1;)Le1/a;

    move-result-object p2

    invoke-static {p1}, Lb1/h1;->h(Lb1/h1;)Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1, p0}, Le1/a;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final f(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lb1/e1;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {p1}, Lb1/h1;->i(Lb1/h1;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lb1/e1;->e:Lb1/d1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {p1}, Lb1/h1;->j(Lb1/h1;)Le1/a;

    move-result-object v0

    invoke-static {p1}, Lb1/h1;->h(Lb1/h1;)Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1, p0}, Le1/a;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb1/e1;->c:Z

    const/4 p1, 0x2

    iput p1, p0, Lb1/e1;->b:I

    return-void
.end method

.method public final h(Landroid/content/ServiceConnection;)Z
    .locals 0

    iget-object p0, p0, Lb1/e1;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lb1/e1;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lb1/e1;->c:Z

    return p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {v0}, Lb1/h1;->k(Lb1/h1;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {v1}, Lb1/h1;->i(Lb1/h1;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lb1/e1;->e:Lb1/d1;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lb1/e1;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lb1/e1;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lb1/e1;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lb1/e1;->b:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {v0}, Lb1/h1;->k(Lb1/h1;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb1/e1;->g:Lb1/h1;

    invoke-static {v1}, Lb1/h1;->i(Lb1/h1;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lb1/e1;->e:Lb1/d1;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lb1/e1;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lb1/e1;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lb1/e1;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lb1/e1;->b:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
