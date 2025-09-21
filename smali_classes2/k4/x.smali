.class public Lk4/x;
.super Ljava/lang/Object;
.source "RecognizerProxy.java"

# interfaces
.implements Lk4/c;


# instance fields
.field private a:Ll4/c;

.field private b:Lk4/n;

.field private c:Lk4/i;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk4/n;Lk4/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk4/n;->b:Lk4/n;

    iput-object v0, p0, Lk4/x;->b:Lk4/n;

    .line 3
    sget-object v0, Lk4/i;->a:Lk4/i;

    iput-object v0, p0, Lk4/x;->c:Lk4/i;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lk4/x;->d:Ljava/lang/String;

    const-string v0, "RecognizerProxy"

    const-string v1, "OCR RecognizerProxy(Service) is initialized with version: 3.1.221111"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lk4/x;->d()V

    .line 7
    iput-object p2, p0, Lk4/x;->b:Lk4/n;

    .line 8
    iput-object p3, p0, Lk4/x;->c:Lk4/i;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lk4/x;->d:Ljava/lang/String;

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RecognizerProxy : UUID : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lk4/x;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p2, Ll4/c;

    invoke-direct {p2, p1}, Ll4/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lk4/x;->a:Ll4/c;

    .line 12
    invoke-direct {p0}, Lk4/x;->g()Ll4/a;

    move-result-object p1

    .line 13
    :try_start_0
    invoke-direct {p0}, Lk4/x;->h()Landroid/os/Bundle;

    move-result-object p0

    .line 14
    invoke-interface {p1, p0}, Ll4/a;->y(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cannot initialize service"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p0, Lk4/h;

    const-string p1, "Cannot initialize OCR Service"

    invoke-direct {p0, p1}, Lk4/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object p0, p0, Lk4/x;->a:Ll4/c;

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lk4/g;

    const-string v0, "RecognizerProxy is closed or has not been created"

    invoke-direct {p0, v0}, Lk4/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "RecognizerProxy"

    const-string/jumbo v1, "used in main thread of RecognizerProxy!"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lk4/f;

    const-string v1, "Should use RecognizerProxy in worker thread!"

    invoke-direct {v0, v1}, Lk4/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()Ll4/a;
    .locals 0

    .line 1
    invoke-static {}, Lk4/x;->d()V

    .line 2
    invoke-direct {p0}, Lk4/x;->c()V

    .line 3
    invoke-direct {p0}, Lk4/x;->g()Ll4/a;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/graphics/Bitmap;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lk4/x;->b:Lk4/n;

    invoke-virtual {v0}, Lk4/n;->a()I

    move-result v0

    iget-object v1, p0, Lk4/x;->c:Lk4/i;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lk4/x;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Ll4/b;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private g()Ll4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk4/x;->a:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->g()V

    .line 2
    iget-object p0, p0, Lk4/x;->a:Ll4/c;

    invoke-virtual {p0}, Ll4/c;->i()Ll4/a;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lk4/g;

    const-string v0, "Service is not connected"

    invoke-direct {p0, v0}, Lk4/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private h()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lk4/x;->b:Lk4/n;

    invoke-virtual {v0}, Lk4/n;->a()I

    move-result v0

    iget-object v1, p0, Lk4/x;->c:Lk4/i;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lk4/x;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Ll4/b;->b(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lk4/n;)Z
    .locals 1

    .line 1
    sget-object v0, Lk4/n;->d:Lk4/n;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lk4/e;->e()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lk4/p;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lk4/x;->e()Ll4/a;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lk4/x;->f(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, p0}, Ll4/a;->g0(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public b(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lk4/p;->d(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lk4/x;->e()Ll4/a;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lk4/x;->f(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v0, p0}, Ll4/a;->L(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 4
    invoke-static {p0, p2}, Ll4/b;->c(Landroid/os/Bundle;Lk4/j;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public close()V
    .locals 2

    const-string v0, "RecognizerProxy"

    const-string v1, "RecognizerProxy close()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lk4/x;->d()V

    .line 3
    iget-object v0, p0, Lk4/x;->a:Ll4/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lk4/x;->g()Ll4/a;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lk4/x;->h()Landroid/os/Bundle;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ll4/a;->o0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p0, Lk4/x;->a:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->f()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lk4/x;->a:Ll4/c;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lk4/x;->close()V

    return-void
.end method
