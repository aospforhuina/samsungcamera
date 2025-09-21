.class Lp4/c$a;
.super Ljava/lang/Object;
.source "ServiceExecutor.java"

# interfaces
.implements Lp4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp4/c;


# direct methods
.method constructor <init>(Lp4/c;)V
    .locals 0

    iput-object p1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onDisconnected"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-interface {v1, p1}, Lp4/b;->a(Landroid/content/ComponentName;)V

    .line 3
    iget-object p1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p1}, Lp4/c;->c(Lp4/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object p1, p0, Lp4/c$a;->a:Lp4/c;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lp4/c;->d(Lp4/c;Z)Z

    const-string p1, "disconnected, signal all"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p1}, Lp4/c;->e(Lp4/c;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p0}, Lp4/c;->c(Lp4/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p0}, Lp4/c;->c(Lp4/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw p1
.end method

.method public b(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onConnected"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-interface {v1, p1, p2}, Lp4/b;->b(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 3
    iget-object p1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p1}, Lp4/c;->c(Lp4/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object p1, p0, Lp4/c$a;->a:Lp4/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lp4/c;->d(Lp4/c;Z)Z

    const-string p1, "connected, signal all"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p1}, Lp4/c;->e(Lp4/c;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p0}, Lp4/c;->c(Lp4/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lp4/c$a;->a:Lp4/c;

    invoke-static {p0}, Lp4/c;->c(Lp4/c;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw p1
.end method

.method public onError()V
    .locals 0

    return-void
.end method
