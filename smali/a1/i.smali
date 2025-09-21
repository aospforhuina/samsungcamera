.class public final La1/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lz0/a$f;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/ComponentName;

.field private final d:Landroid/content/Context;

.field private final e:La1/d;

.field private final f:Landroid/os/Handler;

.field private final g:La1/j;

.field private h:Landroid/os/IBinder;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La1/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/i;->l:Ljava/lang/String;

    return-void
.end method

.method private final s()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, La1/i;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should only run on the NonGmsServiceBrokerClient\'s handler thread."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final t(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, La1/i;->h:Landroid/os/IBinder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lb1/c$e;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    invoke-direct {p0}, La1/i;->s()V

    const-string v0, "Disconnect called."

    .line 2
    invoke-direct {p0, v0}, La1/i;->t(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, La1/i;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La1/i;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, La1/i;->h:Landroid/os/IBinder;

    return-void
.end method

.method public final c(Lb1/j;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/j;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final e()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La1/i;->s()V

    iput-object p1, p0, La1/i;->j:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, La1/i;->b()V

    return-void
.end method

.method public final g()Z
    .locals 0

    invoke-direct {p0}, La1/i;->s()V

    iget-boolean p0, p0, La1/i;->i:Z

    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La1/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La1/i;->c:Landroid/content/ComponentName;

    invoke-static {v0}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, La1/i;->c:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    invoke-direct {p0}, La1/i;->s()V

    iget-object p0, p0, La1/i;->h:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l()[Ly0/c;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ly0/c;

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La1/i;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Lb1/c$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, La1/i;->s()V

    const-string p1, "Connect started."

    .line 2
    invoke-direct {p0, p1}, La1/i;->t(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, La1/i;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "connect() called when already connected"

    .line 4
    invoke-virtual {p0, p1}, La1/i;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, La1/i;->c:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, La1/i;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, La1/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :goto_0
    iget-object v1, p0, La1/i;->d:Landroid/content/Context;

    .line 10
    invoke-static {}, Lb1/i;->a()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, La1/i;->i:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_2

    iput-object p1, p0, La1/i;->h:Landroid/os/IBinder;

    iget-object p1, p0, La1/i;->g:La1/j;

    .line 11
    new-instance v0, Ly0/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ly0/a;-><init>(I)V

    invoke-interface {p1, v0}, La1/j;->a(Ly0/a;)V

    :cond_2
    const-string p1, "Finished connect."

    .line 12
    invoke-direct {p0, p1}, La1/i;->t(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, La1/i;->i:Z

    iput-object p1, p0, La1/i;->h:Landroid/os/IBinder;

    .line 14
    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, La1/i;->f:Landroid/os/Handler;

    new-instance v0, La1/u;

    invoke-direct {v0, p0, p2}, La1/u;-><init>(La1/i;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, La1/i;->f:Landroid/os/Handler;

    new-instance v0, La1/t;

    invoke-direct {v0, p0}, La1/t;-><init>(La1/i;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La1/i;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, La1/i;->h:Landroid/os/IBinder;

    const-string v0, "Disconnected."

    invoke-direct {p0, v0}, La1/i;->t(Ljava/lang/String;)V

    iget-object p0, p0, La1/i;->e:La1/d;

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, La1/d;->c(I)V

    return-void
.end method

.method final synthetic q(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La1/i;->i:Z

    iput-object p1, p0, La1/i;->h:Landroid/os/IBinder;

    const-string p1, "Connected."

    invoke-direct {p0, p1}, La1/i;->t(Ljava/lang/String;)V

    iget-object p0, p0, La1/i;->e:La1/d;

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, p1}, La1/d;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La1/i;->k:Ljava/lang/String;

    return-void
.end method
