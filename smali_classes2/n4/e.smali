.class public Ln4/e;
.super Lp4/c;
.source "ImageServiceExecutor.java"


# instance fields
.field private m:Lc4/a;

.field private n:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lp4/c;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 2
    new-instance p1, Ln4/e$a;

    invoke-direct {p1, p0}, Ln4/e$a;-><init>(Ln4/e;)V

    iput-object p1, p0, Ln4/e;->n:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic i(Ln4/e;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Ln4/e;->n:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic j(Ln4/e;)Lc4/a;
    .locals 0

    iget-object p0, p0, Ln4/e;->m:Lc4/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScsApi@ImageServiceExecutor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln4/e;->m:Lc4/a;

    return-void
.end method

.method public b(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ScsApi@ImageServiceExecutor"

    const-string v0, "onServiceConnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p2}, Lc4/a$a;->a(Landroid/os/IBinder;)Lc4/a;

    move-result-object p2

    iput-object p2, p0, Ln4/e;->m:Lc4/a;

    .line 3
    :try_start_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object p0, p0, Ln4/e;->n:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "RemoteException"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected h()Landroid/content/Intent;
    .locals 0

    invoke-static {}, Ls4/a;->a()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public k()Lc4/a;
    .locals 0

    iget-object p0, p0, Ln4/e;->m:Lc4/a;

    return-object p0
.end method
